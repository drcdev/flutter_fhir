#!/usr/bin/env python3

import json
import re

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]
    
with open("fhirSchemaDart.dart", encoding="utf-8") as file:
    dartclass = file.read()
  
# #open fhir json schema
with open('fhir.schema.json', encoding='utf8') as json_file:
    schema = json.load(json_file)
    
check = dartclass

check = re.sub(r'\npart\s.*;','', check)
check = re.sub(r'\n@Json.*','', check)
check = re.sub(r'(?<=\n\s\s//).*(?=\n)','', check)
check = check.replace('//\n','')
check = re.sub(r'\n\s*(?=.*)','\n',check)
check = check.replace('}', '')
check = check.replace('\n\n', '\n')

checked = ''
n = 0
for m in schema['definitions']:
    if(m != 'ResourceList'):
        n += 1
        if(n > 20):
            checked = ''.join([checked, '\n', m])
            if('properties' in schema['definitions'][m]):
                for p in schema['definitions'][m]['properties']:
                    checked = ''.join([checked, '\n', p])

check = check.split('\n')
checked = checked.split('\n')

for i in range(0,90):
    print(check[i] + '   ' + checked[i])
    

sqlite = dartclass
sqlite = re.sub(r'//.*\n', '', sqlite)
sqlite = re.sub(r'part\s.*\n', '', sqlite)
sqlite = re.sub(r'@Json.*\n', '', sqlite)
sqlite = re.sub(r'\n\n', '\n', sqlite)
sqlite = re.sub(r'\n\s*(?=.*)', '\n', sqlite)
sqlite = sqlite.replace('}\nclass ', '}\n\n')

dartclass = re.sub(r'part\s.*_.*;', '', dartclass)
dartclass = re.sub(r'}\n*@Json', '}\n\n@Json', dartclass)
classes = re.findall(r'(?<=class\s).*(?=\s\{)', dartclass)

sqls = {}
sql = sqlite.split('}')
for c in range(0,len(classes)):
    if('_' in classes[c]):
        sql[c] = sql[c].replace(classes[c] + ' {', '')
        sql[c] = re.sub(r'\n(?=.*)', '\n' + classes[c] + '.', sql[c])
        sql[c] = ''.join([sql[c], '\n'])
        sql[c] = sql[c].replace(classes[c] + '.\n', '')
    sqls[classes[c]] = sql[c]

sqlCode = ''
for k in reversed(sorted(sqls.keys())):
    if('_' in k):
        sqlCode = ''.join([sqls[k], '\n', sqlCode])
    else:
        sqlCode = ''.join([sqls[k], '\n', sqlCode])
        sqlCode = sqlCode.replace('\n\n\n', '\n')
        lines = sqlCode.split(';')
        sqlCode = ''
        for l in lines:
            line = l.split(' ')
            if(len(line) > 1):
                sqlCode = ''.join([sqlCode, line[1], line[0]])
        sqlCode = re.sub(r'.*\s{', 'DROP TABLE ' + lowcc(k) + ';\n\n' +
                         'CREATE TABLE ' + lowcc(k) + '(', sqlCode)
        with open("./sqlite/" + lowcc(k) + ".sql","w", encoding="utf-8") as f:
            f.write(sqlCode)
        f.close()
        sqlCode = ''

lists = {}
new = dartclass.split(';\n\n}\n')

for c in range(0,len(classes)):
    entity = ''.join([new[c], '\n', classes[c], '(\n      {'])
    for p in schema['definitions'][classes[c]]['properties']:
        entity = ''.join([entity, 'this.', p, ',\n'])
    entity = ''.join([entity, '});\n\n  factory ', classes[c],  
          '.fromJson(Map<String, dynamic> json) => _$', classes[c],
          'FromJson(json);\n  Map<String, dynamic> toJson() => _$', classes[c],
          'ToJson(this);\n}'])
    entity = entity.replace(',\n});', '});')
    lists[classes[c]] = entity   
      
dartCode = ''
for k in reversed(sorted(lists.keys())):
    if('_' in k):
        dartCode = ''.join([lists[k], '\n', dartCode])
    else:
        dartCode = ''.join([lists[k], '\n' , dartCode])
        with open("./class/" + lowcc(k) + ".dart","w", encoding="utf-8") as f:
            f.write(dartCode)
        f.close()
        dartCode = ''
    
    
    