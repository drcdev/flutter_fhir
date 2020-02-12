#!/usr/bin/env python3

import json
import re
import os
import fhirToDartFunc as fhir

#open fhir json schema
with open('./helpers/fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)

os.remove('./lib/fhirClasses/classes.dart')

dartCode = '' #where we will store our code
importDict = {} #will store which other classes we will import
HiveType = 15 #leave the first 16 hive boxes for administrative tasks

# ****************************************************************************
#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
definitions = schema['definitions']

for objects in definitions:
    
    #ignore any of those that are in the ResourceList (names, no definitions)
    if('properties' in definitions[objects] and str(objects) != 'ResourceList'):
        if('_' not in objects):
            dartCode = ''.join([dartCode, 
                                "part '", 
                                fhir.lowcc(fhir.lists(objects)), 
                                ".g.dart';\n\n"])
            importL = fhir.lowcc(fhir.lists(objects))
            importDict[importL] = []
            HiveType += 1
        else:
            importL = fhir.lowcc(fhir.lists(objects.split('_')[0]))
            
        #add JsonSerializable code at top of Dart class
        dartCode = ''.join([dartCode, 
                            '@JsonSerializable(explicitToJson: true)\n', 
                            ('@HiveType(typeId: ' + str(HiveType) + ')\n') if '_' not in objects else '',
                            'class ',
                            fhir.lists(objects), 
                            ' {\n'])
        
        #Modifier description includes '\n\n' need to change it to a comment
        dartCode = dartCode.replace('\n\nModifier', '\n// Modifier')
        
        #HiveField for this paramateter
        HiveField = 0
        properties = definitions[objects]['properties']
        dartCode = ''.join([dartCode, '\n', fhir.HiveCode(properties, objects), '\n'])
        
        #look in the properties section of each resource to see what pattern
        #it fits and based on that, print out specific information
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
                    ref = (properties[field]['$ref']).split('/definitions/')[1]
                    dartCode = ''.join([dartCode, 
                                        fhir.HiveField(HiveField, objects),
                                        '  ',
                                        fhir.refProperties(ref, ' ', field)
                                        ])
                    
                    if(not fhir.isPrimitive(ref) and ref not in importDict[importL]):
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
                                        fhir.HiveField(HiveField, objects),
                                        '  ',
                                        fhir.primitiveDart(value2), 
                                        ' ', 
                                        fhir.rem_(field),
                                        ("= '" + objects + "'") if 
                                        field == 'resourceType' else '',
                                        ';\n'])
                    
                    if(not fhir.isPrimitive(value) and value not in importDict[importL]):
                        importDict[importL].append(value)
                    
                #if  there's a pattern in it, print out the type of pattern
                elif('pattern' in properties[field]):  
                    
                    value = properties[field]
                    
                    #if the type is a number, declare it an int or a double
                    if('number' == value['type']):
                        dartCode = ''.join([dartCode, 
                                            '  double ' if ('decimal' or 'Decimal') in field else '  int '])
                    else:
                        dartCode = ''.join([dartCode, 
                                        fhir.HiveField(HiveField, objects),
                                        '  ',
                                        fhir.primitiveDart(value['type']), 
                                        ' '])
                        
                    # include the pattern as a comment
                    dartCode = ''.join([dartCode, 
                                        fhir.rem_(field), 
                                        '; //  pattern: ', 
                                        value['pattern'], 
                                        '\n'])
                    
                    if(not fhir.isPrimitive(value['type']) and 
                       value['type'] not in importDict[importL]):
                        importDict[importL].append(value['type'])
                     
                #if it's enum, print it as type of enum, and then include the
                #possible values as a comment at the end of the line
                elif('enum' in properties[field]):

                    dartCode = ''.join([dartCode, 
                                        fhir.HiveField(HiveField, objects),
                                        '  ',
                                        'String ', 
                                        fhir.rem_(field), 
                                        '; // <code> enum: ',  
                                        '/'.join(properties[field]['enum']), 
                                        ';\n'])

            #if it does include items, it is an array/list
            elif('$ref' in properties[field]['items']):
                
                value = properties[field]['items']['$ref'].split('/definitions/')[1]
                
                #make the item a list since it's an array in json
                dartCode = ''.join([dartCode,  
                                    fhir.HiveField(HiveField, objects),
                                    '  ',
                                    'List<', 
                                    fhir.refProperties(fhir.primitiveDart(value), 
                                                       '> ', 
                                                       field)])

                if(not fhir.isPrimitive(value) and value not in importDict[importL]):
                        importDict[importL].append(value)
                
                            #if it does include items, it is an array/list
            elif('enum' in properties[field]['items']):
                
                #make the item a list since it's an array in json
                dartCode = ''.join([dartCode, 
                                    fhir.HiveField(HiveField, objects),
                                    '  ',
                                    'List<String> ', 
                                    fhir.rem_(field), 
                                    '; ',
                                    '// <code> enum: ', 
                                    '/'.join(properties[field]['items']['enum']),
                                    '> ', 
                                    fhir.rem_(field), ';\n'])   
            
            HiveField += 1
                                  
        #add more constructor code
        dartCode = ''.join([dartCode, '\n', fhir.lists(objects), '(\n  '])
        arguments = ''
        for fielded in schema['definitions'][objects]['properties']:
            
            #resourceType isn't a passable argument
            if(fielded != 'resourceType'):
                
                #separate the optional and required constructor parameters
                arguments = ''.join([arguments, 
                                     'this.' if ('required' not in schema['definitions'][objects] or
                                                 fielded not in schema['definitions'][objects]['required']) else 
                                     '@required this.',
                                     fhir.rem_(fielded), ',\n    '])
                    
        #create the factory
        dartCode = ''.join([dartCode, 
                            '{',
                            arguments,
                            '})',
                            ';\n\n  factory ', 
                            fhir.lists(objects), 
                            '.fromJson',
                            '(Map<String, dynamic> json) => _$', 
                            fhir.lists(objects), 
                            'FromJson(json);\n  Map<String, dynamic> toJson()',
                            ' => _$', 
                            fhir.lists(objects), 
                            'ToJson(this);\n}\n\n'])




dartCode = dartCode.replace(fhir.patientFunc1, fhir.patientFunc2)

# with open("dartFhirClasses.dart", "w", encoding="utf-8") as f:
#     f.write(dartCode)
# f.close()

fhirDir = './lib/fhirClasses/'

#add in any import files that are needed
dartCode = dartCode.split("part '")
for code in dartCode:
    g = re.search(r'(?<=\nclass\s).*(?=\s{)', code)
    if(g != None):
        g = fhir.lowcc(fhir.lists(g.group(0)))
        code = ''.join(["\npart '", code])
        for l in importDict[g]:
            l = 'Lists' if l == 'List' else l
            if('_' not in l and fhir.lowcc(l) != fhir.lowcc(g) and fhir.lowcc(l) != 'xhtml'):
                code = ''.join(["import 'package:flutter_fhir/fhirClasses/",
                                fhir.lowcc(l), ".dart';\n", code])
        code = code.replace(',\n    });', '\n    });')
        code = ''.join(["import 'package:flutter_fhir/fhirClasses/classes.dart';\n\n", code])
        if('@required' in code):
            code = ''.join(["import 'package:flutter/foundation.dart';\n", code])
        code = ''.join(["import 'package:json_annotation/json_annotation.dart';\n", code])
        code = ''.join(["import 'package:hive/hive.dart';\n", code])
        with open(fhirDir + fhir.lowcc(g) + ".dart","w", encoding="utf-8") as f:
            f.write(code)
        f.close()
        
with open(fhirDir + 'patient.dart') as pt:
            patient = pt.read()
patient = patient.replace(fhir.patientReplace1, fhir.patientReplace2)

with open(fhirDir + 'patient.dart',"w", encoding="utf-8") as f:
    f.write(patient)
    f.close()
    
with open(fhirDir + 'testScript.dart') as ts:
            testScript = ts.read()
            
testScript = testScript.replace('required: required', 'require: require')
testScript = testScript.replace('this.required', 'this.require')
testScript = testScript.replace('bool required', 'bool require')

with open(fhirDir + 'testScript.dart',"w", encoding="utf-8") as f:
    f.write(testScript)
    f.close()
