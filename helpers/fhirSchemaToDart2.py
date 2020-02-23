#!/usr/bin/env python3

import os
#import fhirToDartFunc as fhir

fhirDir = './lib/fhirClasses/'
        
for filename in os.listdir(fhirDir):
    if('.g.dart' not in filename):
        with open(fhirDir + filename, encoding='utf8') as file1:
            code1 = file1.read()
            code1 = code1.replace('@JsonSerializable(explicitToJson: true, includeIfNull: false)', 
                                  '@HiveType()')
            code1 = code1.replace("import 'package:json_annotation/json_annotation.dart';", '')
            code1 = code1.replace('ResourceList resource', 'dynamic resource')
            code1 = code1.replace('ResourceList outcome', 'dynamic outcome')
            code1 = code1.replace('<ResourceList>', '<dynamic>')
            code1 = code1.replace('flutter_fhir/fhirClasses/resourceList.dart', 
                                  'flutter_fhir/util/resourceList.dart')
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