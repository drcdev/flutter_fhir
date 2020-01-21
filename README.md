# flutter_fhir

First attempt at a flutter app for FHIR.
1. Basic Oauth2 access to FHIR server (https://www.health-samurai.io/aidbox).
2. Can create new patients, download from server.
3. Can enter new patients w/ family members.
4. Currently unable to upload new patients to server.
5. Added lots of the FHIR json classes (but still more to do).

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
4. I can't ever remember the command for automatic json code: flutter pub run build_runner build

# Formatting
I'm a newbie at coding, but I've tried to keep naming rules consistent (and consistent from FHIR).
1. Dart class names: upper camel case.
2. Variables: lower camel case.
3. File names: lower camel case.
4. FHIR json class names: upper camel case.
5. For the json classes that have classes nested, but aren't full FHIR resources (or at least
    defined like they are) those classes have been placed in the same .dart file as the parent
    class. These are not private classes. Should they be?
6. Int are ints, DateTimes are DateTimes, otherwise values are strings.
7. For all references I have tried to include the type of reference which they allow.
8. There are some json arguments named 'class' in the official documentation, I've renamed them\n 
    'classs' because that is a reserved word in flutter.

ToDo: define canonical types\n
Todo: understand initstate better, learn Future, async, await