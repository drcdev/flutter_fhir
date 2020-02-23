#!/usr/bin/env python3

import json


#open fhir json schema
with open('./helpers/fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)
    
#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]

# #makes first letter of word lowercase
def upcc(string):
    return string[0].upper()+string[1:len(string)]


def writeFile(file, text):
    with open(file,"w", encoding="utf-8") as f:
        f.write(text)
    f.close()

#checks if it's a primitive type
def isPrimitive(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['base64Binary', 'boolean', 'canonical', 'code', 'date',
                      'dateTime', 'decimal', 'id', 'instant', 'integer', 
                      'markdown', 'oid', 'positiveInt', 'string', 'time',
                      'unsignedInt', 'uri', 'url', 'uuid', 'number'])

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

#turns word list into lists to avoid using reserved term
def lists(string):
    return('Lists' if string == 'List' else string)   

def allTogether(newInstance, objects, newResource, variables, constructor):
    if('this.resourceType' in constructor and objects != 'ExampleScenario_Instance'):
        saveNew = ''.join(['\tnew',
                           lists(objects),
                           '.meta.createdAt = DateTime.now();\n',
                           '\tnew',
                           lists(objects),
                           '.meta.lastUpdated = new', 
                           lists(objects), 
                           '.meta.createdAt;\n',
                           '\tint saved = await fhirDb.saveResource(new',
                           lists(objects),
                           ');\n',
                           '\t return new',
                           lists(objects),
                           ';\n}\n\nsave() async {\n',
                           '\t\tvar fhirDb = new DatabaseHelper();\n',
                           '\t\tint saved = await fhirDb.saveResource(this);\n',
                           '}\n\n',
                           'update() async {\n',
                           '\t\tthis.meta.lastUpdated = DateTime.now();\n',
                           '\t\tthis.save();\n}'])
    else:
        saveNew = ''.join(['\treturn new', lists(objects), ';\n}\n\n'])
    return(''.join([newInstance,
                    '}) async {\nvar fhirDb = new DatabaseHelper();\n',
                    lists(objects), ' new', lists(objects), ' = new ', lists(objects), '(\n',
                    newResource,
                    ');\n',
                    saveNew,
                    variables,
                    '\n',
                    lists(objects), 
                    '(\n\t{',
                    constructor,
                    '});\n\n  factory ', 
                    lists(objects), 
                    '.fromJson',
                    '(Map<String, dynamic> json) => _$', 
                    lists(objects), 
                    'FromJson(json);\n  Map<String, dynamic> toJson()',
                    ' => _$', 
                    lists(objects), 
                    'ToJson(this);\n}\n\n']))

def imported():
    return(''.join(["import 'package:flutter_fhir/util/db.dart';\n",
                    "import 'package:flutter/foundation.dart';\n",
                     "import 'package:json_annotation/json_annotation.dart';\n"]))
                     # "import 'package:hive/hive.dart';"]))

def idMetaResourceType(key, objects, isResource):
    if(key == 'id' and isResource):
        return(''.join(["id ?? await fhirDb.newResourceId('", objects, "')"]))
    elif(key == 'meta'):
        return(''.join(["meta ?? await Meta.newInstance()"]))
    elif(key == 'resourceType'):
        return(''.join(["'", objects, "'"]))
    else:
        return key


importDict = {} #will store which other classes we will import
varDict = {}
dartCode = ''

#hexNum = 15
importL = 'element'

# ****************************************************************************
#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
definitions = schema['definitions']
for objects in definitions: 

    #ignore any of those that are in the ResourceList (names, no definitions)
    if('properties' in definitions[objects] and str(objects) != 'ResourceList'):
        
        #for when I need to figure something out about defining classes
        # count = fhir.classDefinition(definitions, objects, hexNum)
        # dbStart = ''.join([dbStart, count[0]])
        # hexNum = count[1]
# fhir.writeFile(temp.dart, dbStart)
            
        
        #if not a sublcass
        if('_' not in objects):     
            if(lowcc(objects.split('_')[0]) != importL):
                if(lowcc(importL) in importDict.keys()):
                    dartCode = ''.join(["part '",
                                        lists(lowcc(importL)),
                                        ".g.dart';\n\n",
                                        dartCode])
                    for l in importDict[lowcc(importL)]:
                        l = 'Lists' if l == 'List' else l
                        if('_' not in l and 
                           lowcc(l) != lowcc(lowcc(importL)) and 
                           lowcc(l) != 'xhtml'):
                            dartCode = ''.join(["import 'package:flutter_fhir/fhirClasses/",
                                lowcc(l), ".dart';\n", dartCode])
                dartCode = ''.join([imported(), dartCode])
                writeFile('./lib/fhirClasses/' + lists(lowcc(importL)) + ".dart", dartCode)
                dartCode = '' #where we will store our code
                importDict = {} #will store which other classes we will import
            importL = lowcc(lists(objects))
            importDict[importL] = []
        else:
            importL = lowcc(lists(objects.split('_')[0]))
                    
        required = []
        if('required' in definitions[objects]):
            required = definitions[objects]['required']
                
            
        #look in the properties section of each resource to see what pattern
        #it fits and based on that, print out specific information
        properties = definitions[objects]['properties']
        for field in properties:   
            if('required' in schema['definitions'][objects] and field in schema['definitions'][objects]['required']):
                required.append(field) 
                   
#******************************************************************************
#***** This adds comments to the files, but adds notable extra time to run this program *****
        #Modifier description includes '\n\n' need to change it to a comment
        # dartCode = dartCode.replace('\n\nModifier', '\n// Modifier')
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
                    varDict[field] = primitiveDart(ref)

                    if(not isPrimitive(ref)):
                        if(importL in importDict.keys()):
                            if(ref not in importDict[importL]):
                                importDict[importL].append(ref)
                        else:
                            importDict[importL] = [ref] 
                    
                #if  there's a const in it, print out that value
                elif('const' in properties[field]):  
                                
                    value = properties[field]['const']
                    if(field == 'resourceType'):
                        value2 = 'String'
                    else:
                        value2 = value
                        
                    varDict[field] = primitiveDart(value2)
                    
                    if(not isPrimitive(value2) and value not in importDict[importL]):
                        importDict[importL].append(value)
                    
                #if  there's a pattern in it, print out the type of pattern
                elif('pattern' in properties[field]):  
                    
                    value = properties[field]
                    
                    #if the type is a number, declare it an int or a double
                    if('number' == value['type']):
                        varDict[field] = 'double' if ('decimal' or 'Decimal') in field else 'int'
                    else:
                        varDict[field] = primitiveDart(value['type'])
                    
                    if(not isPrimitive(value['type']) and 
                       value['type'] not in importDict[importL]):
                        importDict[importL].append(value['type'])
                     
                #if it's enum, print it as type of enum, and then include the
                #possible values as a comment at the end of the line
                elif('enum' in properties[field]):

                    varDict[field] = 'String'

            #if it does include items, it is an array/list
            elif('$ref' in properties[field]['items']):
                value = properties[field]['items']['$ref'].split('/definitions/')[1]
                
                varDict[field] = 'List<' + primitiveDart(value) + '>'

                if(not isPrimitive(value)):
                    if(importL in importDict.keys()):
                        if(value not in importDict[importL]):
                            importDict[importL].append(value)
                    else:
                        importDict[importL] = [value] 
            
            #if it does include items, it is an array/list
            elif('enum' in properties[field]['items']):
                
                varDict[field] = 'String'

        dartCode = ''.join([dartCode, 
                            '@JsonSerializable(explicitToJson: true, includeIfNull: false)\n',
                            'class ',
                            lists(objects),
                            '{\n\n\tstatic Future<',
                            lists(objects),
                            '> newInstance(\n\t{'])
        newInstance = ''
        newResource = ''
        variables = ''
        constructor = ''
        hiveField = -1
        for key, val in varDict.items():
            hiveField += 1
            key = rem_(key)
            newInstance = ''.join([newInstance, 
                                   "\t", 
                                   primitiveDart(val), 
                                   " ", 
                                   key, 
                                   ',\n'])
            newResource = ''.join([newResource, 
                                   '\t',
                                   key,
                                   ': ',
                                   idMetaResourceType(key, objects, 'resourceType' in properties),
                                   ',\n'])
            variables = ''.join([variables,
                                 # f'\t@HiveField({hiveField})\n',
                                 "\t", 
                                 primitiveDart(val), 
                                 " ", 
                                 key, 
                                 ("= '" + objects + "'") if key == 'resourceType' else '',
                                 ';\n'])
            constructor = ''.join([constructor,
                                   '@required ' if key in required else '',
                                   'this.', 
                                   key, 
                                   ',\n'])
    
        dartCode = ''.join([dartCode, 
                            allTogether(newInstance, objects, newResource, variables, constructor)])
    
        varDict = {}

dartCode = ''.join(["part '",
                    lists(lowcc(importL)),
                    ".g.dart';\n\n",
                    dartCode])
if(lowcc(importL) in importDict.keys()):
    for l in importDict[lowcc(importL)]:
        l = 'Lists' if l == 'List' else l
        if('_' not in l and 
           lowcc(l) != lowcc(lowcc(importL)) and 
           lowcc(l) != 'xhtml'):
            dartCode = ''.join(["import 'package:flutter_fhir/fhirClasses/",
                                lowcc(l), 
                                ".dart';\n", 
                                dartCode])
dartCode = ''.join([imported(),dartCode])
fhirDir = './lib/fhirClasses/'
writeFile(fhirDir + lowcc(importL) + ".dart", dartCode)
    
with open(fhirDir + 'meta.dart') as metas:
            meta = metas.read()
        
meta = meta.replace('\tDateTime lastUpdated,',
                    '\tDateTime createdAt,\n\tDateTime lastUpdated,')
meta = meta.replace('\tlastUpdated: lastUpdated,',
                    '\tcreatedAt: createdAt,\n\tlastUpdated: lastUpdated,')
meta = meta.replace('\tDateTime lastUpdated;',
                    '\tDateTime createdAt;\n\tDateTime lastUpdated;')
meta = meta.replace('this.lastUpdated,',
                    'this.createdAt,\nthis.lastUpdated,')

with open(fhirDir + 'meta.dart',"w", encoding="utf-8") as f:
    f.write(meta)
    f.close()
    
with open(fhirDir + 'testScript.dart') as ts:
            testScript = ts.read()
            
testScript = testScript.replace('required: required', 'require: require')
testScript = testScript.replace('this.required', 'this.require')
testScript = testScript.replace('bool required', 'bool require')

with open(fhirDir + 'testScript.dart',"w", encoding="utf-8") as f:
    f.write(testScript)
    f.close()

                
with open(fhirDir + 'patient.dart') as pt:
            patient = pt.read()
patient = patient.replace('factory Patient.',
                          '''String printName() {
    return ('${(this.name?.first?.family?.toString() ?? '')}'
        ', '
        '${(this.name?.first?.given?.first?.toString() ?? '')}');
  }

  factory Patient.''')

with open(fhirDir + 'patient.dart',"w", encoding="utf-8") as f:
    f.write(patient)
    f.close()
    
    
    


