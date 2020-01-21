#!/usr/bin/env python3

import re

def lowcc(string):
    return string[0].lower()+string[1:len(string)]

url = "../"

#paste class code from dart class in this file
dartfile = "dartCode.txt"

#paste json code from FHIR website in this file
jsonfile = "jsonCode.txt"
  
with open(url + dartfile) as file:
    dartclass = file.read()   
with open(url+jsonfile) as file:
    jsonclass = file.read()
    
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