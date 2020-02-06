# flutter_fhir
First attempt at a flutter app for FHIR.
1. Basic Oauth2 access to FHIR server (https://www.health-samurai.io/aidbox).
2. Can create new patients, download from server.
3. Can enter new patients w/ family members.

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
6. For all references I have tried to include the type of reference, if flutter allows.
7. 'Class', 'List', 'extends', 'for', 'assert' are reserved words in flutter. I've changed them to\n
    the following, in the following classes respectively:
    'classs' - 'Consent_Provision', 'Coverage', 'Encounter', 'Encounter_ClassHistory',\n 
        'SubstancePlymer', 'SubstanceSourceMaterial_OrganismGeneral'
    'lists' - 'Lists'
    'extend' - 'StructureMap_Group'
    'fore' - 'Task'
    'asserts' - 'TestReport_Action', 'TestReport_Action1', 'TestScript_Action', 'TestScript_Action1'
9. I had to add a resourceList class - this is not official.
10. Named optional parameters are not allowed to start with underscores. ~~I'm going to omit for now.~~
    I changed my mind. I added element in front of every underscore since they're all elements, and
    that way I'll be able to support them in case in the future.

ToDo: define canonical types\n
Todo: understand initstate better, learn Future, async, await

# SQLITE
As this is supposed to be a mobile app, at some point if I'm going to save data on the device, it's
going to have to make use of sqlite. I've begun to try and design the database with the following
guidelines:
1. Each of the fhir datatypes below will be in it's own table except for primitives
2. Each table will have an id that will be its primary key, except for bridge tables
3. All tables with '__' are bridge tables
4. Each single primitive will be a column
5. Each column referring to a single row in another table will have a foreign key corresponding to 
    the id of the row in the other table, a normal child-parent table relationship
6. For lists of rows in other tables (e.g. patient table may refer to multiple rows in patient_Contact table), but     where the second table is referenced only by the first (again, patient_Contact is only ever referenced from        patient), then the first table becomes the parent table, and the second table will have foreign keys               referencing it, ToDo: should this be generalized with bridge tables?
7. For instances where multiple tables reference multiple rows in a table, a bridge table is created. These             combined names, with the table referencing listed first, then two underscores '__', then the table     
     referenced. (e.g. patient__identifier). Using this case, the identifier column in the patient table will reference an 'identifierId' column in patient_identifier. Likewise, the identifier table will have a patientId column referencing the patientId column in patient_identifier. This is a new column that will be added to the identifier column, and is not part of the json Schema.
8. Work in progress, obviously, so some of this will change as I learn why not to do some things.
9. 4 primitive tables for lists of same, 
    -uri with canonical and uri columns
    -numbers with unsignedInt, positiveInt, decimal and integer columns
    -times with time and dateTime columns
    -strings with code, string and markdown columns
    -all primitive tables will have foreignId and foreignTable added as columns to form a composite
        foreign key
10. ToDo: Lists - bools, other tables

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