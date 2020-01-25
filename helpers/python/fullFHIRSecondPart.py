#!/usr/bin/env python3

import json
import re

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]
    
with open('fhirSchemaDart.txt') as file:
    dartclass = file.read()  
  
#open fhir json schema
with open('fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)

classes = re.findall(r'(?<=class\s).*(?=\s{\n)', dartclass)
new = dartclass.split('}')
for c in range(0,len(classes)):
    entity = ''.join([new[c], '\n', classes[c], '(\n      {'])
    for p in schema['definitions'][classes[c]]['properties']:
        entity = ''.join([entity, 'this.', p, ',\n'])
    entity = ''.join([entity, '});\n\n  factory ', classes[c],  
          '.fromJson(Map<String, dynamic> json) => _$', classes[c],
          'FromJson(json);\n  Map<String, dynamic> toJson() => _$', classes[c],
          'ToJson(this);\n}'])
    entity = entity.replace(',\n});', '});')
    # f= open("./class/" + lowcc(classes[c])+".dart","w+")
    # f.write(entity)
    # f.close()