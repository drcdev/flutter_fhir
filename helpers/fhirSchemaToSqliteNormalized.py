#!/usr/bin/env python3

import json
import re

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]

#makes first letter of word uppercase
def upcc(string):
    return string[0].upper() + string[1:len(string)]

#returns the the type of primitive if it is one, otherwise just a string (TEXT)
def makePrimSql(string):
    primitivesSql = {'base64Binary': 'TEXT', 'boolean': 'BOOLEAN', 
      'canonical': 'TEXT', 'code': 'TEXT', 'date': 'DATE', 
      'dateTime': 'DATETIME', 'decimal': 'REAL', 'xhtml': "TEXT",
      'instant': 'DATETIME', 'integer': 'INTEGER', 'markdown': 'TEXT', 
      'oid': 'TEXT', 'positiveInt': 'INTEGER', 'string': 'TEXT', 
      'time': 'TIME', 'unsignedInt': 'INTEGER', 'uri': 'TEXT', 
      'url': 'TEXT', 'uuid': 'TEXT', 'number': 'NUMBER'}
    if(string in primitivesSql):
        return(primitivesSql[string])
    else:
        return('TEXT')

#checks if it's a primitive type
def isPrimitive(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['base64Binary', 'boolean', 'canonical', 'code', 'date',
                      'dateTime', 'decimal', 'instant', 'integer', 
                      'markdown', 'oid', 'positiveInt', 'string', 'time',
                      'unsignedInt', 'uri', 'url', 'uuid', 'number', 'xhtml'])

#code defining the types of data are based on this schema: 
    #https://www.hl7.org/fhir/datatypes.html

#checks if a field is a General Purpose data type, used to evaluate Json schema,
#does not produce SQL code
def isGenPurpose(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['identifier', 'humanName', 'address', 'contactPoint',
                      'timing', 'quantity', 'simpleQuantity', 'attachment',
                      'range', 'period', 'ratio', 'codeableConcept', 'coding',
                      'sampledData', 'age', 'distance', 'duration', 'count',
                      'money', 'moneyQuantity', 'annotation', 'signature',
                      'backboneElement'])

#checks if a field is a Meta data type, used to evaluate Json schema,
#does not produce SQL code
def isMetaData(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['contactDetail', 'contributor', 'dataRequirement',
                      'parameterDefinition', 'relatedArtifact', 'triggerDefinition',
                      'usageContext', 'expression'])

#checks if a field is a Special Purpose data type, used to evaluate Json schema,
#does not produce SQL code
def isSpecialData(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['reference', 'narrative', 'extension', 'meta',
                      'elementDefinition', 'dosage', 'backboneElement'])

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
                   'index', 'line', 'state', 'repeat', 'resource', 'route',
                   'required', 'collection', 'snapshot', 'differential', 'dependent',
                   'geometry', 'synonym', 'message', 'include']):
        return('"' + string + '"')
    else:
        return(string)
       
#open fhir json schema
with open('fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)

#final code that will be written
sqlCode = ''

definitions = schema['definitions']

def rem(string):
    if(string == 'Class'):
        return('Classs')
    if(string == 'Extends'):
        return('Extend')
    if(string == 'For'):
        return('Fore')
    if(string == 'Assert'):
        return('Asserts')
    if(string == "List"):
        return("Lists")
    else:
        return(string)  

temp = ''
imports = ''
for table in definitions:
    if('properties' in definitions[table] and str(table) != 'ResourceList' and '_' not in table):
#        imports = ''.join([imports, "import 'package:flutter_fhir/fhirClasses/", lowcc(rem(table)), ".dart';\n"])
        temp = ''.join([temp, "if(type == '", rem(table), "') return (new ", rem(table), '.fromJson(json));\n'])

#temp = ''.join([imports, '\ndynamic ResourceList(String type, Map<String, dynamic> info) {\n', temp, '}'])
        
with open("temp.dart", "w", encoding="utf-8") as f:
    f.write(temp)
f.close()

#look at types to see what lists of nested objects are only referenced from one
# other table
singles = []
for table in definitions:
    #ignore if just the list of Resources or primitives
    if('properties' in definitions[table] and str(table) != 'ResourceList'):
        #look at sub fields for each class
        for variable in definitions[table]['properties']:
            #all arrays have type in the schema
            if('type' in definitions[table]['properties'][variable]):
                #not all types have arrays
                if('array' == definitions[table]['properties'][variable]['type']):
                    if('$ref' in definitions[table]['properties'][variable]['items']):
                        #adds the table and the table to which it refers
                        singles.append(table)
                        singles.append(definitions[table]['properties'][variable]['items']['$ref'].split('/definitions/')[1])
single = {}
psingle = {}
#if a table is a list, and referenced from only one other table, that other
#table will be added as a foreign key
for i in range(0, len(singles), 2):
    if(singles[1::2].count(singles[i+1]) == 1):
        single[singles[i+1]] = singles[i] #table referenced = table referencing
        psingle[singles[i]] = singles[i+1] #table referencing = table referenced

z = 0
revBridgeTables = {}
enums= {}
bridgeTables = []

#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
for table in definitions:
    
    #ignore any entries that are under 'ResourceList' (names, no definitions)
    #ignore definitions of any of the primitives ToDo: is this appropriate?
    if('properties' in definitions[table] and str(table) != 'ResourceList'):
        sqlCode = ''.join([sqlCode, 
                           'CREATE TABLE ', 
                           sqlStrings(lowcc(table)), 
                           '(\n\n'])
        
        # z += 1
        # zs = str(hex(z))[2:len(str(hex(z)))]
        # if(len(zs) == 1):
        #     zs = '00' + zs
        # elif(len(zs) ==2):
        #     zs = '0' + zs
        # zs = zs.upper()
        # print('"' + table + '": "' + zs + '"')
        
        foreignKeys = {}
        
        #look in the properties section of each table, and based on that print
        #out specific information
        properties = definitions[table]['properties']
        for variable in properties:
            
            value = properties[variable]
            
            #check if variable is array
            if('type' in properties[variable]):
                
                typ = value['type']
                
                #check if array or pattern
                if(typ == 'array'):
                    
                    #Array
                    if('$ref' in value['items']):
                        
                        #checks if value is a list in another table that is only
                        #referenced  by this table, if so, makes value a bool,
                        #and the other table has this ID as a foreign key
                        definition = value['items']['$ref'].split('/definitions/')[1]
                        if(table not in psingle.keys() 
                           or definition not in single.keys()
                           or single[definition] != table):
                            
                            sqlCode = ''.join([sqlCode, 
                                                '\t', 
                                                sqlStrings(variable), 
                                                ' BOOLEAN,',
                                                ' -- true if 1+ item ',
                                                'is referenced from bridge ',
                                                'table: ',
                                                lowcc(table),
                                                '_',
                                                variable,
                                                '_',
                                                lowcc(definition),
                                                '\n'])
                            
                            #many-to-many relationship requires bridge table
                            bridgeTables.append(''.join([lowcc(table),
                                                '_*_',
                                                variable,
                                                '_*_',
                                                lowcc(definition)]))
                            
                            #if second table is referenced by multiple firsts
                            #listed in revBridgeTables
                            if(lowcc(definition) in revBridgeTables):
                                if(lowcc(table) not in revBridgeTables[lowcc(definition)]):
                                    revBridgeTables[lowcc(definition)].append(lowcc(table))
                            else:
                                revBridgeTables[lowcc(definition)] = [lowcc(table)]
                            
                        else:                            
                            sqlCode = ''.join([sqlCode, 
                                               '\t',
                                               sqlStrings(variable), 
                                               ' BOOLEAN,',
                                               ' -- true if 1+ rows in ', 
                                               definition, 
                                               ' correspond to this entry\n'])


                    #if list of enums
                    elif('enum' in value['items']):
                        sqlCode = ''.join([sqlCode, '\t',  
                                           sqlStrings(variable), 
                                           ' BOOLEAN, --**LIST** ',
                                           'True if 1+ references from enum ',
                                           'table: ', 'Foreign key to enum table,'
                                           ' allowed enum values: ',
                                           '/'.join(value['items']['enum']),
                                           ',\n'])
                        enums[lowcc(table) + '_*_' + upcc(variable) + '_*_enum'] = value['items']['enum']

                #if not array, either String, Bool, or Number with pattern
                else:  
                    typer = ('TEXT' if typ == 'string' else
                             ('BOOLEAN' if typ == 'boolean' else
                             ('INTEGER' if ('int' in value or 'Int' in value) else
                             'REAL')))
                    sqlCode = ''.join([sqlCode, '\t', 
                                       sqlStrings(variable), ' ',
                                       typer, ', -- pattern: ', 
                                       value['pattern'],
                                       '\n'])

            #id is always the primary key
            elif(variable == 'id'):
                sqlCode = ''.join([sqlCode, '\tid TEXT PRIMARY KEY,\n'])
                
                #add to foreign keys dictionary for coding later
                if(table in single.keys()):
                    sqlCode = ''.join([sqlCode, '\t', lowcc(single[table] + 'Id'),
                                       ' TEXT, -- Foreign Key to ', 
                                       sqlStrings(lowcc(single[table])), ' table\n'])
                    foreignKeys[lowcc(single[table] + 'Id')] = sqlStrings(lowcc(single[table]))
                                                       
            #check type
            elif('$ref' in value):
                
                #define $ref type
                ref = (value['$ref']).split('/definitions/')[1]
                sqlCode = ''.join([sqlCode, '\t', sqlStrings(variable), ' ',
                                   makePrimSql(ref), ','])
                if(not isPrimitive(ref)):
                    sqlCode = ''.join([sqlCode, ' -- Foreign Key to ', lowcc(ref), ' table'])
                    foreignKeys[sqlStrings(variable)] = lowcc(ref)
                sqlCode = ''.join([sqlCode, '\n'])
                
            #if const = resourceType
            elif('const' in value):
                sqlCode = ''.join([sqlCode, '\t', sqlStrings(variable), 
                                   ' TEXT, -- resourceType: ',  lowcc(value['const']), '\n'])
                
            #otherwise, all are enum
            elif('enum' in value):
                sqlCode = ''.join([sqlCode, 
                                   '\t', 
                                   sqlStrings(variable), 
                                   ' TEXT CHECK( ',
                                    sqlStrings(variable),
                                    ' IN (', 
                                    "'",
                                    "','".join(value['enum']),
                                    "'",
                                    ') ),\n'])
            else:
                print("You probably shouldn't be here.")
                
        #print out code for foreign keys for each table
        sqlCode = ''.join([sqlCode, '\n'])
        for key, val in foreignKeys.items():
            if(val != 'enum'):
                sqlCode = ''.join([sqlCode, 
                                   '\tFOREIGN KEY (', key, ')\n',
                                   '\t\tREFERENCES ', val, ' (id)\n',
                                   '\t\t\tON DELETE CASCADE',
                                    '\n\t\t\tON UPDATE NO ACTION,\n\n'])
            else:
                sqlCode = ''.join([sqlCode, 
                                   '\tFOREIGN KEY (', key, ')\n',
                                   '\t\tREFERENCES ', val, ' (id)\n',
                                   '\t\t\tON DELETE CASCADE',
                                    '\n\t\t\tON UPDATE NO ACTION,\n\n'])
               
        sqlCode = ''.join([sqlCode, ');\n\n'])                                             

sqlCode = sqlCode.replace(',\n\n);', '\n\n);')
  
for val in bridgeTables:
    sqlCode = ''.join([sqlCode, 
                       '\nCREATE TABLE ', val.replace('_*_', '_'), '(\n',
                       '\tid TEXT PRIMARY KEY,\n',
                       '\t', val.split('_*_')[0] + upcc(val.split('_*_')[1]) + 'Id TEXT,\n',
                       '\t', val.split('_*_')[2] + 'Id TEXT,\n\n',
                       '\tFOREIGN KEY (', val.split('_*_')[0] + upcc(val.split('_*_')[1]) + 'Id)\n',
                       '\t\tREFERENCES ', sqlStrings(val.split('_*_')[0]), ' (id)\n',
                       '\t\t\tON DELETE CASCADE',
                       '\n\t\t\tON UPDATE NO ACTION,\n'
                       '\tFOREIGN KEY (', val.split('_*_')[2] + 'Id)\n',
                       '\t\tREFERENCES ', sqlStrings(val.split('_*_')[2]), ' (id)\n',
                       '\t\t\tON DELETE CASCADE',
                       '\n\t\t\tON UPDATE NO ACTION\n'
                       ');\n'])

for key, val in enums.items():
    sqlCode = ''.join([sqlCode,
                        '\nCREATE TABLE ', key.replace('_*_', '_'), '(\n',
                        '\tid TEXT PRIMARY KEY,\n',
                        '\t', key.split('_*_')[0] + 'Id TEXT,\n',
                        '\tenum TEXT CHECK( enum',
                        ' IN (', 
                        "'",
                        "','".join(val),
                        "') ),\n\n",
                        '\tFOREIGN KEY (', key.split('_*_')[0] + 'Id)\n',
                        '\t\tREFERENCES ', sqlStrings(key.split('_*_')[0]), ' (id)\n',
                        '\t\t\tON DELETE CASCADE',
                        '\n\t\t\tON UPDATE NO ACTION\n'
                        ');\n'])
    

sqlCode = re.sub(r',(?=\s--.*\n\n\))', '', sqlCode)

#write it to a file
with open("sqliteFhirScript.sql", "w", encoding="utf-8") as f:
    f.write(sqlCode)
f.close()
#print(z)

#14 enum lists

#2705 lists
#1435 Extension lists
#120 Identifier lists
#397 Coding lists
#143 ResourceList lists
#263 Reference Lists