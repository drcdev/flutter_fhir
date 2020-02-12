#!/usr/bin/env python3

import os
import fhirToDartFunc as fhir

fhirDir = './lib/fhirClasses/'
        
for filename in os.listdir(fhirDir):
    if('.g.dart' not in filename and 'resourceList' not in filename):
        with open(fhirDir + filename, encoding='utf8') as file1:
            code1 = file1.read()
            code1 = code1.replace("\n\npart '" + filename.replace('.dart', '.g.dart') + "';","")
            code1 = code1.replace('ResourceList resource', 'dynamic resource')
            code1 = code1.replace('ResourceList outcome', 'dynamic outcome')
            code1 = code1.replace('<ResourceList>', '<dynamic>')
        with open(fhirDir + filename.replace('.dart', '.g.dart'), encoding='utf8') as file2:
            code2 = file2.read() 
            code2 = code2.replace("\n\npart of '" + filename + "';\n", '')
            code2 = code2.replace('''contained: json['contained'] as List''',
                                  '''contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList()''')
            code2 = code2.replace('''resource: json['resource'],''',
                                  '''    resource: json['resource'] == null
        ? null
        : ResourceTypes(json['resource']['resourceType'], json['resource'] as Map<String, dynamic>),''')
            code2 = code2.replace('''outcome: json['outcome'],''',
                                  '''    outcome: json['outcome'] == null
        ? null
        : ResourceTypes(json['outcome']['resourceType'], json['outcome'] as Map<String, dynamic>),''')

        with open(fhirDir + filename, "w", encoding="utf-8") as f:
            f.write(code1 + '\n' + code2)
        os.remove(fhirDir + filename.replace('.dart', '.g.dart'))
f.close()


with open(fhirDir + 'resourceList.dart', "w", encoding="utf-8") as f:
    f.write(fhir.resourceList)
f.close()


with open(fhirDir + 'classes.dart', "w", encoding="utf-8") as f:
    f.write(fhir.classes)
f.close()