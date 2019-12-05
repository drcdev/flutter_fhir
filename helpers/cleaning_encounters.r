
library(dplyr)
library(stringr)

#read in encounter file
encounters <- as.data.frame(read.csv(file = 'testencounters.csv', stringsAsFactors = FALSE))

#Give columns better
colnames(encounters) <- c('patientID', 'providerID', 'encounter.start', 'antiparasitic.time', 'encounter.complete', 'date.edited', 'date.uploaded', 'location')

encounters$date <- gsub(":", "_", gsub("/", "-", str_extract(encounters$antiparasitic.time, ".*(?=-)")))
encounters$antiparasitic.time <- gsub("/", "-", encounters$antiparasitic.time)
temp <- str_extract(encounters$antiparasitic.time, "-201.*(?=T)")
encounters$antiparasitic.time <- str_remove(encounters$antiparasitic.time, "-201.*(?=T)")
encounters$antiparastic.times[grepl("19", temp)] <- paste("2019-", encounters$antiparasitic.time[grepl("19", temp)], sep="")
encounters$antiparastic.times[!grepl("19", temp)] <- paste("2018-", encounters$antiparasitic.time[!grepl("19", temp)], sep="")

pattern <- "-[1-9](?=-)"
str_view(encounters$antiparastic.times, pattern)
gsub(pattern, "", encounters$antiparastic.times)

str_replace(encounters$antiparastic.times, capture(pattern), 
            str_c("0", REF1, sep= " " ))

str_replace(narratives, capture(pattern), 
            str_c("CARELESSLY", REF1, sep = " "))

str_replace(encounters$antiparastic.times, pattern, paste("0", pattern, sep=""))



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
                   '      "id": "deworming-', as.character(encounters$date[i]),"-", as.character(encounters$patientID[i]), '",\n',
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
                   '        "end": "', as.character(encounters$encounter.complete[i]), '"\n',
                   '      }\n',
                   '    }\n',
                   '  },\n', sep="")}
for(i in 1:nrow(encounters)) {
  encounter <- paste(encounter, 
                     '  {\n',
                     '    "request": {\n',
                     '    "method": "POST",\n',
                     '    "url": "/MedicationAdministration"\n',
                     '    },\n',
                     '    "resource": {\n',
                     '      "resourceType": "MedicationAdministration",\n',
                     '      "id": "antiparasite-', as.character(encounters$date[i]),"-", as.character(encounters$patientID[i]), '",\n',
                     '      "status": "completed",\n',
                     '      "medicationCodeableConcept": {\n',
                     '        "coding": [\n',
                     '          {\n',
                     '            "display": "albendazole"\n',
                     '          }\n',
                     '        ]\n',
                     '      },\n',
                     '      "subject": {\n',
                     '        "reference": "Patient/', as.character(encounters$patientID[i]), '"\n',
                     '      },\n',
                     '      "effectivePeriod": {\n',
                     '        "start": "', as.character(encounters$antiparasitic.time[i]), '",\n',
                     '        "end": "', as.character(encounters$antiparasitic.time[i]), '"\n',
                     '      },\n',
                     '      "performer": [\n',
                     '        {\n',
                     '          "actor": {\n',
                     '            "reference": "Practitioner/', as.character(encounters$providerID[i]), '"\n',
                     '          }\n',
                     '        }\n',
                     '      ]\n',
                     '    }\n',
                     '  },\n', sep="")}
encounter <- paste(encounter,      
      '  ]\n',
      '}', sep="")



#Open a file to write to, write the formatted data to it, close the file.
encountered <- file("encounter.json")
writeLines(encounter, encountered)
close(encountered)


