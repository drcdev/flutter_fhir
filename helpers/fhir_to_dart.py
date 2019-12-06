
import string
import csv
import re
import io

def lowcc(string):
    return string[0].lower()+string[1:len(string)]

url = "C:\\Users\\faulkenbej\\Documents\\flutter_dev\\flutter_fhir\\helpers\\"
classfile = "FHIR_to_dart.txt"

file = open(url + classfile)
dartclass = file.read()    
fhirclass = re.search('(?<="resourceType" : ").*(?=",)', dartclass).group(0)
ccaseclass = lowcc(fhirclass)
restOfClass = dartclass.replace('{doco\n  "resourceType" : "' + fhirclass + '",\n', "")
first = restOfClass.split('\n', 1)[0]
second = restOfClass.split('\n', 1)[1]

fullclass = ''

fullclass = fullclass + ("import 'package:json_annotation/json_annotation.dart';\n")
fullclass = fullclass + ("part '" + ccaseclass + ".g.dart';\n\n")
fullclass = fullclass + ("@JsonSerializable(explicitToJson: true)\n")
fullclass = fullclass + ("class " + fhirclass + " {\n")
fullclass = fullclass + ("  String resourceType;\n")
while(first):
    if(re.search('^  //.*', first) != None):
        fullclass = fullclass + (first + "\n")
    elif(re.search('^.*".*', first) != None):
        if(re.search('\[', first) != None):
            if(re.search('\]', first) == None):
                second = second.split('}],\n', 1)[1]
            if(re.search('.*\[\{.*', first) != None):
                search = re.search('(?<=\[\{ ).*(?= \}\].*)', first).group(0)
                fullclass = "import '" + lowcc(search) + ".dart';\n" + fullclass
                fullclass = fullclass + ("  List<" + search + "> " + lowcc(search) + ";\n")
            elif(re.search('.*\["<.*', first) != None):
                fullclass = fullclass + (" List<String> " + re.search('(?<=\[ <).*(?=> \])', first).group(0))
        elif(re.search('\{', first) != None):
            if(re.search('\}', first) == None):
                second = second.split('}],\n', 1)[1]
            if(re.search('(?<= \{ ).*(?= \}, )', first) != None):
                search = re.search('(?<= \{ ).*(?= \}, )', first).group(0)
                fullclass = "import '" + lowcc(search) + ".dart';\n" + fullclass
                fullclass = fullclass + ("  List<" + search + "> " + lowcc(search) + ";\n")
        elif(re.search('<', first) != None):
                search = re.search('(?<=<).*(?=>)', first).group(0)
                fullclass = fullclass + ("  List<" + search + "> " + re.search('(?<=").*(?=" : )', first).group(0) + ";\n")
            
            
    first = second.split('\n', 1)[0]
    second = second.split('\n', 1)[1]
    print("1" + first)

f= open(url+ccaseclass+".dart","w+")
f.write(fullclass)
f.close()
