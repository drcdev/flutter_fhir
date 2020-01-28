#!/usr/bin/env python3

import json
import math
import re

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]

#returns the item if it's a primitive, otherwise returns type of primitive
def primitiveDart(string):
    primitivesDart = {'base64Binary': 'String', 'boolean': 'bool', 
        'canonical': 'String', 'code': 'String', 'date': 'String', 
        'dateTime': 'DateTime', 'decimal': 'double', 'id': 'String', 
        'instant': 'DateTime', 'integer': 'int', 'markdown': 'String', 
        'oid': 'String', 'positiveInt': 'int', 'string': 'String', 
        'time': 'String', 'unsignedInt': 'int', 'uri': 'String', 
        'url': 'String', 'uuid': 'String'}
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
            new += '\n// ' + line
            line = i
        else:
            line += ' ' + i
    new += '\n// ' + line
    return new  
    
#open fhir json schema
with open('fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)

dartCode = ''
importDict = {}

#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
for a in schema['definitions']:
    #ignore any of those that are in the ResourceList (names, no definitions)
    if('properties' in schema['definitions'][a] and str(a) != 'ResourceList'):
        
        if('_' not in a):
            dartCode = ''.join([dartCode, "part '", lowcc(a), ".g.dart';\n\n"])
            importL = lowcc(a)
            importDict[importL] = []
        else:
            importL = lowcc(a.split('_')[0])
            
        #add JsonSerializable code at top of Dart class
        dartCode = ''.join([dartCode, 
                            '@JsonSerializable(explicitToJson: true)\nclass ', 
                            a, ' {\n'])
        
        #Modifier description includes '\n\n' need to change it to a comment
        dartCode = dartCode.replace('\n\nModifier', '\n// Modifier')
        
        #look in the properties section of each resource to see what pattern
        #it fits and based on that, print out specific information
        for b in schema['definitions'][a]['properties']:
            
            
            if(not b.startswith('_')):
#******************************************************************************
#***** This adds comments to the files, but adds notable extra time to run this program *****
            #prints comment to the Dart code, formatted lines <= 70 characters
                comments = schema['definitions'][a]['properties'][b]['description']
                comments = re.sub(r'\n+', ' ', comments)
                dartCode = ''.join([dartCode, less70(comments), '\n'])
#******************************************************************************
                                        
                #if items is NOT included it means that the item is NOT an array/list
                if('items' not in schema['definitions'][a]['properties'][b]):
                    
                    #if  there's a $ref in it, print out that value
                    if('$ref' in schema['definitions'][a]['properties'][b]):
                        ref = schema['definitions'][a]['properties'][b]['$ref']
                        ref = ref.split('/definitions/')[1]
                        dartCode = ''.join([dartCode, primitiveDart(ref), ' ', b, ';\n'])
                        
                        if(not isPrimitive(ref) and ref not in importDict[importL]):
                            importDict[importL].append(ref)
                        
                    #if  there's a const in it, print out that value
                    elif('const' in schema['definitions'][a]['properties'][b]):  
                                    
                        value = schema['definitions'][a]['properties'][b]['const']
                        if(b == 'resourceType'):
                            value2 = 'String'
                        else:
                            value2 = value
                        dartCode = ''.join([dartCode, 
                                            primitiveDart(value2), 
                                            ' ', b, ';\n'])
                        
                        if(not isPrimitive(value) and value not in importDict[importL]):
                            importDict[importL].append(value)
                        
                    #if  there's a pattern in it, print out the type of pattern
                    elif('pattern' in schema['definitions'][a]['properties'][b]):  
                        
                        value = schema['definitions'][a]['properties'][b]
                        
                        #if the type is a number, declare it an int or a double
                        if('number' == value['type']):
                            if('decimal' in b or 'Decimal' in b):
                                dartCode = ''.join([dartCode, 'double '])
                            else:
                                dartCode = ''.join([dartCode, 'int '])
                        else:
                            dartCode = ''.join([dartCode, 
                                                primitiveDart(value['type']), ' '])
                            
                        #include the pattern as a comment
                        dartCode = ''.join([dartCode, b, '; //  pattern: ', 
                                            value['pattern'], '\n'])
                        
                        if(not isPrimitive(value['type']) and value['type'] not in importDict[importL]):
                            importDict[importL].append(value['type'])
                         
                    #if it's enum, print it as type of enum, and then include the
                    #possible values as a comment at the end of the line
                    elif('enum' in schema['definitions'][a]['properties'][b]):
    
                        dartCode = ''.join([dartCode, 'String ', b, '; // <code> enum: ',  
                                            '/'.join(schema['definitions'][a]['properties'][b]['enum']), 
                                            ';\n'])
    
                #if it does include items, it is an array/list
                elif('$ref' in schema['definitions'][a]['properties'][b]['items']):
                    
                    value = schema['definitions'][a]['properties'][b]['items']['$ref'].split('/definitions/')[1]
                    
                    #make the item a list since it's an array in json
                    dartCode = ''.join([dartCode,  'List<', primitiveDart(value), 
                                        '> ', b, ';\n'])   
                    
                    if(not isPrimitive(value) and value not in importDict[importL]):
                            importDict[importL].append(value)
                    
                                #if it does include items, it is an array/list
                elif('enum' in schema['definitions'][a]['properties'][b]['items']):
                    
                    #make the item a list since it's an array in json
                    dartCode = ''.join([dartCode, 'List<String> ', b, '; ',
                                        '// <code> enum: ', 
                                        '/'.join(schema['definitions'][a]['properties'][b]['items']['enum']),
                                        '> ', b, ';\n'])   
                                        
        #add json factory code
        dartCode = ''.join([dartCode, '\n', a, '(\n  {'])
        for b in schema['definitions'][a]['properties']:
            if(not b.startswith('_')):
                dartCode = ''.join([dartCode, 'this.', b, ',\n    '])
        dartCode = ''.join([dartCode, '});\n\n  factory ', a, '.fromJson',
                            '(Map<String, dynamic> json) => _$', a, 
                            'FromJson(json);\n  Map<String, dynamic> toJson()',
                            ' => _$', a, 'ToJson(this);\n}\n\n'])
            
dartCode = dartCode.replace(
    '// Specifies a value that the value in the instance SHALL follow - that is, any\n' +
    '//  value in the pattern must be found in the instance. Other additional values may\n' +
    '//  be found too. This is effectively constraint by example.  \n\n' +
    'When pattern[x] is\n' +
    '//  used to constrain a primitive, it means that the value provided in the\n' +
    '//  pattern[x] must match the instance value exactly.\n\n' +
    'When pattern[x] is used to\n' +
    '//  constrain an array, it means that each element provided in the pattern[x] array\n' +
    '//  must (recursively) match at least one element from the instance array.\n\n' +
    'When\n' +
    '//  pattern[x] is used to constrain a complex object, it means that each property\n' +
    '//  in the pattern must be present in the complex object, and its value must\n' +
    '//  recursively match -- i.e.,\n\n' +
    '1. If primitive: it must match exactly the pattern\n//  value\n' +
    '2. If a complex object: it must match (recursively) the pattern value\n' +
    '3.\n//  If an array: it must match (recursively) the pattern value.',
    
    '// Specifies a value that the value in the instance SHALL follow - that is, any\n' +
    '//  value in the pattern must be found in the instance. Other additional values may\n' +
    '//  be found too. This is effectively constraint by example.\n' +
    '// When pattern[x] is used to constrain a primitive, it means that the value\n'+
    '//  provided in the pattern[x] must match the instance value exactly.\n' +
    '// When pattern[x] is used to constrain an array, it means that each element\n' +
    '//  provided in the pattern[x] array must (recursively) match at least one\n' +
    '//  element from the instance array.\n' +
    '// When pattern[x] is used to constrain a complex object, it means that each property\n' +
    '//  in the pattern must be present in the complex object, and its value must\n' +
    '//  recursively match -- i.e.,\n' +
    '// 1. If primitive: it must match exactly the pattern value\n' +
    '// 2. If a complex object: it must match (recursively) the pattern value\n' +
    '// 3. If an array: it must match (recursively) the pattern value.')
            
with open("dartFhirClasses.dart", "w", encoding="utf-8") as f:
    f.write(dartCode)
f.close()

dartCode = dartCode.split("part '")
for code in dartCode:
    g = re.search(r'(?<=\nclass\s).*(?=\s{)', code)
    if(g != None):
        g = lowcc(g.group(0))
        code = ''.join(["\npart '", code])
        for l in importDict[g]:
            if('_' not in l and lowcc(l) != lowcc(g)):
                code = ''.join(["import 'package:flutter_fhir/class/", 
                                lowcc(l), ".dart';\n", code])
        code = code.replace(',\n    });', '\n    });')
        code = ''.join(["import 'package:json_annotation/json_annotation.dart';\n\n", code])
        with open("./class/" + lowcc(g) + ".dart","w", encoding="utf-8") as f:
            f.write(code)
        f.close()