library(dplyr)

###Makes fhir resources from the test patient data, very finicky about spacing (I thought json wasn't supposed to care?)

#read CSV file
ptlist <- as.data.frame(read.csv(file = 'testpatients.csv'))

#Give columns easier to use names.
colnames(ptlist) <- c('id', 'name.given', 'name.family', 'sex', 'birthdate', 'district', 'relationship', 'rel.name.family', 'rel.name.given')

#Change to male/female, and add FHIR coded relationship
ptlist <- ptlist %>%
  mutate(sex = factor(sex, levels = c("Hembra", "Varon"), labels = c("female", "male"))) %>%
  mutate(relationship = factor(relationship, levels = c("Madre", "madre", "padre", "Padre", "Tia", "Abuela", "abuela", "abuelo", "hermano"), labels = c("MTH", "MTH", "FTH", "FTH", "AUNT", "GRMTH", "GRMTH", "GRFTH", "BRO")))

#Put NA in place of empty strings.
ptlist[ptlist == ""] <- NA

#Format all of the data from the CSV file to JSON FHIR format, and then write it to a string called patlist.
patlist <- paste('',
    'POST /fhir\n\n',
    '{\n',
    '  "resourceType": "Bundle",\n',
    '  "type": "transaction",\n',
    '  "entry": [\n', sep="")
for(i in 1:nrow(ptlist) ) {
patlist <- paste(patlist, 
      '  {\n',
      '    "request": {\n',
      '    "method": "POST",\n',
      '    "url": "/Patient"\n',
      '    },\n',
      '    "resource": {\n',
      '      "id": "', as.character(ptlist$id[i]), '",\n',
      '      "active": true,\n',
      '      "name": [\n',
      '        {\n',
      '          "family": "', as.character(ptlist$name.family[i]), '",\n',
      '          "given": [\n',
      '            "', as.character(ptlist$name.given[i]), '"\n',
      '          ]\n',
      '        }\n',
      '      ],\n',
      '      "gender": "', as.character(ptlist$sex[i]), '",\n', sep="")
if(!is.na(ptlist$birthdate[i])) {
  patlist <- paste(patlist, 
      '      "birthDate": "', as.character(ptlist$birthdate[i]), '",\n', sep="")
}
patlist <- paste(patlist,
      '      "address": [\n',
      '        {\n',
      '          "district": "', as.character(ptlist$district[i]), '"\n',
      '        }\n',
      '      ]', sep="")
if(!is.na(ptlist$relationship[i]) && (!is.na(ptlist$rel.name.family[i]) | !is.na(ptlist$rel.name.given[i]))) {
patlist <- paste(patlist, ',\n',
      '      "contact": [\n',
      '        {\n',
      '          "relationship": [\n',
      '            {\n',
      '              "coding": [\n',
      '                {\n',
      '                  "system": "http://terminology.hl7.org/ValueSet/v3-RoleCode",\n',
      '                  "code": "', as.character(ptlist$relationship[i]), '"\n',
      '                }\n',
      '              ]\n',
      '            }\n',
      '          ],\n',
      '          "name": {\n', sep="")
if(!is.na(ptlist$rel.name.family[i])) {
patlist <- paste(patlist, 
      '            "family": "', as.character(ptlist$rel.name.family[i]), '",\n', sep="")
}
patlist <- paste(patlist,
      '            "given": [\n',
      '              "', as.character(ptlist$rel.name.given[i]), '"\n',
      '            ]\n',
      '          }\n',
      '        }\n',
      '      ]', sep="")
  }
patlist <- paste(patlist, 
      '\n    }\n',
      '  },\n', sep="")
}
patlist <- paste(patlist, 
      '  ]\n',
      '}', sep="")

#Open a file to write to, write the formatted data to it, close the file.
patients <- file("patients.json")
writeLines(patlist, patients)
close(patients)


