#!/usr/bin/env python3

import json
import re
import io
import math

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]
    
#open fhir json schema
with open('fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)

full = ''

#iterates through the different entities in fhir.schema.json
def defRes(entity):
    if 'definitions' in entity:
        full = ''
        #iterates through each entity listed under definitions, this is 
        #mostly Resources, but some are primitives
        for p in entity['definitions']:
            full = ''.join([full, '\n\n', "part '", lowcc(p), ".g.dart';\n\n",
                            '@JsonSerializable(explicitToJson: true)\nclass ',
                            p, ' {', defRes(entity['definitions'][p])])
        return full
    elif 'properties' in entity:
        full = ''
        for p in entity['properties']:
            full = ''.join([full, '\n  ', '\n', 
            defRes(entity['properties'][p]), ' ', p])
        full = ''.join([full, '\n\n}'])
        return full
    elif 'type' in entity:
        if(entity['type'] == 'array'): 
            if('$ref' in entity['items']):
                return(''.join(['  // ', entity['description'], '\n', 'array - ', 
                                entity['items']['$ref'].split('#/definitions/')[1]]))
            else:
                return('array - ')
        else:
            return(''.join(['  // ', entity['description'], ' ', entity['type']]))
    elif 'oneOf' in entity:
        full = ''
        for p in entity['oneOf']:
            if 'description' in entity:
                full = ''.join([full, '  // ', entity['description'], p['$ref'].split('#/definitions/')[1]])
            else:
                full = ''.join([full, p['$ref'].split('#/definitions/')[1]])
        return full
    elif '$ref' in entity:
        if 'description' in entity:
            return(''.join(['  // ', entity['description'], '\n', entity['$ref'].split("#/definitions/")[1]]))
        return(entity['$ref'].split("#/definitions/")[1])
    elif 'enum' in entity:
        return(''.join(['  // ', entity['description'], 'enum: ', *entity['enum']]))
    else:
        return(entity['description'])
    
full = defRes(schema)
first = re.findall(r'(?<=\n).*(?=\s{\n)',re.sub(r'part\s.*\n\n.*\nclass\s',
                '', full.split('xhtml - escaped html (see specfication)')[0]))
full = full.split('xhtml - escaped html (see specfication)')[1] 

primitives = {'base64Binary': 'String', 'boolean': 'bool', 
              'canonical': 'String', 'code': 'String', 'date': 'String', 
              'dateTime': 'DateTime', 'decimal': 'double', 'id': 'String', 
              'instant': 'DateTime', 'integer': 'int', 'markdown': 'String', 
              'oid': 'String', 'positiveInt': 'int', 'string': 'String', 
              'time': 'String', 'unsignedInt': 'int', 'uri': 'String', 
              'url': 'String', 'uuid': 'String'}
    
for (key, value) in primitives.items():
    full = full.replace('\n' + key, '\n  ' + value)
    full = full.replace('array - ' + key, '  array - ' + value)
    
full = full.replace('array - ', '  List<')
full = full.replace('.\n  ', '.\n')
full = re.sub(r'\.\n(?=.*)', '.\n  ', full)
full = full.replace('\nElement', '\n  Element')
full = full.replace('\nModifier', '\n  // Modifier')
full = full.replace('\n  \n  //', ';\n\n  //')
full = full.replace('\n\n}', ';\n\n}')
full = full.replace('{;', '{')

new = ''
for line in full.split('\n'):
    if('//' in line):
        j=0
        k=0
        for i in range(1, math.ceil(len(line)/80)):
            j += 80
            while(line[j] != ' '):
                j -= 1
            new = ''.join([new, line[k:j], '\n  // '])
            k = j
        new = ''.join([new, line[k:len(line)], '\n'])
    else:
        new = ''.join([new, line, '\n'])

full = new
#(?<=List<.*)\s

with open("fhirSchemaDart.txt", "w", encoding="utf-8") as f:
    f.write(full)
f.close()