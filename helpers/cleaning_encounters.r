
library(dplyr)

#read in encounter file
encounters <- as.data.frame(read.csv(file = 'testenencounter.csv', stringsAsFactors = FALSE))

#Give columns better
colnames(enencounters) <- c('patientID', 'providerID', 'encounter.start', 'antiparasitic.time', 'encounter.complete', 'date.edited', 'date.uploaded', 'location')


#Format all of the data from the CSV file to JSON FHIR format, and then write it to a string called encounter.
encounter <- paste('',
                 'POST /fhir\n\n',
                 '{\n',
                 '  "resourceType": "Bundle",\n',
                 '  "type": "transaction",\n',
                 '  "entry": [\n', sep="")
for(i in 1:nrow(encounters)) {
encounter <- paste(encounter, 
                   '  {\n',
                   '    "request": {\n',
                   '    "method": "POST",\n',
                   '    "url": "/Encounter"\n',
                   '    },\n',
                   '    "resource": {\n',
                   '      "resourceType": "Encounter",\n',
                   '      "status": "finished",\n',
                   '      "subject": {\n',
                   '        "reference": "Patient/', as.character(encounters$patientID[i]), '",\n',
                   '      },\n',
                   '      "class": {\n',
                   '        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",\n',
                   '        "code": "HH",\n',
                   '        "display": "home visit"\n',
                   '      },\n',
                   '      "participant": [\n',
                   '        {\n',
                   '          "individual": {\n',
                   '            "reference": "Practitioner/', as.character(encounters$providerID[i]), '",\n',
                   '          },\n',
                   '        },\n',
                   '      ],\n',      
                   '      "period": {\n',
                   '        "start": "', as.character(encounters$encounter.start[i]), '",\n',
                   '        "end": "', as.character(encounters$encounter.complete[i]), '",\n',
                   '      }\n',
                   '    }\n',
                   '  },\n', sep="")}
encounter <- paste(encounter,      
      '  ]\n',
      '}', sep="")


#Open a file to write to, write the formatted data to it, close the file.
encountered <- file("encounter.json")
writeLines(encounter, encountered)
close(encountered)


