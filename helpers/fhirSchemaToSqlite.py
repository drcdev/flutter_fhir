#!/usr/bin/env python3

import json

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]

def upcc(string):
    return string[0].upper() + string[1:len(string)]

#returns the item if it's a primitive, otherwise returns type of primitive
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

def isGenPurpose(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['identifier', 'humanName', 'address', 'contactPoint',
                      'timing', 'quantity', 'simpleQuantity', 'attachment',
                      'range', 'period', 'ratio', 'codeableConcept', 'coding',
                      'sampledData', 'age', 'distance', 'duration', 'count',
                      'money', 'moneyQuantity', 'annotation', 'signature',
                      'backboneElement'])

def isMetaData(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['contactDetail', 'contributor', 'dataRequirement',
                      'parameterDefinition', 'relatedArtifact', 'triggerDefinition',
                      'usageContext', 'expression'])

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

#there is no native table for resourceList, so for now, I'm adding one
# sqlCode = ''.join(['DROP TABLE resourceList;\n\n',
#                   'CREATE TABLE resourceList(\n\n',
#                   '\tid TEXT PRIMARY KEY,\n',
#                   '\tresourceType TEXT\n\n',
#                   ');\n'])

sqlCode = ''

definitions = schema['definitions']

#look at types to see what lists of nested objects are only referenced from one other table
singles = []
for table in definitions:
    if('properties' in definitions[table] and str(table) != 'ResourceList'):
        for variable in definitions[table]['properties']:
            if('type' in definitions[table]['properties'][variable]):
                if('array' == definitions[table]['properties'][variable]['type']):
                    if('$ref' in definitions[table]['properties'][variable]['items']):
                        singles.append(table)
                        singles.append(definitions[table]['properties'][variable]['items']['$ref'].split('/definitions/')[1])
single = {}
psingle = {}
#if a table is a list from one and only one other table, record it here to
#create foreign key later
for i in range(0, len(singles), 2):
    if(singles[1::2].count(singles[i+1]) == 1):
        single[singles[i+1]] = singles[i]
        psingle[singles[i]] = singles[i+1]

z = 0
#iterates through the different entities in fhir.schema.json
#only looks in definitions (these are mostly resources, not primitives)
for table in definitions:
    
    #ignore any entries that are under 'ResourceList' (names, no definitions)
    #ignore definitions of any of the primitives ToDo: is this appropriate?
    if('properties' in definitions[table] and str(table) != 'ResourceList'):
        sqlCode = ''.join([sqlCode, 'CREATE TABLE ', sqlStrings(lowcc(table)), '(\n\n'])
        
        z += 1
        zs = str(hex(z))[2:len(str(hex(z)))]
        if(len(zs) == 1):
            zs = '00' + zs
        elif(len(zs) ==2):
            zs = '0' + zs
        zs = zs.upper()
        print('"' + table + '": "' + zs + '"')
        
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
                        if(table not in psingle.keys() 
                           or value['items']['$ref'].split('/definitions/')[1] not in single.keys()
                           or single[value['items']['$ref'].split('/definitions/')[1]] != table):
                            
                            sqlCode = ''.join([sqlCode, 
                                                       '\t', 
                                                       sqlStrings(variable), 
                                                       ' **LIST** ', 
                                                       value['items']['$ref'].split('/definitions/')[1],
                                                       ',\n'])
                        else:                            
                            sqlCode = ''.join([sqlCode, 
                                               '\t',
                                               sqlStrings(variable), 
                                               ' BOOLEAN,',
                                               ' -- true if 1+ rows in ', 
                                               psingle[table], 
                                               ' correspond to this entry\n'])


                    elif('enum' in value['items']):
                        sqlCode = ''.join([sqlCode, '\t',  
                                           sqlStrings(variable), ' **LIST** ',
                                           'enum, -- enum: ', '/'.join(value['items']['enum']),
                                           ',\n'])
                    

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
                    sqlCode = ''.join([sqlCode, '\t', lowcc(single[table] + '_id'),
                                       ' TEXT, -- Foreign Key to ', 
                                       sqlStrings(lowcc(single[table])), ' table\n'])
                    foreignKeys[lowcc(single[table] + '_id')] = sqlStrings(lowcc(single[table]))
                                                       
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
                sqlCode = ''.join([sqlCode, '\t', sqlStrings(variable), 
                                   ' TEXT, -- enum: ', 
                                   '/'.join(value['enum']), '\n'])
            else:
                print("You probably shouldn't be here.")
                
        sqlCode = ''.join([sqlCode, '\n'])
        #print out code for foreign keys for each table
        for key, val in foreignKeys.items():
            sqlCode = ''.join([sqlCode, 
                               '\tFOREIGN KEY (', key, ')\n',
                               '\t\tREFERENCES ', val, ' (id)\n',
                               '\t\t\tON DELETE CASCADE',
                                '\n\t\tON UPDATE NO ACTION,\n\n'])
        sqlCode = ''.join([sqlCode, ');\n\n'])
        
sqlCode = sqlCode.replace(',\n\n);', '\n\n);')
        
#write it to a file
with open("sqliteFhirScript.sql", "w", encoding="utf-8") as f:
    f.write(sqlCode)
f.close()
print(z)

#14 enum lists

#2705 lists
#1435 Extension lists
#120 Identifier lists
#397 Coding lists
#143 ResourceList lists
#263 Reference Lists