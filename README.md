# flutter_fhir

First attempt at a flutter app for FHIR.
1. Basic Oauth2 access to FHIR server (https://www.health-samurai.io/aidbox).
2. Can create new patients, download/sync from server.

ToDo: Goal is to be able to upload vaccination data.

# helpers
I'm adding a helper folder. This is going to be side projects that are not the primary app,
but serve some useful (I hope) purpose. 
1. The first is a basic R script to request patient data from the server with some formatting,
this will need to be improved with larger and more detailed datasets.

Todo: Would like to make script to easily create JSON classes from HL7 FHIR specifications.
