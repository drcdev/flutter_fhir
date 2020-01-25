#!/usr/bin/env python3

import re

def lowcc(string):
    return string[0].lower()+string[1:len(string)]

url = "../"

#obtain json schema
json.schema = "fhir.schema.json"
with open(url + json.schema) as file:
    jsonschema = file.read()   
    
resources = re.search((r'(?<=(Type",\n    "mapping": \{).*?(?\}\n")', first)).*(?=\")', first)))
#split into the rest of the code, and find individual arguments
dartstring = re.findall('(?<=\S ).*(?=;)', dartclass); 
print(dartstring);
dartstrings = re.findall('(?<=\n).*;', dartclass); 
print(dartstrings);

#for each argument left, match it to the appropriate comment
#then paste in that comment
for i in range(0,len(dartstrings)):
    jsonstring = re.search(dartstring[i] + '.*(?=\n)', jsonclass);
    stringer = re.search('\/\/.*', jsonstring.group(0));
    if(stringer != None): 
        old = dartstrings[i];
        new = '\n  ' + stringer.group(0) + '\n' + old;
        print(new);
#        dartclass = dartclass.replace(old, new);
#print(dartclass);