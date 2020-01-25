#!/usr/bin/env python3

import json
import re

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
        for p in entity['definitions']:
            full = ''.join([full, '\n', p, defRes(entity['definitions'][p])])
        return full
    elif 'properties' in entity:
        full = ''
        for p in entity['properties']:
            full = ''.join([full, '\n  ', p, '  ', defRes(entity['properties'][p])])
        return full
    elif 'type' in entity:
        if(entity['type'] == 'array'): 
            if('$ref' in entity['items']):
                return(''.join(['array - ', entity['items']['$ref'].split('#/definitions/')[1]]))
            else:
                return('array')
        else:
            return(''.join([' ', entity['type']]))
    elif 'oneOf' in entity:
        full = ''
        for p in entity['oneOf']:
            full = ''.join([full, p['$ref'].split('#/definitions/')[1], '\n'])
        return full
    elif '$ref' in entity:
        return(entity['$ref'].split("#/definitions/")[1])
    elif 'enum' in entity:
        return(''.join(['enum: ', *entity['enum']]))
    else:
        return(entity['description'])
    
full = defRes(schema)
f= open("fhirSchemaDart.txt","w+")
f.write(full)
f.close()