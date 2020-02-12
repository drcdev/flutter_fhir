# flutter_fhir
First attempt at a flutter app for FHIR.
1. Basic Oauth2 access to FHIR server (https://www.health-samurai.io/aidbox).
2. Can create new patients, download from server.
3. Can enter new patients w/ family members.
4. Localization works but only on first page.

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
4. Code generation for right now is 3 steps. fhirSchemaToDart1.py, then flutter pub run build_runner build
    then fhirSchematoDart2.py.

# Formatting
I'm a newbie at coding, but I've tried to keep naming rules consistent (and consistent from FHIR).
1. Dart class names: upper camel case.
2. Variables: lower camel case.
3. File names: lower camel case.
4. FHIR json class names: upper camel case.
5. For the json classes that have classes nested, but aren't full FHIR resources (or at least
    defined like they are) those classes have been placed in the same .dart file as the parent
    class. These are not private classes. Should they be?
6. For all references I have tried to include the type of reference, if flutter allows.
7. 'Class', 'List', 'extends', 'for', 'assert' are reserved words in flutter. I've changed them to\n
    the following, in the following classes respectively:
    'classs' - 'Consent_Provision', 'Coverage', 'Encounter', 'Encounter_ClassHistory',\n 
        'SubstancePlymer', 'SubstanceSourceMaterial_OrganismGeneral'
    'lists' - 'Lists'
    'extend' - 'StructureMap_Group'
    'fore' - 'Task'
    'asserts' - 'TestReport_Action', 'TestReport_Action1', 'TestScript_Action', 'TestScript_Action1'
    'require' - this isn't a reserved word, but in order to have @required parameters, I had to change
        required to require in testScript.
9. I had to add a resourceList class - this is not official.
10. Named optional parameters are not allowed to start with underscores. ~~I'm going to omit for now.~~
    I changed my mind. I added element in front of every underscore since they're all elements, and
    that way I'll be able to support them in case in the future.

ToDo: define canonical types\n
Todo: understand initstate better, learn Future, async, await

#Hive
1. For now, I've decided to go with Hive. It's a relatively easy, straightforward NoSQL DB, and
    for the very small amount of data I'm collecting, should be fine.
2. I'm also looking at other options for the future. So if anyone would like to weight in, I'm
    open to suggestions. These are my thoughts so far.
    a. SQLite. definitely an option. There are some concerns for speed apparently, although not with
        my current amount of data. It would also take a lot more legwork to get FHIR to map to it
        well. Although it may be that it should still be done.
    b. Moor. This is the Room library for flutter. Apparently makes working with SQLite easier.
    c. Sembast. another NoSQL DB that has more functionality than Hive. However, it stores everything
        in one file, and loads it into memory, which seemed system intensive at times.
    d. MongoDB. This one I'd like to explore more. They haven't fully built out a MongoDB Realm
        library yet for flutter. But as a DB that stores Json natively, this sounds likea  good
        option. (And maybe easier integration with something like Asymmetrik
        https://github.com/Asymmetrik/node-fhir-server-core/wiki).

# FHIR datatypes
1. Primitives: base64Binary, boolean, canonical, code, date, dateTime, decimal, id
    instant, integer, markdown, oid, positiveInt, string, time, unsignedInt,
    uri, url, uuid
2. General purpose: identifier, humanName, address, contactPoint, timing, quantity, 
    simpleQuantity, attachment, range, period, ratio, codeableConcept, coding, sampledData, age, 
    distance, duration, count, money, moneyQuantity, annotation, signature, backboneElement
3. Meta data: contactDetail, contributor, dataRequirement, parameterDefinition, relatedArtifact, 
    triggerDefinition, usageContext, expression
4. Special Data Types: reference, narrative, extension, meta, elementDefinition, dosage, backboneElement
5. ResourceTypes: Account, ActivityDefinition, AdverseEvent, AllergyIntolerance, Appointment, 
    AppointmentResponse, AuditEvent, Basic, Binary, BiologicallyDerivedProduct, BodyStructure, Bundle, 
    CapabilityStatement, CarePlan, CareTeam, CatalogEntry, ChargeItem, ChargeItemDefinition, Claim, 
    ClaimResponse, ClinicalImpression, CodeSystem, Communication, CommunicationRequest, CompartmentDefinition, 
    Composition, ConceptMap, Condition, Consent, Contract, Coverage, CoverageEligibilityRequest, 
    CoverageEligibilityResponse, DetectedIssue, Device, DeviceDefinition, DeviceMetric, DeviceRequest, 
    DeviceUseStatement, DiagnosticReport, DocumentManifest, DocumentReference, EffectEvidenceSynthesis, 
    Encounter, Endpoint, EnrollmentRequest, EnrollmentResponse, EpisodeOfCare, EventDefinition, Evidence, 
    EvidenceVariable, ExampleScenario, ExplanationOfBenefit, FamilyMemberHistory, Flag, Goal, GraphDefinition, 
    Group, GuidanceResponse, HealthcareService, ImagingStudy, Immunization, ImmunizationEvaluation, 
    ImmunizationRecommendation, ImplementationGuide, InsurancePlan, Invoice, Library, Linkage, List, 
    Location, Measure, MeasureReport, Media, Medication, MedicationAdministration, MedicationDispense, 
    MedicationKnowledge, MedicationRequest, MedicationStatement, MedicinalProduct, MedicinalProductAuthorization, 
    MedicinalProductContraindication, MedicinalProductIndication, MedicinalProductIngredient, 
    MedicinalProductInteraction, MedicinalProductManufactured, MedicinalProductPackaged, 
    MedicinalProductPharmaceutical, MedicinalProductUndesirableEffect, MessageDefinition, MessageHeader, 
    MolecularSequence, NamingSystem, NutritionOrder, Observation, ObservationDefinition, OperationDefinition, 
    OperationOutcome, Organization, OrganizationAffiliation, Parameters, Patient, PaymentNotice, 
    PaymentReconciliation, Person, PlanDefinition, Practitioner, PractitionerRole, Procedure, Provenance, 
    Questionnaire, QuestionnaireResponse, RelatedPerson, RequestGroup, ResearchDefinition, 
    ResearchElementDefinition, ResearchStudy, ResearchSubject, RiskAssessment, RiskEvidenceSynthesis, 
    Schedule, SearchParameter, ServiceRequest, Slot, Specimen, SpecimenDefinition, StructureDefinition, 
    StructureMap, Subscription, Substance, SubstanceNucleicAcid, SubstancePolymer, SubstanceProtein, 
    SubstanceReferenceInformation, SubstanceSourceMaterial, SubstanceSpecification, SupplyDelivery, 
    SupplyRequest, Task, TerminologyCapabilities, TestReport, TestScript, ValueSet, VerificationResult, 
    VisionPrescription
6. Other/in Process: 6. resourceList, element, population, productShelfLife, prodCharacteristic, 
    marketingStatus, substanceAmount