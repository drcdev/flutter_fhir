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

#returns the item if it's a primitive, otherwise returns type of primitive
def makePrimSql(string):
    primitivesSql = {'base64Binary': 'TEXT', 'boolean': 'BOOLEAN', 
      'canonical': 'TEXT', 'code': 'TEXT', 'date': 'DATE', 
      'dateTime': 'DATETIME', 'decimal': 'REAL', 'id': 'TEXT', 
      'instant': 'DATETIME', 'integer': 'INTEGER', 'markdown': 'TEXT', 
      'oid': 'TEXT', 'positiveInt': 'INTEGER', 'string': 'TEXT', 
      'time': 'TIME', 'unsignedInt': 'INTEGER', 'uri': 'TEXT', 
      'url': 'TEXT', 'uuid': 'TEXT', 'number': 'INTEGER'}
    if(string in primitivesSql):
        return(primitivesSql[string])
    else:
        return('TEXT')

#checks if it's a primitive type
def isPrimitive(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['base64Binary', 'boolean', 'canonical', 'code', 'date',
                      'dateTime', 'decimal', 'id', 'instant', 'integer', 
                      'markdown', 'oid', 'positiveInt', 'string', 'time',
                      'unsignedInt', 'uri', 'url', 'uuid', 'number'])

#if it's a reserved word in sql, add quotes
def sqlStrings(string):
    if(string in ['url', 'status', 'use', 'system', 'value', 'time', 'text',
                  'language', 'hash', 'data', 'type', 'period', 'version', 
                  'data', 'size', 'type', 'start', 'end', 'data', 'when', 'rank',
                  'security', 'limit', 'min', 'max', 'condition', 'sequence',
                  'method', 'depth', 'path', 'usage', 'date', 'action', 'source',
                  'timestamp', 'implementation', 'instance', 'procedure', 'count',
                  'filter', 'search', 'group', 'scope', 'order', 'length', 
                  'member', 'result', 'global', 'parameter', 'position', 'view',
                  'domain', 'role', 'characteristics', 'parameter', 'chain',
                  'structure', 'input', 'output', 'translation'
                  # #above are reserved in Dbeaver, below are in Visual Basic
                   , 'weight', 'image', 'description', 'name', 'definition',
                   'maxLength', 'constraint', 'binding', 'subject', 'dateTime',
                   'policy', 'site', 'rule', 'priority', 'location', 'address',
                   'provider', 'trigger', 'target', 'profile', 'endpoint', 'started',
                   'plan', 'signature', 'group', 'for', 'code', 'owner', 'range',
                   'key', 'identity', 'function', 'event', 'population', 'from',
                   'level', 'to', 'outer', 'inner', 'check', 'contains', 'add',
                   'index']):
        return('"' + string + '"')
    else:
        return(string)
    
#returns comments in multiple lines, all <= 80 characters
def less80(string):   
    new = ''
    j=0
    k=0
    for i in range(1, math.ceil(len(string)/80)):
        j += 80
        while(string[j] != ' '):
            j -= 1
        new = ''.join([new, '\n// ', string[k:j]])
        k = j
    new = ''.join([new, '\n// ', string[j:len(string)]])
    return new  
    
#open fhir json schema
with open('fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)


sqlCode = ''
#list of foreign keys
foreignKeys = {}
#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
for a in schema['definitions']:
    
    #ignore any of those that are in the ResourceList (names, no definitions)
    if('properties' in schema['definitions'][a] and str(a) != 'ResourceList'):
                   
        #if it's not a subResource, make it a new sqlite table
        sqlCode = ''.join([sqlCode, '\nDROP TABLE ', sqlStrings(lowcc(a)), ';\n',
                           'CREATE TABLE ', sqlStrings(lowcc(a)), '(\n\n'])
       
        foreignKeys = {}
        #look in the properties section of each resource to see what pattern
        #it fits and based on that, print out specific information
        for b in schema['definitions'][a]['properties']:

            
            sqlString = sqlStrings(b)
            #if items is NOT included it means that the item is NOT an array/list
            if('items' not in schema['definitions'][a]['properties'][b]):
                
                #if  there's a $ref in it, print out that value
                if('$ref' in schema['definitions'][a]['properties'][b]):
                    ref = schema['definitions'][a]['properties'][b]['$ref']
                    ref = ref.split('/definitions/')[1]
                    
                    #make id the PRIMARY KEY
                    if(b == 'id'):
                        sqlCode = ''.join([sqlCode, sqlString, ' TEXT PRIMARY KEY,', '\n'])
                    else:
                        sqlCode = ''.join([sqlCode, sqlString, ' ', makePrimSql(ref), ',\n'])
                        #if the type isn't a primitive, add it to the foreign keys
                        if(not isPrimitive(ref)):
                            foreignKeys[sqlString] = sqlStrings(lowcc(ref))
 
                #if  there's a const in it, print out that value
                elif('const' in schema['definitions'][a]['properties'][b]):
                
                    sqlCode = ''.join([sqlCode, sqlString, ' ', 
                                       makePrimSql(schema['definitions'][a]['properties'][b]['const']), 
                                       ',\n'])

                #if  there's a pattern in it, print out the type of pattern
                elif('pattern' in schema['definitions'][a]['properties'][b]):
                
                    sqlCode = ''.join([sqlCode, sqlString, ' ', 
                                       makePrimSql(schema['definitions'][a]['properties'][b]['type']), 
                                       ',\n'])
                    
                    #if the type isn't a primitive, add it to the foreign keys
                    if(not isPrimitive(schema['definitions'][a]['properties'][b]['type'])):
                        foreignKeys[sqlString] = sqlStrings(schema['definitions'][a]['properties'][b]['type'])      
                    
                #if it's enum, print it as type of enum, and then include the
                #possible values as a comment at the end of the line
                elif('enum' in schema['definitions'][a]['properties'][b]):
                
                    sqlCode = ''.join([sqlCode, sqlString, ' TEXT, --<code> enum: ',  
                                       '/'.join(schema['definitions'][a]['properties'][b]['enum']), 
                                       '\n'])

            #if it does include items, it is an array/list
            elif('$ref' in schema['definitions'][a]['properties'][b]['items']):
            
                sqlCode = ''.join([sqlCode,  sqlStrings(b), ' ', 
                                   makePrimSql(schema['definitions'][a]['properties'][b]['items']['$ref'].split('/definitions/')[1]), 
                                   ',\n'])
                
                #if the type isn't a primitive, add it to the foreign keys
                if(not isPrimitive(schema['definitions'][a]['properties'][b]['items']['$ref'].split('/definitions/')[1])):
                   foreignKeys[sqlString] = sqlStrings(schema['definitions'][a]['properties'][b]['items']['$ref'].split('/definitions/')[1])

        #add SQL code for each table prn
        for key, val in foreignKeys.items():
            sqlCode = ''.join([sqlCode, '\nFOREIGN KEY (', key, ')\n\tREFERENCES ',
                               sqlStrings(lowcc(val)), ' (id)\n\t\tON DELETE CASCADE',
                               '\n\t\tON UPDATE NO ACTION,\n'])
        sqlCode = ''.join([sqlCode, '\n)\n\n'])
    
sqlCode = ''.join([sqlCode, '\n);\n\n'])
sqlCode = re.sub(r'\n\n\)\n\n(?=.*\s)', '\n', sqlCode)
sqlCode = sqlCode.replace(',\n\nDROP TABLE', '\n\n);\n\nDROP TABLE')
sqlCode = re.sub(r'DROP\sTABLE\s.*;', '', sqlCode)
sqlCode = sqlCode.replace(',\n\n);', '\n\n);')
sqlCode = sqlCode.replace('\n\n\n\n', '\n')

with open("sqliteFhirTables.sql", "w", encoding="utf-8") as f:
    f.write(sqlCode)
f.close()


dartCode = ''
#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
for a in schema['definitions']:
    #ignore any of those that are in the ResourceList (names, no definitions)
    if('properties' in schema['definitions'][a] and str(a) != 'ResourceList'):
        
        if('_' not in a):

            #if it's not a subResource, write Dart code for automatic json
            dartCode = ''.join([dartCode, "part '", lowcc(a), ".g.dart';\n\n"])
            
        #add JsonSerializable code at top of Dart class
        dartCode = ''.join([dartCode, 
                            '@JsonSerializable(explicitToJson: true)\nclass ', 
                            a, ' {\n\n'])
        
        #Modifier description includes '\n\n' need to change it to a comment
        dartCode = dartCode.replace('\n\nModifier', '\n// Modifier')
        
        #look in the properties section of each resource to see what pattern
        #it fits and based on that, print out specific information
        for b in schema['definitions'][a]['properties']:

            #prints comment to the Dart code, formatted lines <= 80 characters
            # dartCode = ''.join([dartCode, 
            #                     less80(schema['definitions'][a]['properties'][b]['description']), 
            #                     '\n'])
                                        
            #if items is NOT included it means that the item is NOT an array/list
            if('items' not in schema['definitions'][a]['properties'][b]):
                
                #if  there's a $ref in it, print out that value
                if('$ref' in schema['definitions'][a]['properties'][b]):
                    ref = schema['definitions'][a]['properties'][b]['$ref']
                    ref = ref.split('/definitions/')[1]
                    dartCode = ''.join([dartCode, primitiveDart(ref), ' ', b, ';\n'])
                    
                #if  there's a const in it, print out that value
                elif('const' in schema['definitions'][a]['properties'][b]):  
                                
                    dartCode = ''.join([dartCode, 
                                        primitiveDart(schema['definitions'][a]['properties'][b]['const']), 
                                        ' ', b, ';\n'])
                    
                #if  there's a pattern in it, print out the type of pattern
                elif('pattern' in schema['definitions'][a]['properties'][b]):  
                    
                    dartCode = ''.join([dartCode,  
                                        primitiveDart(schema['definitions'][a]['properties'][b]['type']), 
                                        ' ', b, ';\n'])
                     
                #if it's enum, print it as type of enum, and then include the
                #possible values as a comment at the end of the line
                elif('enum' in schema['definitions'][a]['properties'][b]):

                    dartCode = ''.join([dartCode, 'String ', b, '; // <code> enum: ',  
                                        '/'.join(schema['definitions'][a]['properties'][b]['enum']), 
                                        ';\n'])

            #if it does include items, it is an array/list
            elif('$ref' in schema['definitions'][a]['properties'][b]['items']):
                
                #make lists if the item is array
                dartCode = ''.join([dartCode,  'List<', 
                                    primitiveDart(schema['definitions'][a]['properties'][b]['items']['$ref'].split('/definitions/')[1]), 
                                    '> ', b, ';\n'])   
    
        dartCode = ''.join([dartCode, '\n}\n\n'])
            
with open("dartFhirClasses.dart", "w", encoding="utf-8") as f:
    f.write(dartCode)
f.close()