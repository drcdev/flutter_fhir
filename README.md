# flutter_fhir

First attempt at a flutter app for FHIR.
1. Basic Oauth2 access to FHIR server (https://www.health-samurai.io/aidbox).
2. Can create new patients, download/sync from server.

ToDo: Goal is to be able to upload vaccination data.

# helpers
I'm adding a helpers folder. This is going to be side projects that are not the primary app,
but serve some useful (I hope) purpose. 
1. The first is a basic R script to request patient data from the server with some formatting,
this will need to be improved with larger and more detailed datasets.
2. I've added some fake patients that are structurallly similar to some patients that we have
in another country, but all data was synthesized anew.
3. I've also added some completely synthesized patients of various ages. If you're following
along at home and using Aidbox, they have a nice, easy tutorial here for how to do it.
(https://docs.aidbox.app/basic-concepts/bulk-api-1/synthea-by-bulk-api)

Todo: Would like to make script to easily create JSON classes from HL7 FHIR specifications.

# Formatting
I'm a newbie at coding, but I've tried to keep naming rules consistent (and consistent from FHIR).
1. Dart class names: upper camel case.
2. Variables: lower camel case.
3. File names: lower camel case.
4. FHIR json class names: upper camel case.
5. FHIR complex data type not an official class (but still json class in dart): lower camel case.
6. FHIR object properties that have a reference to a particular kind of resource (I don't completely
    understand what that means), are going to be classified as a 'List<Reference>' type. And have the
    string '**##oRR##**' included as a comment on that line for easy identification when I need to come
    back and update it.