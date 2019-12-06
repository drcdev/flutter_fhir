library(dplyr)
library(stringr)

#read in fhir class
fhirclass <- scan('FHIR_to_dart.txt', what="character", sep=" ")
str_extract(fhirclass, '(?<="resourceType" : ").*(?=",)')


#start string for file
encounter <- paste('',
                   "import 'period.dart';\n",
                   "import 'package:json_annotation/json_annotation.dart';\n\n",
                   
                   '@JsonSerializable(explicitToJson: true)\n'
                   ''
                  
                   'POST /fhir\n\n',
                   '{\n',
                   '  "resourceType": "Bundle",\n',
                   '  "type": "transaction",\n',
                   '  "entry": [\n', sep="")

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