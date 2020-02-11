#!/usr/bin/env python3

import json
import re
import os

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]

#makes first letter of word lowercase
def upcc(string):
    return string[0].upper()+string[1:len(string)]

#returns the item if it's a primitive, otherwise returns type of primitive
def primitiveDart(string):
    primitivesDart = {'base64Binary': 'String', 'boolean': 'bool', 
        'canonical': 'String', 'code': 'String', 'date': 'String', 
        'dateTime': 'DateTime', 'decimal': 'double', 'id': 'String', 
        'instant': 'DateTime', 'integer': 'int', 'markdown': 'String', 
        'oid': 'String', 'positiveInt': 'int', 'string': 'String', 
        'time': 'String', 'unsignedInt': 'int', 'uri': 'String', 
        'url': 'String', 'uuid': 'String', 'xhtml': 'String'}
    if(string in primitivesDart):
        return(primitivesDart[string])
    else:
        return(string)

#checks if it's a primitive type
def isPrimitive(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['base64Binary', 'boolean', 'canonical', 'code', 'date',
                      'dateTime', 'decimal', 'id', 'instant', 'integer', 
                      'markdown', 'oid', 'positiveInt', 'string', 'time',
                      'unsignedInt', 'uri', 'url', 'uuid', 'number'])
    
#returns comments in multiple lines, all <= 70 characters
def less70(string):   
    new = ''
    line = ''
    strings = string.split(' ')
    for i in strings:
        if((len(line) + len(i)) > 70):
            new += '\n  // ' + line
            line = i
        else:
            line += ' ' + i
    new += '\n  // ' + line
    return new  

def rem_(string):
    if(string[0] == '_'):
        return('element' + upcc(string[1:len(string)]))
    if(string == 'class'):
        return('classs')
    if(string == 'extends'):
        return('extend')
    if(string == 'for'):
        return('fore')
    if(string == 'assert'):
        return('asserts')
    else:
        return(string)               
                
#open fhir json schema
with open('./helpers/fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)

dartCode = ''
importDict = {}

def HiveCode(properties, objects):
    hiveCode = ''.join(['\tstatic Future<',
                        'Lists' if objects == 'List' else objects,
                        '> newInstance({\n'])
    for fields in properties:
        
        #if items is NOT included it means that the item is NOT an array/list
        if('items' not in properties[fields]):
                
            #if  there's a $ref in it, print out that value
            if('$ref' in properties[fields]):
                ref = properties[fields]['$ref']
                ref = ref.split('/definitions/')[1]
                hiveCode = ''.join([hiveCode, 
                                    '\t\t',
                                    primitiveDart(ref), 
                                    ' ', 
                                    rem_(fields), 
                                    ',\n'])
                    
            #if  there's a const in it, print out that value
            elif('const' in properties[fields]):  
                                
                value = properties[fields]['const']
                if(fields != 'resourceType'):
                    hiveCode = ''.join([hiveCode,
                                        '\t\t',
                                        primitiveDart(value2), 
                                        ' ', 
                                        rem_(fields),
                                        ',\n'])
                
            #if  there's a pattern in it, print out the type of pattern
            elif('pattern' in properties[fields]):  
                    
                value = properties[fields]
                
                #if the type is a number, declare it an int or a double
                if('number' == value['type']):
                    if('decimal' in fields or 'Decimal' in fields):
                        hiveCode = ''.join([hiveCode, '\t\tdouble ', rem_(fields), ',\n'])
                    else:
                        hiveCode = ''.join([hiveCode, '\t\tint ', rem_(fields), ',\n'])
                else:
                    hiveCode = ''.join([hiveCode, 
                                    '\t\t',
                                    primitiveDart(value['type']), 
                                    ' ',
                                    rem_(fields),
                                    ',\n'])
                    
            #if it's enum, print it as type of enum, and then include the
            #possible values as a comment at the end of the line
            elif('enum' in properties[fields]):

                hiveCode = ''.join([hiveCode, 
                                    '\t\t',
                                    'String ', 
                                    rem_(fields), 
                                    ',\n'])

        #if it does include items, it is an array/list
        elif('$ref' in properties[fields]['items']):
            
            value = properties[fields]['items']['$ref'].split('/definitions/')[1]
            
            #make the item a list since it's an array in json
            hiveCode = ''.join([hiveCode,  
                                '\t\t',
                                'List<', 
                                primitiveDart(value), 
                                '> ', 
                                rem_(fields), 
                                ',\n'])   
            
        #if it does include items, it is an array/list
        elif('enum' in properties[fields]['items']):
            
            #make the item a list since it's an array in json
            hiveCode = ''.join([hiveCode, 
                                '\t\t',
                                'List<String> ', 
                                rem_(fields), 
                                ',\n'])   
    hiveCode = ''.join([hiveCode, 
                        '}) async {\n\t return ', 
                        'Lists' if objects == 'List' else objects,
                        '(\n'])
    for fields in properties:
        if(rem_(fields) != 'resourceType'):
            if(fields == 'id'):
                hiveCode = ''.join([hiveCode, 
                                    "\t\t\tid: await newEntry('", 
                                    'Lists' if objects == 'List' else objects,
                                    "'),\n"])
            else:
                hiveCode = ''.join([hiveCode, '\t\t\t', rem_(fields), ': ', rem_(fields), ',\n'])
    hiveCode = ''.join([hiveCode, ');\n}'])    
    hiveCode = hiveCode.replace(',\n}) ', '}) ')
    hiveCode = hiveCode.replace('final String', 'String')
    hiveCode = hiveCode.replace(',\n);\n}', ');\n\t}\n')
    return(hiveCode)

# os.remove('./lib/fhirClasses/classes.dart')
# ********************************************************************************************
#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
definitions = schema['definitions']
HiveType = 15
for objects in definitions:
    
    #ignore any of those that are in the ResourceList (names, no definitions)
    if('properties' in definitions[objects] and str(objects) != 'ResourceList'):
        objected = 'Lists' if objects == 'List' else objects
        if('_' not in objects):
            dartCode = ''.join([dartCode, 
                                "part '", 
                                lowcc(objected), 
                                ".g.dart';\n\n"])
            importL = lowcc(objected)
            importDict[importL] = []
            HiveType += 1
        else:
            importL = lowcc(objects.split('_')[0])
            importL = 'lists' if importL == 'list' else importL
            
        #add JsonSerializable code at top of Dart class

        dartCode = ''.join([dartCode, 
                            '@JsonSerializable(explicitToJson: true)\n', 
                            ('@HiveType(typeId: ' + str(HiveType) + ')\n') if '_' not in objects else '',
                            'class ',
                            objected, 
                            ' {\n'])
        
        #Modifier description includes '\n\n' need to change it to a comment
        dartCode = dartCode.replace('\n\nModifier', '\n// Modifier')
        
        #look in the properties section of each resource to see what pattern
        #it fits and based on that, print out specific information
        HiveField = 0
        properties = definitions[objects]['properties']
        dartCode = ''.join([dartCode, '\n', HiveCode(properties, objects), '\n'])
        for field in properties:      
            
            
#******************************************************************************
#***** This adds comments to the files, but adds notable extra time to run this program *****
        #prints comment to the Dart code, formatted lines <= 70 characters
            # comments = properties[field]['description']
            # comments = re.sub(r'\n+', ' ', comments)
            # comments = re.sub(r'\r', ' ', comments)
            # dartCode = ''.join([dartCode, less70(comments), '\n'])
#******************************************************************************
                                    
            #if items is NOT included it means that the item is NOT an array/list
            if('items' not in properties[field]):
                
                #if  there's a $ref in it, print out that value
                if('$ref' in properties[field]):
                    ref = properties[field]['$ref']
                    ref = ref.split('/definitions/')[1]
                    dartCode = ''.join([dartCode, 
                                        ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else '',
                                        '  ',
                                        primitiveDart(ref), 
                                        ' ', 
                                        rem_(field), 
                                        ';\n'])
                    
                    if(not isPrimitive(ref) and ref not in importDict[importL]):
                        importDict[importL].append(ref)
                    
                #if  there's a const in it, print out that value
                elif('const' in properties[field]):  
                                
                    value = properties[field]['const']
                    if(field == 'resourceType'):
                        value2 = 'final String'
                    else:
                        value2 = value
                        
                    #if it's resourceType it's a final string
                    dartCode = ''.join([dartCode,
                                        ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else '',
                                        '  ',
                                        primitiveDart(value2), 
                                        ' ', 
                                        rem_(field),
                                        ("= '" + objects + "'") if 
                                        field == 'resourceType' else '',
                                        ';\n'])
                    
                    if(not isPrimitive(value) and value not in importDict[importL]):
                        importDict[importL].append(value)
                    
                #if  there's a pattern in it, print out the type of pattern
                elif('pattern' in properties[field]):  
                    
                    value = properties[field]
                    
                    #if the type is a number, declare it an int or a double
                    if('number' == value['type']):
                        if('decimal' in field or 'Decimal' in field):
                            dartCode = ''.join([dartCode, '  double '])
                        else:
                            dartCode = ''.join([dartCode, '  int '])
                    else:
                        dartCode = ''.join([dartCode, 
                                        ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else '',
                                        '  ',
                                        primitiveDart(value['type']), 
                                        ' '])
                        
                    # include the pattern as a comment
                    dartCode = ''.join([dartCode, 
                                        rem_(field), 
                                        '; //  pattern: ', 
                                        value['pattern'], 
                                        '\n'])
                    
                    if(not isPrimitive(value['type']) and 
                       value['type'] not in importDict[importL]):
                        importDict[importL].append(value['type'])
                     
                #if it's enum, print it as type of enum, and then include the
                #possible values as a comment at the end of the line
                elif('enum' in properties[field]):

                    dartCode = ''.join([dartCode, 
                                        ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else '',
                                        '  ',
                                        'String ', 
                                        rem_(field), 
                                        '; // <code> enum: ',  
                                        '/'.join(properties[field]['enum']), 
                                        ';\n'])

            #if it does include items, it is an array/list
            elif('$ref' in properties[field]['items']):
                
                value = properties[field]['items']['$ref'].split('/definitions/')[1]
                
                #make the item a list since it's an array in json
                dartCode = ''.join([dartCode,  
                                    ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else '',
                                    '  ',
                                    'List<', 
                                    primitiveDart(value), 
                                    '> ', 
                                    rem_(field), 
                                    ';\n'])   

                if(not isPrimitive(value) and value not in importDict[importL]):
                        importDict[importL].append(value)
                
                            #if it does include items, it is an array/list
            elif('enum' in properties[field]['items']):
                
                #make the item a list since it's an array in json
                dartCode = ''.join([dartCode, 
                                    ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else '',
                                    '  ',
                                    'List<String> ', 
                                    rem_(field), 
                                    '; ',
                                    '// <code> enum: ', 
                                    '/'.join(properties[field]['items']['enum']),
                                    '> ', 
                                    rem_(field), ';\n'])   
            
            HiveField += 1
                                  
        #add more constructor code
        dartCode = ''.join([dartCode, '\n', objected, '(\n  '])
        arguments = ''
        for fielded in schema['definitions'][objects]['properties']:
            
            #resourceType isn't a passable argument
            if(fielded != 'resourceType'):
                
                #separate the optional and required constructor parameters
                if('required' not in schema['definitions'][objects] or
                    fielded not in schema['definitions'][objects]['required']):
                        arguments = ''.join([arguments, 'this.', rem_(fielded), ',\n    '])
                else:
                    arguments = ''.join([arguments, '@required this.', rem_(fielded), ',\n    '])
                    
        #create the factory
        dartCode = ''.join([dartCode, 
                            '{',
                            arguments,
                            '})',
                            ';\n\n  factory ', 
                            objected, 
                            '.fromJson',
                            '(Map<String, dynamic> json) => _$', 
                            objected, 
                            'FromJson(json);\n  Map<String, dynamic> toJson()',
                            ' => _$', 
                            objected, 
                            'ToJson(this);\n}\n\n'])

dartCode = dartCode.replace('''  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}''', '''String printName(){
    return('${(this.name?.first?.family?.toString() ?? '')}'
        ', '
        '${(this.name?.first?.given?.first?.toString() ?? '')}'
    );
  }

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}

Future<Patient> readPatient(String id) async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  Patient pt = Patient.fromJson(jsonDecode(await File('${directory.path}/' + id + '.txt').readAsString())); //read patient from file
  return(pt);
}

Future<List<Patient>> readPtList() async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  List<String> ptNumbers = (await File('${directory.path}/fhir/patient.txt').readAsString()).split('\\n');
  var ptList = new List<Patient>();
  for(var i = 0; i < ptNumbers.length; i++){
    final pt = File('${directory.path}/fhir/patient/' + ptNumbers[i] + '.txt');
    var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
    ptList.add(newpt);
  }
  return ptList;
}''')

# with open("dartFhirClasses.dart", "w", encoding="utf-8") as f:
#     f.write(dartCode)
# f.close()

fhirDir = './lib/fhirClasses/'

#add in any import files that are needed
dartCode = dartCode.split("part '")
for code in dartCode:
    g = re.search(r'(?<=\nclass\s).*(?=\s{)', code)
    if(g != None):
        g = lowcc(g.group(0))
        code = ''.join(["\npart '", code])
        for l in importDict[g]:
            l = 'Lists' if l == 'List' else l
            if('_' not in l and lowcc(l) != lowcc(g) and lowcc(l) != 'xhtml'):
                code = ''.join(["import 'package:flutter_fhir/fhirClasses/",
                                lowcc(l), ".dart';\n", code])
        code = code.replace(',\n    });', '\n    });')
        code = ''.join(["import 'package:flutter_fhir/fhirClasses/classes.dart';\n\n", code])
        if('@required' in code):
            code = ''.join(["import 'package:flutter/foundation.dart';\n", 
                            "import 'package:meta/meta.dart';\n", code])
        code = ''.join(["import 'package:json_annotation/json_annotation.dart';\n", code])
        code = ''.join(["import 'package:hive/hive.dart';\n", code])
        with open(fhirDir + lowcc(g) + ".dart","w", encoding="utf-8") as f:
            f.write(code)
        f.close()
        
with open(fhirDir + 'patient.dart') as pt:
            patient = pt.read()
patient = patient.replace('''import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';\n''',
'''import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
''')

with open(fhirDir + 'patient.dart',"w", encoding="utf-8") as f:
    f.write(patient)
    f.close()
    