#!/usr/bin/env python3

import os
#import fhirToDartFunc as fhir

fhirDir = './lib/fhirClasses/'
        
for filename in os.listdir(fhirDir):
    if('.g.dart' not in filename):
        with open(fhirDir + filename, encoding='utf8') as file1:
            code1 = file1.read()
            code1 = code1.replace("@HiveType()\n",'')
            code1 = code1.replace("\npart '" + filename.replace('.dart', '.g.dart') + "';","")
        with open(fhirDir + filename.replace('.dart', '.g.dart'), encoding='utf8') as file2:
            code2 = file2.read() 
            code2 = code2.replace("\n\npart of '" + filename + "';\n", '')

        with open(fhirDir + filename, "w", encoding="utf-8") as f:
            f.write(code1 + '\n' + code2)
        os.remove(fhirDir + filename.replace('.dart', '.g.dart'))
        f.close()