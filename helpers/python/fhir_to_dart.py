#!/usr/bin/env python3

import re

def lowcc(string):
    return string[0].lower()+string[1:len(string)]

url = "../"
classfile = "FHIR_to_dart.txt"
args = []

with open(url + classfile) as file:
    dartclass = file.read()   
fhirclass = re.search('(?<="resourceType" : ").*(?=",)', dartclass).group(0)
restOfClass = dartclass.replace('{doco\n  "resourceType" : "' + fhirclass + '",\n', "").split('\n', 1)
first = restOfClass[0]
second = restOfClass[1]

fullclass = ''.join(["import 'package:json_annotation/json_annotation.dart';\n", "part '" + lowcc(fhirclass) + ".g.dart';\n\n"])
fullclass = ''.join([fullclass, "@JsonSerializable(explicitToJson: true)\n", "class " + fhirclass + " {\n", "  String resourceType;\n"])
while(first != ''):
    addObject = False
    if(re.search(r'^.*".*', first) != None):
        if(re.search(r'{', first) != None):
            if(re.search(r'}', first) == None):
                second = second.split('}],', 1)[1]
                search = lowcc(re.search(r'(?<=\").*(?=\" : )', first).group(0))
            elif(re.search(r'\(', first) != None):
                search = re.search(r'(?<={ ).*(?=\()', first).group(0)
                addObject = True
            else:
                search = lowcc(re.search(r'(?<={ ).*(?= })', first).group(0))
            namer = lowcc(re.search(r'(?<=\").*(?=\")', first).group(0))
            fullclass = ''.join(["import '", search, ".dart';\n", fullclass, "  List<", search, "> ", namer, ";"])
            args.append("this." + namer + ", ")
        elif(re.search(r'<', first) != None):
            search = lowcc(re.search(r'(?<=\").*(?=\" :)', first).group(0))
            types = re.search(r'(?<=<).*(?=>)', first).group(0)
            fullclass = ''.join([fullclass, "  String ", search, ";"])
            args.append("this." + search + ", ")
    if(addObject):
        objectReferenceResource = "//**##oRR##** "
    else:
        objectReferenceResource = " "
    fullclass = ''.join([fullclass, "  ", objectReferenceResource, re.search(r'\/\/.*', first).group(0), "\n"])
    first = second.split('\n', 1)[0]
    second = second.split('\n', 1)[1]

search = lowcc(re.search(r'(?<=\").*(?=\" : )', second).group(0))
namer = lowcc(re.search(r'(?<=\").*(?=\")', second).group(0))
fullclass = ''.join(["import '", search, ".dart';\n", fullclass, "  List<", search, "> ", namer, ";"])
fullclass = ''.join([fullclass, "  ", re.search(r'\/\/.*', second).group(0), "\n\n  ", fhirclass, "({"])
args.append("this." + namer + "});\n\n")
args = ''.join(args)
fullclass = ''.join([fullclass, args, "  factory ", fhirclass, ".fromJson(Map<String, dynamic> json) => _$"])
fullclass = ''.join([fullclass, fhirclass, "FromJson(json);\n  Map<String, dynamic> toJson() => _$"])
fullclass = ''.join([fullclass, fhirclass, "ToJson(this);\n}\n"])

f= open(url+lowcc(fhirclass)+".dart","w+")
f.write(fullclass)
f.close()
