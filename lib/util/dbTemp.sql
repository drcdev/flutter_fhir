CREATE TABLE Element(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Element','010',${deviceId},'0000',0);

CREATE TABLE Extension(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Extension','011',${deviceId},'0000',0);

CREATE TABLE Narrative(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Narrative','012',${deviceId},'0000',0);

CREATE TABLE Annotation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Annotation','013',${deviceId},'0000',0);

CREATE TABLE Attachment(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Attachment','014',${deviceId},'0000',0);

CREATE TABLE Identifier(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Identifier','015',${deviceId},'0000',0);

CREATE TABLE CodeableConcept(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CodeableConcept','016',${deviceId},'0000',0);

CREATE TABLE Coding(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Coding','017',${deviceId},'0000',0);

CREATE TABLE Quantity(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Quantity','018',${deviceId},'0000',0);

CREATE TABLE Duration(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Duration','019',${deviceId},'0000',0);

CREATE TABLE Distance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Distance','01a',${deviceId},'0000',0);

CREATE TABLE Count(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Count','01b',${deviceId},'0000',0);

CREATE TABLE Money(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Money','01c',${deviceId},'0000',0);

CREATE TABLE Age(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Age','01d',${deviceId},'0000',0);

CREATE TABLE Range(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Range','01e',${deviceId},'0000',0);

CREATE TABLE Period(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Period','01f',${deviceId},'0000',0);

CREATE TABLE Ratio(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Ratio','020',${deviceId},'0000',0);

CREATE TABLE Reference(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Reference','021',${deviceId},'0000',0);

CREATE TABLE SampledData(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SampledData','022',${deviceId},'0000',0);

CREATE TABLE Signature(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Signature','023',${deviceId},'0000',0);

CREATE TABLE HumanName(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('HumanName','024',${deviceId},'0000',0);

CREATE TABLE Address(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Address','025',${deviceId},'0000',0);

CREATE TABLE ContactPoint(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ContactPoint','026',${deviceId},'0000',0);

CREATE TABLE Timing(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Timing','027',${deviceId},'0000',0);

CREATE TABLE Meta(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Meta','028',${deviceId},'0000',0);

CREATE TABLE ContactDetail(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ContactDetail','029',${deviceId},'0000',0);

CREATE TABLE Contributor(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Contributor','02a',${deviceId},'0000',0);

CREATE TABLE DataRequirement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DataRequirement','02b',${deviceId},'0000',0);

CREATE TABLE ParameterDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ParameterDefinition','02c',${deviceId},'0000',0);

CREATE TABLE RelatedArtifact(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('RelatedArtifact','02d',${deviceId},'0000',0);

CREATE TABLE TriggerDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('TriggerDefinition','02e',${deviceId},'0000',0);

CREATE TABLE UsageContext(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('UsageContext','02f',${deviceId},'0000',0);

CREATE TABLE Dosage(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Dosage','030',${deviceId},'0000',0);

CREATE TABLE Population(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Population','031',${deviceId},'0000',0);

CREATE TABLE ProductShelfLife(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ProductShelfLife','032',${deviceId},'0000',0);

CREATE TABLE ProdCharacteristic(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ProdCharacteristic','033',${deviceId},'0000',0);

CREATE TABLE MarketingStatus(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MarketingStatus','034',${deviceId},'0000',0);

CREATE TABLE SubstanceAmount(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstanceAmount','035',${deviceId},'0000',0);

CREATE TABLE Expression(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Expression','036',${deviceId},'0000',0);

CREATE TABLE ElementDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ElementDefinition','037',${deviceId},'0000',0);

CREATE TABLE Account(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Account','038',${deviceId},'0000',0);

CREATE TABLE ActivityDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ActivityDefinition','039',${deviceId},'0000',0);

CREATE TABLE AdverseEvent(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('AdverseEvent','03a',${deviceId},'0000',0);

CREATE TABLE AllergyIntolerance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('AllergyIntolerance','03b',${deviceId},'0000',0);

CREATE TABLE Appointment(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Appointment','03c',${deviceId},'0000',0);

CREATE TABLE AppointmentResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('AppointmentResponse','03d',${deviceId},'0000',0);

CREATE TABLE AuditEvent(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('AuditEvent','03e',${deviceId},'0000',0);

CREATE TABLE Basic(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Basic','03f',${deviceId},'0000',0);

CREATE TABLE Binary(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Binary','040',${deviceId},'0000',0);

CREATE TABLE BiologicallyDerivedProduct(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('BiologicallyDerivedProduct','041',${deviceId},'0000',0);

CREATE TABLE BodyStructure(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('BodyStructure','042',${deviceId},'0000',0);

CREATE TABLE Bundle(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Bundle','043',${deviceId},'0000',0);

CREATE TABLE CapabilityStatement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CapabilityStatement','044',${deviceId},'0000',0);

CREATE TABLE CarePlan(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CarePlan','045',${deviceId},'0000',0);

CREATE TABLE CareTeam(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CareTeam','046',${deviceId},'0000',0);

CREATE TABLE CatalogEntry(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CatalogEntry','047',${deviceId},'0000',0);

CREATE TABLE ChargeItem(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ChargeItem','048',${deviceId},'0000',0);

CREATE TABLE ChargeItemDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ChargeItemDefinition','049',${deviceId},'0000',0);

CREATE TABLE Claim(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Claim','04a',${deviceId},'0000',0);

CREATE TABLE ClaimResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ClaimResponse','04b',${deviceId},'0000',0);

CREATE TABLE ClinicalImpression(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ClinicalImpression','04c',${deviceId},'0000',0);

CREATE TABLE CodeSystem(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CodeSystem','04d',${deviceId},'0000',0);

CREATE TABLE Communication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Communication','04e',${deviceId},'0000',0);

CREATE TABLE CommunicationRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CommunicationRequest','04f',${deviceId},'0000',0);

CREATE TABLE CompartmentDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CompartmentDefinition','050',${deviceId},'0000',0);

CREATE TABLE Composition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Composition','051',${deviceId},'0000',0);

CREATE TABLE ConceptMap(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ConceptMap','052',${deviceId},'0000',0);

CREATE TABLE Condition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Condition','053',${deviceId},'0000',0);

CREATE TABLE Consent(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Consent','054',${deviceId},'0000',0);

CREATE TABLE Contract(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Contract','055',${deviceId},'0000',0);

CREATE TABLE Coverage(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Coverage','056',${deviceId},'0000',0);

CREATE TABLE CoverageEligibilityRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CoverageEligibilityRequest','057',${deviceId},'0000',0);

CREATE TABLE CoverageEligibilityResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('CoverageEligibilityResponse','058',${deviceId},'0000',0);

CREATE TABLE DetectedIssue(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DetectedIssue','059',${deviceId},'0000',0);

CREATE TABLE Device(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Device','05a',${deviceId},'0000',0);

CREATE TABLE DeviceDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DeviceDefinition','05b',${deviceId},'0000',0);

CREATE TABLE DeviceMetric(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DeviceMetric','05c',${deviceId},'0000',0);

CREATE TABLE DeviceRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DeviceRequest','05d',${deviceId},'0000',0);

CREATE TABLE DeviceUseStatement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DeviceUseStatement','05e',${deviceId},'0000',0);

CREATE TABLE DiagnosticReport(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DiagnosticReport','05f',${deviceId},'0000',0);

CREATE TABLE DocumentManifest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DocumentManifest','060',${deviceId},'0000',0);

CREATE TABLE DocumentReference(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('DocumentReference','061',${deviceId},'0000',0);

CREATE TABLE EffectEvidenceSynthesis(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('EffectEvidenceSynthesis','062',${deviceId},'0000',0);

CREATE TABLE Encounter(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Encounter','063',${deviceId},'0000',0);

CREATE TABLE Endpoint(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Endpoint','064',${deviceId},'0000',0);

CREATE TABLE EnrollmentRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('EnrollmentRequest','065',${deviceId},'0000',0);

CREATE TABLE EnrollmentResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('EnrollmentResponse','066',${deviceId},'0000',0);

CREATE TABLE EpisodeOfCare(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('EpisodeOfCare','067',${deviceId},'0000',0);

CREATE TABLE EventDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('EventDefinition','068',${deviceId},'0000',0);

CREATE TABLE Evidence(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Evidence','069',${deviceId},'0000',0);

CREATE TABLE EvidenceVariable(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('EvidenceVariable','06a',${deviceId},'0000',0);

CREATE TABLE ExampleScenario(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ExampleScenario','06b',${deviceId},'0000',0);

CREATE TABLE ExplanationOfBenefit(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ExplanationOfBenefit','06c',${deviceId},'0000',0);

CREATE TABLE FamilyMemberHistory(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('FamilyMemberHistory','06d',${deviceId},'0000',0);

CREATE TABLE Flag(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Flag','06e',${deviceId},'0000',0);

CREATE TABLE Goal(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Goal','06f',${deviceId},'0000',0);

CREATE TABLE GraphDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('GraphDefinition','070',${deviceId},'0000',0);

CREATE TABLE Group(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Group','071',${deviceId},'0000',0);

CREATE TABLE GuidanceResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('GuidanceResponse','072',${deviceId},'0000',0);

CREATE TABLE HealthcareService(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('HealthcareService','073',${deviceId},'0000',0);

CREATE TABLE ImagingStudy(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ImagingStudy','074',${deviceId},'0000',0);

CREATE TABLE Immunization(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Immunization','075',${deviceId},'0000',0);

CREATE TABLE ImmunizationEvaluation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ImmunizationEvaluation','076',${deviceId},'0000',0);

CREATE TABLE ImmunizationRecommendation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ImmunizationRecommendation','077',${deviceId},'0000',0);

CREATE TABLE ImplementationGuide(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ImplementationGuide','078',${deviceId},'0000',0);

CREATE TABLE InsurancePlan(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('InsurancePlan','079',${deviceId},'0000',0);

CREATE TABLE Invoice(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Invoice','07a',${deviceId},'0000',0);

CREATE TABLE Library(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Library','07b',${deviceId},'0000',0);

CREATE TABLE Linkage(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Linkage','07c',${deviceId},'0000',0);

CREATE TABLE List(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('List','07d',${deviceId},'0000',0);

CREATE TABLE Location(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Location','07e',${deviceId},'0000',0);

CREATE TABLE Measure(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Measure','07f',${deviceId},'0000',0);

CREATE TABLE MeasureReport(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MeasureReport','080',${deviceId},'0000',0);

CREATE TABLE Media(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Media','081',${deviceId},'0000',0);

CREATE TABLE Medication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Medication','082',${deviceId},'0000',0);

CREATE TABLE MedicationAdministration(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicationAdministration','083',${deviceId},'0000',0);

CREATE TABLE MedicationDispense(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicationDispense','084',${deviceId},'0000',0);

CREATE TABLE MedicationKnowledge(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicationKnowledge','085',${deviceId},'0000',0);

CREATE TABLE MedicationRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicationRequest','086',${deviceId},'0000',0);

CREATE TABLE MedicationStatement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicationStatement','087',${deviceId},'0000',0);

CREATE TABLE MedicinalProduct(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProduct','088',${deviceId},'0000',0);

CREATE TABLE MedicinalProductAuthorization(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductAuthorization','089',${deviceId},'0000',0);

CREATE TABLE MedicinalProductContraindication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductContraindication','08a',${deviceId},'0000',0);

CREATE TABLE MedicinalProductIndication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductIndication','08b',${deviceId},'0000',0);

CREATE TABLE MedicinalProductIngredient(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductIngredient','08c',${deviceId},'0000',0);

CREATE TABLE MedicinalProductInteraction(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductInteraction','08d',${deviceId},'0000',0);

CREATE TABLE MedicinalProductManufactured(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductManufactured','08e',${deviceId},'0000',0);

CREATE TABLE MedicinalProductPackaged(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductPackaged','08f',${deviceId},'0000',0);

CREATE TABLE MedicinalProductPharmaceutical(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductPharmaceutical','090',${deviceId},'0000',0);

CREATE TABLE MedicinalProductUndesirableEffect(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MedicinalProductUndesirableEffect','091',${deviceId},'0000',0);

CREATE TABLE MessageDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MessageDefinition','092',${deviceId},'0000',0);

CREATE TABLE MessageHeader(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MessageHeader','093',${deviceId},'0000',0);

CREATE TABLE MolecularSequence(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('MolecularSequence','094',${deviceId},'0000',0);

CREATE TABLE NamingSystem(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('NamingSystem','095',${deviceId},'0000',0);

CREATE TABLE NutritionOrder(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('NutritionOrder','096',${deviceId},'0000',0);

CREATE TABLE Observation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Observation','097',${deviceId},'0000',0);

CREATE TABLE ObservationDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ObservationDefinition','098',${deviceId},'0000',0);

CREATE TABLE OperationDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('OperationDefinition','099',${deviceId},'0000',0);

CREATE TABLE OperationOutcome(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('OperationOutcome','09a',${deviceId},'0000',0);

CREATE TABLE Organization(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Organization','09b',${deviceId},'0000',0);

CREATE TABLE OrganizationAffiliation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('OrganizationAffiliation','09c',${deviceId},'0000',0);

CREATE TABLE Parameters(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Parameters','09d',${deviceId},'0000',0);

CREATE TABLE Patient(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Patient','09e',${deviceId},'0000',0);

CREATE TABLE PaymentNotice(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('PaymentNotice','09f',${deviceId},'0000',0);

CREATE TABLE PaymentReconciliation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('PaymentReconciliation','0a0',${deviceId},'0000',0);

CREATE TABLE Person(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Person','0a1',${deviceId},'0000',0);

CREATE TABLE PlanDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('PlanDefinition','0a2',${deviceId},'0000',0);

CREATE TABLE Practitioner(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Practitioner','0a3',${deviceId},'0000',0);

CREATE TABLE PractitionerRole(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('PractitionerRole','0a4',${deviceId},'0000',0);

CREATE TABLE Procedure(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Procedure','0a5',${deviceId},'0000',0);

CREATE TABLE Provenance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Provenance','0a6',${deviceId},'0000',0);

CREATE TABLE Questionnaire(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Questionnaire','0a7',${deviceId},'0000',0);

CREATE TABLE QuestionnaireResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('QuestionnaireResponse','0a8',${deviceId},'0000',0);

CREATE TABLE RelatedPerson(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('RelatedPerson','0a9',${deviceId},'0000',0);

CREATE TABLE RequestGroup(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('RequestGroup','0aa',${deviceId},'0000',0);

CREATE TABLE ResearchDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ResearchDefinition','0ab',${deviceId},'0000',0);

CREATE TABLE ResearchElementDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ResearchElementDefinition','0ac',${deviceId},'0000',0);

CREATE TABLE ResearchStudy(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ResearchStudy','0ad',${deviceId},'0000',0);

CREATE TABLE ResearchSubject(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ResearchSubject','0ae',${deviceId},'0000',0);

CREATE TABLE RiskAssessment(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('RiskAssessment','0af',${deviceId},'0000',0);

CREATE TABLE RiskEvidenceSynthesis(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('RiskEvidenceSynthesis','0b0',${deviceId},'0000',0);

CREATE TABLE Schedule(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Schedule','0b1',${deviceId},'0000',0);

CREATE TABLE SearchParameter(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SearchParameter','0b2',${deviceId},'0000',0);

CREATE TABLE ServiceRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ServiceRequest','0b3',${deviceId},'0000',0);

CREATE TABLE Slot(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Slot','0b4',${deviceId},'0000',0);

CREATE TABLE Specimen(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Specimen','0b5',${deviceId},'0000',0);

CREATE TABLE SpecimenDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SpecimenDefinition','0b6',${deviceId},'0000',0);

CREATE TABLE StructureDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('StructureDefinition','0b7',${deviceId},'0000',0);

CREATE TABLE StructureMap(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('StructureMap','0b8',${deviceId},'0000',0);

CREATE TABLE Subscription(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Subscription','0b9',${deviceId},'0000',0);

CREATE TABLE Substance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Substance','0ba',${deviceId},'0000',0);

CREATE TABLE SubstanceNucleicAcid(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstanceNucleicAcid','0bb',${deviceId},'0000',0);

CREATE TABLE SubstancePolymer(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstancePolymer','0bc',${deviceId},'0000',0);

CREATE TABLE SubstanceProtein(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstanceProtein','0bd',${deviceId},'0000',0);

CREATE TABLE SubstanceReferenceInformation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstanceReferenceInformation','0be',${deviceId},'0000',0);

CREATE TABLE SubstanceSourceMaterial(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstanceSourceMaterial','0bf',${deviceId},'0000',0);

CREATE TABLE SubstanceSpecification(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SubstanceSpecification','0c0',${deviceId},'0000',0);

CREATE TABLE SupplyDelivery(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SupplyDelivery','0c1',${deviceId},'0000',0);

CREATE TABLE SupplyRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('SupplyRequest','0c2',${deviceId},'0000',0);

CREATE TABLE Task(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('Task','0c3',${deviceId},'0000',0);

CREATE TABLE TerminologyCapabilities(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('TerminologyCapabilities','0c4',${deviceId},'0000',0);

CREATE TABLE TestReport(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('TestReport','0c5',${deviceId},'0000',0);

CREATE TABLE TestScript(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('TestScript','0c6',${deviceId},'0000',0);

CREATE TABLE ValueSet(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('ValueSet','0c7',${deviceId},'0000',0);

CREATE TABLE VerificationResult(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('VerificationResult','0c8',${deviceId},'0000',0);

CREATE TABLE VisionPrescription(
	id TEXT PRIMARY KEY,
	json_resource TEXT
); 
INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES('VisionPrescription','0c9',${deviceId},'0000',0);

