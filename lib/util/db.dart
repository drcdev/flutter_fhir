import 'dart:io' as io;

import 'package:device_info/device_info.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "fhir.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    String deviceId = (androidInfo.id.hashCode % 10000).abs().toString();
    // When creating the db, create the table, master table holds last
    //id number for that resource from this device, also number of resources
    //total on this device
    await db.execute("CREATE TABLE Classes ("
        "resourceType TEXT PRIMARY KEY,"
        "id TEXT,"
        "deviceId TEXT,"
        "lastId TEXT,"
        "total INT"
        ")");
    //create other tables
    await db.execute(_createScript());
    await db.rawInsert(_insertScript(deviceId));
  }

  Future<String> newResourceId(String resource) async {
    var dbClient = await db;
    //get the info about the new resource
    var classInfo = await dbClient.query('Classes',
        where: 'resourceType LIKE (?)',
        whereArgs: ['$resource'],
        columns: ['id', 'deviceId', 'lastId', 'total']);

    //Create it's new lastId
    String newNum = (int.parse(classInfo[0]['lastId']) + 1).toString().padLeft(4, '0');
    //update value in database in master table
    var count = await dbClient.rawUpdate(
        'UPDATE Classes SET lastId = ? WHERE resourceType = ?',
        ['$newNum', '$resource']);

    //return newId
    return (classInfo[0]['id'] +
        '-' +
        classInfo[0]['deviceId'] +
        '-' +
        classInfo[0]['lastId']);
  }

  Future<int> saveResource(dynamic resource) async {
    var dbClient = await db;
    int res = await dbClient.insert(
        resource.runtimeType.toString(), resource.toJson());
    return res;
  }

  Future<bool> update(dynamic resource) async {
    var dbClient = await db;
    int res = await dbClient.update(
        resource.runtimeType.toString(), resource.toMap(),
        where: "id = ?", whereArgs: <int>[resource.id]);
    return res > 0 ? true : false;
  }

  Future<List<Map<String, dynamic>>> getResource(String table) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM ' + table);
    return list;
  }

  Future<int> deleteResource(dynamic resource) async {
    var dbClient = await db;
    int res = await dbClient.rawDelete(
        'DELETE FROM Classes WHERE resourceType = "${resource.resourceType}"');
    return res;
  }
}

String _createScript() {
  return ('''CREATE TABLE Element(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Extension(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Narrative(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Annotation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Attachment(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Identifier(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CodeableConcept(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Coding(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Quantity(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Duration(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Distance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Count(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Money(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Age(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Range(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Period(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Ratio(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Reference(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SampledData(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Signature(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE HumanName(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Address(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ContactPoint(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Timing(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Meta(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ContactDetail(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Contributor(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DataRequirement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ParameterDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE RelatedArtifact(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE TriggerDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE UsageContext(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Dosage(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Population(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ProductShelfLife(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ProdCharacteristic(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MarketingStatus(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstanceAmount(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Expression(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ElementDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Account(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ActivityDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE AdverseEvent(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE AllergyIntolerance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Appointment(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE AppointmentResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE AuditEvent(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Basic(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Binary(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE BiologicallyDerivedProduct(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE BodyStructure(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Bundle(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CapabilityStatement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CarePlan(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CareTeam(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CatalogEntry(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ChargeItem(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ChargeItemDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Claim(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ClaimResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ClinicalImpression(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CodeSystem(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Communication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CommunicationRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CompartmentDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Composition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ConceptMap(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Condition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Consent(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Contract(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Coverage(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CoverageEligibilityRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE CoverageEligibilityResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DetectedIssue(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Device(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DeviceDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DeviceMetric(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DeviceRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DeviceUseStatement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DiagnosticReport(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DocumentManifest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE DocumentReference(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE EffectEvidenceSynthesis(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Encounter(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Endpoint(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE EnrollmentRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE EnrollmentResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE EpisodeOfCare(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE EventDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Evidence(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE EvidenceVariable(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ExampleScenario(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ExplanationOfBenefit(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE FamilyMemberHistory(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Flag(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Goal(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE GraphDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Group(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE GuidanceResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE HealthcareService(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ImagingStudy(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Immunization(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ImmunizationEvaluation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ImmunizationRecommendation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ImplementationGuide(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE InsurancePlan(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Invoice(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Library(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Linkage(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE List(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Location(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Measure(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MeasureReport(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Media(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Medication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicationAdministration(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicationDispense(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicationKnowledge(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicationRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicationStatement(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProduct(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductAuthorization(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductContraindication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductIndication(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductIngredient(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductInteraction(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductManufactured(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductPackaged(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductPharmaceutical(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MedicinalProductUndesirableEffect(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MessageDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MessageHeader(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE MolecularSequence(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE NamingSystem(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE NutritionOrder(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Observation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ObservationDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE OperationDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE OperationOutcome(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Organization(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE OrganizationAffiliation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Parameters(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Patient(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE PaymentNotice(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE PaymentReconciliation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Person(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE PlanDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Practitioner(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE PractitionerRole(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Procedure(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Provenance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Questionnaire(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE QuestionnaireResponse(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE RelatedPerson(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE RequestGroup(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ResearchDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ResearchElementDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ResearchStudy(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ResearchSubject(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE RiskAssessment(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE RiskEvidenceSynthesis(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Schedule(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SearchParameter(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE ServiceRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Slot(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Specimen(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SpecimenDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE StructureDefinition(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE StructureMap(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Subscription(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Substance(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstanceNucleicAcid(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstancePolymer(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstanceProtein(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstanceReferenceInformation(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstanceSourceMaterial(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SubstanceSpecification(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SupplyDelivery(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE SupplyRequest(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE Task(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE TerminologyCapabilities(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE TestReport(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE TestScript(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE et(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE VerificationResult(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);
CREATE TABLE VisionPrescription(
	id TEXT PRIMARY KEY,
	json_resource TEXT
);''');
}

String _insertScript(String deviceId) {
  return ('''INSERT INTO Classes (resourceType, id, deviceId, lastId, total)
  VALUES
    ('Element','010','{$deviceId}','0000',0),
		('Extension','011','{$deviceId}','0000',0),
		('Narrative','012','{$deviceId}','0000',0),
		('Annotation','013','{$deviceId}','0000',0),
		('Attachment','014','{$deviceId}','0000',0),
		('Identifier','015','{$deviceId}','0000',0),
		('CodeableConcept','016','{$deviceId}','0000',0),
		('Coding','017','{$deviceId}','0000',0),
		('Quantity','018','{$deviceId}','0000',0),
		('Duration','019','{$deviceId}','0000',0),
		('Distance','01a','{$deviceId}','0000',0),
		('Count','01b','{$deviceId}','0000',0),
		('Money','01c','{$deviceId}','0000',0),
		('Age','01d','{$deviceId}','0000',0),
		('Range','01e','{$deviceId}','0000',0),
		('Period','01f','{$deviceId}','0000',0),
		('Ratio','020','{$deviceId}','0000',0),
		('Reference','021','{$deviceId}','0000',0),
		('SampledData','022','{$deviceId}','0000',0),
		('Signature','023','{$deviceId}','0000',0),
		('HumanName','024','{$deviceId}','0000',0),
		('Address','025','{$deviceId}','0000',0),
		('ContactPoint','026','{$deviceId}','0000',0),
		('Timing','027','{$deviceId}','0000',0),
		('Timing_Repeat','028','{$deviceId}','0000',0),
		('Meta','029','{$deviceId}','0000',0),
		('ContactDetail','02a','{$deviceId}','0000',0),
		('Contributor','02b','{$deviceId}','0000',0),
		('DataRequirement','02c','{$deviceId}','0000',0),
		('DataRequirement_CodeFilter','02d','{$deviceId}','0000',0),
		('DataRequirement_DateFilter','02e','{$deviceId}','0000',0),
		('DataRequirement_Sort','02f','{$deviceId}','0000',0),
		('ParameterDefinition','030','{$deviceId}','0000',0),
		('RelatedArtifact','031','{$deviceId}','0000',0),
		('TriggerDefinition','032','{$deviceId}','0000',0),
		('UsageContext','033','{$deviceId}','0000',0),
		('Dosage','034','{$deviceId}','0000',0),
		('Dosage_DoseAndRate','035','{$deviceId}','0000',0),
		('Population','036','{$deviceId}','0000',0),
		('ProductShelfLife','037','{$deviceId}','0000',0),
		('ProdCharacteristic','038','{$deviceId}','0000',0),
		('MarketingStatus','039','{$deviceId}','0000',0),
		('SubstanceAmount','03a','{$deviceId}','0000',0),
		('SubstanceAmount_ReferenceRange','03b','{$deviceId}','0000',0),
		('Expression','03c','{$deviceId}','0000',0),
		('ElementDefinition','03d','{$deviceId}','0000',0),
		('ElementDefinition_Slicing','03e','{$deviceId}','0000',0),
		('ElementDefinition_Discriminator','03f','{$deviceId}','0000',0),
		('ElementDefinition_Base','040','{$deviceId}','0000',0),
		('ElementDefinition_Type','041','{$deviceId}','0000',0),
		('ElementDefinition_Example','042','{$deviceId}','0000',0),
		('ElementDefinition_Constraint','043','{$deviceId}','0000',0),
		('ElementDefinition_Binding','044','{$deviceId}','0000',0),
		('ElementDefinition_Mapping','045','{$deviceId}','0000',0),
		('Account','046','{$deviceId}','0000',0),
		('Account_Coverage','047','{$deviceId}','0000',0),
		('Account_Guarantor','048','{$deviceId}','0000',0),
		('ActivityDefinition','049','{$deviceId}','0000',0),
		('ActivityDefinition_Participant','04a','{$deviceId}','0000',0),
		('ActivityDefinition_DynamicValue','04b','{$deviceId}','0000',0),
		('AdverseEvent','04c','{$deviceId}','0000',0),
		('AdverseEvent_SuspectEntity','04d','{$deviceId}','0000',0),
		('AdverseEvent_Causality','04e','{$deviceId}','0000',0),
		('AllergyIntolerance','04f','{$deviceId}','0000',0),
		('AllergyIntolerance_Reaction','050','{$deviceId}','0000',0),
		('Appointment','051','{$deviceId}','0000',0),
		('Appointment_Participant','052','{$deviceId}','0000',0),
		('AppointmentResponse','053','{$deviceId}','0000',0),
		('AuditEvent','054','{$deviceId}','0000',0),
		('AuditEvent_Agent','055','{$deviceId}','0000',0),
		('AuditEvent_Network','056','{$deviceId}','0000',0),
		('AuditEvent_Source','057','{$deviceId}','0000',0),
		('AuditEvent_Entity','058','{$deviceId}','0000',0),
		('AuditEvent_Detail','059','{$deviceId}','0000',0),
		('Basic','05a','{$deviceId}','0000',0),
		('Binary','05b','{$deviceId}','0000',0),
		('BiologicallyDerivedProduct','05c','{$deviceId}','0000',0),
		('BiologicallyDerivedProduct_Collection','05d','{$deviceId}','0000',0),
		('BiologicallyDerivedProduct_Processing','05e','{$deviceId}','0000',0),
		('BiologicallyDerivedProduct_Manipulation','05f','{$deviceId}','0000',0),
		('BiologicallyDerivedProduct_Storage','060','{$deviceId}','0000',0),
		('BodyStructure','061','{$deviceId}','0000',0),
		('Bundle','062','{$deviceId}','0000',0),
		('Bundle_Link','063','{$deviceId}','0000',0),
		('Bundle_Entry','064','{$deviceId}','0000',0),
		('Bundle_Search','065','{$deviceId}','0000',0),
		('Bundle_Request','066','{$deviceId}','0000',0),
		('Bundle_Response','067','{$deviceId}','0000',0),
		('CapabilityStatement','068','{$deviceId}','0000',0),
		('CapabilityStatement_Software','069','{$deviceId}','0000',0),
		('CapabilityStatement_Implementation','06a','{$deviceId}','0000',0),
		('CapabilityStatement_Rest','06b','{$deviceId}','0000',0),
		('CapabilityStatement_Security','06c','{$deviceId}','0000',0),
		('CapabilityStatement_Resource','06d','{$deviceId}','0000',0),
		('CapabilityStatement_Interaction','06e','{$deviceId}','0000',0),
		('CapabilityStatement_SearchParam','06f','{$deviceId}','0000',0),
		('CapabilityStatement_Operation','070','{$deviceId}','0000',0),
		('CapabilityStatement_Interaction1','071','{$deviceId}','0000',0),
		('CapabilityStatement_Messaging','072','{$deviceId}','0000',0),
		('CapabilityStatement_Endpoint','073','{$deviceId}','0000',0),
		('CapabilityStatement_SupportedMessage','074','{$deviceId}','0000',0),
		('CapabilityStatement_Document','075','{$deviceId}','0000',0),
		('CarePlan','076','{$deviceId}','0000',0),
		('CarePlan_Activity','077','{$deviceId}','0000',0),
		('CarePlan_Detail','078','{$deviceId}','0000',0),
		('CareTeam','079','{$deviceId}','0000',0),
		('CareTeam_Participant','07a','{$deviceId}','0000',0),
		('CatalogEntry','07b','{$deviceId}','0000',0),
		('CatalogEntry_RelatedEntry','07c','{$deviceId}','0000',0),
		('ChargeItem','07d','{$deviceId}','0000',0),
		('ChargeItem_Performer','07e','{$deviceId}','0000',0),
		('ChargeItemDefinition','07f','{$deviceId}','0000',0),
		('ChargeItemDefinition_Applicability','080','{$deviceId}','0000',0),
		('ChargeItemDefinition_PropertyGroup','081','{$deviceId}','0000',0),
		('ChargeItemDefinition_PriceComponent','082','{$deviceId}','0000',0),
		('Claim','083','{$deviceId}','0000',0),
		('Claim_Related','084','{$deviceId}','0000',0),
		('Claim_Payee','085','{$deviceId}','0000',0),
		('Claim_CareTeam','086','{$deviceId}','0000',0),
		('Claim_SupportingInfo','087','{$deviceId}','0000',0),
		('Claim_Diagnosis','088','{$deviceId}','0000',0),
		('Claim_Procedure','089','{$deviceId}','0000',0),
		('Claim_Insurance','08a','{$deviceId}','0000',0),
		('Claim_Accident','08b','{$deviceId}','0000',0),
		('Claim_Item','08c','{$deviceId}','0000',0),
		('Claim_Detail','08d','{$deviceId}','0000',0),
		('Claim_SubDetail','08e','{$deviceId}','0000',0),
		('ClaimResponse','08f','{$deviceId}','0000',0),
		('ClaimResponse_Item','090','{$deviceId}','0000',0),
		('ClaimResponse_Adjudication','091','{$deviceId}','0000',0),
		('ClaimResponse_Detail','092','{$deviceId}','0000',0),
		('ClaimResponse_SubDetail','093','{$deviceId}','0000',0),
		('ClaimResponse_AddItem','094','{$deviceId}','0000',0),
		('ClaimResponse_Detail1','095','{$deviceId}','0000',0),
		('ClaimResponse_SubDetail1','096','{$deviceId}','0000',0),
		('ClaimResponse_Total','097','{$deviceId}','0000',0),
		('ClaimResponse_Payment','098','{$deviceId}','0000',0),
		('ClaimResponse_ProcessNote','099','{$deviceId}','0000',0),
		('ClaimResponse_Insurance','09a','{$deviceId}','0000',0),
		('ClaimResponse_Error','09b','{$deviceId}','0000',0),
		('ClinicalImpression','09c','{$deviceId}','0000',0),
		('ClinicalImpression_Investigation','09d','{$deviceId}','0000',0),
		('ClinicalImpression_Finding','09e','{$deviceId}','0000',0),
		('CodeSystem','09f','{$deviceId}','0000',0),
		('CodeSystem_Filter','0a0','{$deviceId}','0000',0),
		('CodeSystem_Property','0a1','{$deviceId}','0000',0),
		('CodeSystem_Concept','0a2','{$deviceId}','0000',0),
		('CodeSystem_Designation','0a3','{$deviceId}','0000',0),
		('CodeSystem_Property1','0a4','{$deviceId}','0000',0),
		('Communication','0a5','{$deviceId}','0000',0),
		('Communication_Payload','0a6','{$deviceId}','0000',0),
		('CommunicationRequest','0a7','{$deviceId}','0000',0),
		('CommunicationRequest_Payload','0a8','{$deviceId}','0000',0),
		('CompartmentDefinition','0a9','{$deviceId}','0000',0),
		('CompartmentDefinition_Resource','0aa','{$deviceId}','0000',0),
		('Composition','0ab','{$deviceId}','0000',0),
		('Composition_Attester','0ac','{$deviceId}','0000',0),
		('Composition_RelatesTo','0ad','{$deviceId}','0000',0),
		('Composition_Event','0ae','{$deviceId}','0000',0),
		('Composition_Section','0af','{$deviceId}','0000',0),
		('ConceptMap','0b0','{$deviceId}','0000',0),
		('ConceptMap_Group','0b1','{$deviceId}','0000',0),
		('ConceptMap_Element','0b2','{$deviceId}','0000',0),
		('ConceptMap_Target','0b3','{$deviceId}','0000',0),
		('ConceptMap_DependsOn','0b4','{$deviceId}','0000',0),
		('ConceptMap_Unmapped','0b5','{$deviceId}','0000',0),
		('Condition','0b6','{$deviceId}','0000',0),
		('Condition_Stage','0b7','{$deviceId}','0000',0),
		('Condition_Evidence','0b8','{$deviceId}','0000',0),
		('Consent','0b9','{$deviceId}','0000',0),
		('Consent_Policy','0ba','{$deviceId}','0000',0),
		('Consent_Verification','0bb','{$deviceId}','0000',0),
		('Consent_Provision','0bc','{$deviceId}','0000',0),
		('Consent_Actor','0bd','{$deviceId}','0000',0),
		('Consent_Data','0be','{$deviceId}','0000',0),
		('Contract','0bf','{$deviceId}','0000',0),
		('Contract_ContentDefinition','0c0','{$deviceId}','0000',0),
		('Contract_Term','0c1','{$deviceId}','0000',0),
		('Contract_SecurityLabel','0c2','{$deviceId}','0000',0),
		('Contract_Offer','0c3','{$deviceId}','0000',0),
		('Contract_Party','0c4','{$deviceId}','0000',0),
		('Contract_Answer','0c5','{$deviceId}','0000',0),
		('Contract_Asset','0c6','{$deviceId}','0000',0),
		('Contract_Context','0c7','{$deviceId}','0000',0),
		('Contract_ValuedItem','0c8','{$deviceId}','0000',0),
		('Contract_Action','0c9','{$deviceId}','0000',0),
		('Contract_Subject','0ca','{$deviceId}','0000',0),
		('Contract_Signer','0cb','{$deviceId}','0000',0),
		('Contract_Friendly','0cc','{$deviceId}','0000',0),
		('Contract_Legal','0cd','{$deviceId}','0000',0),
		('Contract_Rule','0ce','{$deviceId}','0000',0),
		('Coverage','0cf','{$deviceId}','0000',0),
		('Coverage_Class','0d0','{$deviceId}','0000',0),
		('Coverage_CostToBeneficiary','0d1','{$deviceId}','0000',0),
		('Coverage_Exception','0d2','{$deviceId}','0000',0),
		('CoverageEligibilityRequest','0d3','{$deviceId}','0000',0),
		('CoverageEligibilityRequest_SupportingInfo','0d4','{$deviceId}','0000',0),
		('CoverageEligibilityRequest_Insurance','0d5','{$deviceId}','0000',0),
		('CoverageEligibilityRequest_Item','0d6','{$deviceId}','0000',0),
		('CoverageEligibilityRequest_Diagnosis','0d7','{$deviceId}','0000',0),
		('CoverageEligibilityResponse','0d8','{$deviceId}','0000',0),
		('CoverageEligibilityResponse_Insurance','0d9','{$deviceId}','0000',0),
		('CoverageEligibilityResponse_Item','0da','{$deviceId}','0000',0),
		('CoverageEligibilityResponse_Benefit','0db','{$deviceId}','0000',0),
		('CoverageEligibilityResponse_Error','0dc','{$deviceId}','0000',0),
		('DetectedIssue','0dd','{$deviceId}','0000',0),
		('DetectedIssue_Evidence','0de','{$deviceId}','0000',0),
		('DetectedIssue_Mitigation','0df','{$deviceId}','0000',0),
		('Device','0e0','{$deviceId}','0000',0),
		('Device_UdiCarrier','0e1','{$deviceId}','0000',0),
		('Device_DeviceName','0e2','{$deviceId}','0000',0),
		('Device_Specialization','0e3','{$deviceId}','0000',0),
		('Device_Version','0e4','{$deviceId}','0000',0),
		('Device_Property','0e5','{$deviceId}','0000',0),
		('DeviceDefinition','0e6','{$deviceId}','0000',0),
		('DeviceDefinition_UdiDeviceIdentifier','0e7','{$deviceId}','0000',0),
		('DeviceDefinition_DeviceName','0e8','{$deviceId}','0000',0),
		('DeviceDefinition_Specialization','0e9','{$deviceId}','0000',0),
		('DeviceDefinition_Capability','0ea','{$deviceId}','0000',0),
		('DeviceDefinition_Property','0eb','{$deviceId}','0000',0),
		('DeviceDefinition_Material','0ec','{$deviceId}','0000',0),
		('DeviceMetric','0ed','{$deviceId}','0000',0),
		('DeviceMetric_Calibration','0ee','{$deviceId}','0000',0),
		('DeviceRequest','0ef','{$deviceId}','0000',0),
		('DeviceRequest_Parameter','0f0','{$deviceId}','0000',0),
		('DeviceUseStatement','0f1','{$deviceId}','0000',0),
		('DiagnosticReport','0f2','{$deviceId}','0000',0),
		('DiagnosticReport_Media','0f3','{$deviceId}','0000',0),
		('DocumentManifest','0f4','{$deviceId}','0000',0),
		('DocumentManifest_Related','0f5','{$deviceId}','0000',0),
		('DocumentReference','0f6','{$deviceId}','0000',0),
		('DocumentReference_RelatesTo','0f7','{$deviceId}','0000',0),
		('DocumentReference_Content','0f8','{$deviceId}','0000',0),
		('DocumentReference_Context','0f9','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis','0fa','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis_SampleSize','0fb','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis_ResultsByExposure','0fc','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis_EffectEstimate','0fd','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis_PrecisionEstimate','0fe','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis_Certainty','0ff','{$deviceId}','0000',0),
		('EffectEvidenceSynthesis_CertaintySubcomponent','100','{$deviceId}','0000',0),
		('Encounter','101','{$deviceId}','0000',0),
		('Encounter_StatusHistory','102','{$deviceId}','0000',0),
		('Encounter_ClassHistory','103','{$deviceId}','0000',0),
		('Encounter_Participant','104','{$deviceId}','0000',0),
		('Encounter_Diagnosis','105','{$deviceId}','0000',0),
		('Encounter_Hospitalization','106','{$deviceId}','0000',0),
		('Encounter_Location','107','{$deviceId}','0000',0),
		('Endpoint','108','{$deviceId}','0000',0),
		('EnrollmentRequest','109','{$deviceId}','0000',0),
		('EnrollmentResponse','10a','{$deviceId}','0000',0),
		('EpisodeOfCare','10b','{$deviceId}','0000',0),
		('EpisodeOfCare_StatusHistory','10c','{$deviceId}','0000',0),
		('EpisodeOfCare_Diagnosis','10d','{$deviceId}','0000',0),
		('EventDefinition','10e','{$deviceId}','0000',0),
		('Evidence','10f','{$deviceId}','0000',0),
		('EvidenceVariable','110','{$deviceId}','0000',0),
		('EvidenceVariable_Characteristic','111','{$deviceId}','0000',0),
		('ExampleScenario','112','{$deviceId}','0000',0),
		('ExampleScenario_Actor','113','{$deviceId}','0000',0),
		('ExampleScenario_Instance','114','{$deviceId}','0000',0),
		('ExampleScenario_Version','115','{$deviceId}','0000',0),
		('ExampleScenario_ContainedInstance','116','{$deviceId}','0000',0),
		('ExampleScenario_Process','117','{$deviceId}','0000',0),
		('ExampleScenario_Step','118','{$deviceId}','0000',0),
		('ExampleScenario_Operation','119','{$deviceId}','0000',0),
		('ExampleScenario_Alternative','11a','{$deviceId}','0000',0),
		('ExplanationOfBenefit','11b','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Related','11c','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Payee','11d','{$deviceId}','0000',0),
		('ExplanationOfBenefit_CareTeam','11e','{$deviceId}','0000',0),
		('ExplanationOfBenefit_SupportingInfo','11f','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Diagnosis','120','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Procedure','121','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Insurance','122','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Accident','123','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Item','124','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Adjudication','125','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Detail','126','{$deviceId}','0000',0),
		('ExplanationOfBenefit_SubDetail','127','{$deviceId}','0000',0),
		('ExplanationOfBenefit_AddItem','128','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Detail1','129','{$deviceId}','0000',0),
		('ExplanationOfBenefit_SubDetail1','12a','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Total','12b','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Payment','12c','{$deviceId}','0000',0),
		('ExplanationOfBenefit_ProcessNote','12d','{$deviceId}','0000',0),
		('ExplanationOfBenefit_BenefitBalance','12e','{$deviceId}','0000',0),
		('ExplanationOfBenefit_Financial','12f','{$deviceId}','0000',0),
		('FamilyMemberHistory','130','{$deviceId}','0000',0),
		('FamilyMemberHistory_Condition','131','{$deviceId}','0000',0),
		('Flag','132','{$deviceId}','0000',0),
		('Goal','133','{$deviceId}','0000',0),
		('Goal_Target','134','{$deviceId}','0000',0),
		('GraphDefinition','135','{$deviceId}','0000',0),
		('GraphDefinition_Link','136','{$deviceId}','0000',0),
		('GraphDefinition_Target','137','{$deviceId}','0000',0),
		('GraphDefinition_Compartment','138','{$deviceId}','0000',0),
		('Group','139','{$deviceId}','0000',0),
		('Group_Characteristic','13a','{$deviceId}','0000',0),
		('Group_Member','13b','{$deviceId}','0000',0),
		('GuidanceResponse','13c','{$deviceId}','0000',0),
		('HealthcareService','13d','{$deviceId}','0000',0),
		('HealthcareService_Eligibility','13e','{$deviceId}','0000',0),
		('HealthcareService_AvailableTime','13f','{$deviceId}','0000',0),
		('HealthcareService_NotAvailable','140','{$deviceId}','0000',0),
		('ImagingStudy','141','{$deviceId}','0000',0),
		('ImagingStudy_Series','142','{$deviceId}','0000',0),
		('ImagingStudy_Performer','143','{$deviceId}','0000',0),
		('ImagingStudy_Instance','144','{$deviceId}','0000',0),
		('Immunization','145','{$deviceId}','0000',0),
		('Immunization_Performer','146','{$deviceId}','0000',0),
		('Immunization_Education','147','{$deviceId}','0000',0),
		('Immunization_Reaction','148','{$deviceId}','0000',0),
		('Immunization_ProtocolApplied','149','{$deviceId}','0000',0),
		('ImmunizationEvaluation','14a','{$deviceId}','0000',0),
		('ImmunizationRecommendation','14b','{$deviceId}','0000',0),
		('ImmunizationRecommendation_Recommendation','14c','{$deviceId}','0000',0),
		('ImmunizationRecommendation_DateCriterion','14d','{$deviceId}','0000',0),
		('ImplementationGuide','14e','{$deviceId}','0000',0),
		('ImplementationGuide_DependsOn','14f','{$deviceId}','0000',0),
		('ImplementationGuide_Global','150','{$deviceId}','0000',0),
		('ImplementationGuide_Definition','151','{$deviceId}','0000',0),
		('ImplementationGuide_Grouping','152','{$deviceId}','0000',0),
		('ImplementationGuide_Resource','153','{$deviceId}','0000',0),
		('ImplementationGuide_Page','154','{$deviceId}','0000',0),
		('ImplementationGuide_Parameter','155','{$deviceId}','0000',0),
		('ImplementationGuide_Template','156','{$deviceId}','0000',0),
		('ImplementationGuide_Manifest','157','{$deviceId}','0000',0),
		('ImplementationGuide_Resource1','158','{$deviceId}','0000',0),
		('ImplementationGuide_Page1','159','{$deviceId}','0000',0),
		('InsurancePlan','15a','{$deviceId}','0000',0),
		('InsurancePlan_Contact','15b','{$deviceId}','0000',0),
		('InsurancePlan_Coverage','15c','{$deviceId}','0000',0),
		('InsurancePlan_Benefit','15d','{$deviceId}','0000',0),
		('InsurancePlan_Limit','15e','{$deviceId}','0000',0),
		('InsurancePlan_Plan','15f','{$deviceId}','0000',0),
		('InsurancePlan_GeneralCost','160','{$deviceId}','0000',0),
		('InsurancePlan_SpecificCost','161','{$deviceId}','0000',0),
		('InsurancePlan_Benefit1','162','{$deviceId}','0000',0),
		('InsurancePlan_Cost','163','{$deviceId}','0000',0),
		('Invoice','164','{$deviceId}','0000',0),
		('Invoice_Participant','165','{$deviceId}','0000',0),
		('Invoice_LineItem','166','{$deviceId}','0000',0),
		('Invoice_PriceComponent','167','{$deviceId}','0000',0),
		('Library','168','{$deviceId}','0000',0),
		('Linkage','169','{$deviceId}','0000',0),
		('Linkage_Item','16a','{$deviceId}','0000',0),
		('List','16b','{$deviceId}','0000',0),
		('List_Entry','16c','{$deviceId}','0000',0),
		('Location','16d','{$deviceId}','0000',0),
		('Location_Position','16e','{$deviceId}','0000',0),
		('Location_HoursOfOperation','16f','{$deviceId}','0000',0),
		('Measure','170','{$deviceId}','0000',0),
		('Measure_Group','171','{$deviceId}','0000',0),
		('Measure_Population','172','{$deviceId}','0000',0),
		('Measure_Stratifier','173','{$deviceId}','0000',0),
		('Measure_Component','174','{$deviceId}','0000',0),
		('Measure_SupplementalData','175','{$deviceId}','0000',0),
		('MeasureReport','176','{$deviceId}','0000',0),
		('MeasureReport_Group','177','{$deviceId}','0000',0),
		('MeasureReport_Population','178','{$deviceId}','0000',0),
		('MeasureReport_Stratifier','179','{$deviceId}','0000',0),
		('MeasureReport_Stratum','17a','{$deviceId}','0000',0),
		('MeasureReport_Component','17b','{$deviceId}','0000',0),
		('MeasureReport_Population1','17c','{$deviceId}','0000',0),
		('Media','17d','{$deviceId}','0000',0),
		('Medication','17e','{$deviceId}','0000',0),
		('Medication_Ingredient','17f','{$deviceId}','0000',0),
		('Medication_Batch','180','{$deviceId}','0000',0),
		('MedicationAdministration','181','{$deviceId}','0000',0),
		('MedicationAdministration_Performer','182','{$deviceId}','0000',0),
		('MedicationAdministration_Dosage','183','{$deviceId}','0000',0),
		('MedicationDispense','184','{$deviceId}','0000',0),
		('MedicationDispense_Performer','185','{$deviceId}','0000',0),
		('MedicationDispense_Substitution','186','{$deviceId}','0000',0),
		('MedicationKnowledge','187','{$deviceId}','0000',0),
		('MedicationKnowledge_RelatedMedicationKnowledge','188','{$deviceId}','0000',0),
		('MedicationKnowledge_Monograph','189','{$deviceId}','0000',0),
		('MedicationKnowledge_Ingredient','18a','{$deviceId}','0000',0),
		('MedicationKnowledge_Cost','18b','{$deviceId}','0000',0),
		('MedicationKnowledge_MonitoringProgram','18c','{$deviceId}','0000',0),
		('MedicationKnowledge_AdministrationGuidelines','18d','{$deviceId}','0000',0),
		('MedicationKnowledge_Dosage','18e','{$deviceId}','0000',0),
		('MedicationKnowledge_PatientCharacteristics','18f','{$deviceId}','0000',0),
		('MedicationKnowledge_MedicineClassification','190','{$deviceId}','0000',0),
		('MedicationKnowledge_Packaging','191','{$deviceId}','0000',0),
		('MedicationKnowledge_DrugCharacteristic','192','{$deviceId}','0000',0),
		('MedicationKnowledge_Regulatory','193','{$deviceId}','0000',0),
		('MedicationKnowledge_Substitution','194','{$deviceId}','0000',0),
		('MedicationKnowledge_Schedule','195','{$deviceId}','0000',0),
		('MedicationKnowledge_MaxDispense','196','{$deviceId}','0000',0),
		('MedicationKnowledge_Kinetics','197','{$deviceId}','0000',0),
		('MedicationRequest','198','{$deviceId}','0000',0),
		('MedicationRequest_DispenseRequest','199','{$deviceId}','0000',0),
		('MedicationRequest_InitialFill','19a','{$deviceId}','0000',0),
		('MedicationRequest_Substitution','19b','{$deviceId}','0000',0),
		('MedicationStatement','19c','{$deviceId}','0000',0),
		('MedicinalProduct','19d','{$deviceId}','0000',0),
		('MedicinalProduct_Name','19e','{$deviceId}','0000',0),
		('MedicinalProduct_NamePart','19f','{$deviceId}','0000',0),
		('MedicinalProduct_CountryLanguage','1a0','{$deviceId}','0000',0),
		('MedicinalProduct_ManufacturingBusinessOperation','1a1','{$deviceId}','0000',0),
		('MedicinalProduct_SpecialDesignation','1a2','{$deviceId}','0000',0),
		('MedicinalProductAuthorization','1a3','{$deviceId}','0000',0),
		('MedicinalProductAuthorization_JurisdictionalAuthorization','1a4','{$deviceId}','0000',0),
		('MedicinalProductAuthorization_Procedure','1a5','{$deviceId}','0000',0),
		('MedicinalProductContraindication','1a6','{$deviceId}','0000',0),
		('MedicinalProductContraindication_OtherTherapy','1a7','{$deviceId}','0000',0),
		('MedicinalProductIndication','1a8','{$deviceId}','0000',0),
		('MedicinalProductIndication_OtherTherapy','1a9','{$deviceId}','0000',0),
		('MedicinalProductIngredient','1aa','{$deviceId}','0000',0),
		('MedicinalProductIngredient_SpecifiedSubstance','1ab','{$deviceId}','0000',0),
		('MedicinalProductIngredient_Strength','1ac','{$deviceId}','0000',0),
		('MedicinalProductIngredient_ReferenceStrength','1ad','{$deviceId}','0000',0),
		('MedicinalProductIngredient_Substance','1ae','{$deviceId}','0000',0),
		('MedicinalProductInteraction','1af','{$deviceId}','0000',0),
		('MedicinalProductInteraction_Interactant','1b0','{$deviceId}','0000',0),
		('MedicinalProductManufactured','1b1','{$deviceId}','0000',0),
		('MedicinalProductPackaged','1b2','{$deviceId}','0000',0),
		('MedicinalProductPackaged_BatchIdentifier','1b3','{$deviceId}','0000',0),
		('MedicinalProductPackaged_PackageItem','1b4','{$deviceId}','0000',0),
		('MedicinalProductPharmaceutical','1b5','{$deviceId}','0000',0),
		('MedicinalProductPharmaceutical_Characteristics','1b6','{$deviceId}','0000',0),
		('MedicinalProductPharmaceutical_RouteOfAdministration','1b7','{$deviceId}','0000',0),
		('MedicinalProductPharmaceutical_TargetSpecies','1b8','{$deviceId}','0000',0),
		('MedicinalProductPharmaceutical_WithdrawalPeriod','1b9','{$deviceId}','0000',0),
		('MedicinalProductUndesirableEffect','1ba','{$deviceId}','0000',0),
		('MessageDefinition','1bb','{$deviceId}','0000',0),
		('MessageDefinition_Focus','1bc','{$deviceId}','0000',0),
		('MessageDefinition_AllowedResponse','1bd','{$deviceId}','0000',0),
		('MessageHeader','1be','{$deviceId}','0000',0),
		('MessageHeader_Destination','1bf','{$deviceId}','0000',0),
		('MessageHeader_Source','1c0','{$deviceId}','0000',0),
		('MessageHeader_Response','1c1','{$deviceId}','0000',0),
		('MolecularSequence','1c2','{$deviceId}','0000',0),
		('MolecularSequence_ReferenceSeq','1c3','{$deviceId}','0000',0),
		('MolecularSequence_Variant','1c4','{$deviceId}','0000',0),
		('MolecularSequence_Quality','1c5','{$deviceId}','0000',0),
		('MolecularSequence_Roc','1c6','{$deviceId}','0000',0),
		('MolecularSequence_Repository','1c7','{$deviceId}','0000',0),
		('MolecularSequence_StructureVariant','1c8','{$deviceId}','0000',0),
		('MolecularSequence_Outer','1c9','{$deviceId}','0000',0),
		('MolecularSequence_Inner','1ca','{$deviceId}','0000',0),
		('NamingSystem','1cb','{$deviceId}','0000',0),
		('NamingSystem_UniqueId','1cc','{$deviceId}','0000',0),
		('NutritionOrder','1cd','{$deviceId}','0000',0),
		('NutritionOrder_OralDiet','1ce','{$deviceId}','0000',0),
		('NutritionOrder_Nutrient','1cf','{$deviceId}','0000',0),
		('NutritionOrder_Texture','1d0','{$deviceId}','0000',0),
		('NutritionOrder_Supplement','1d1','{$deviceId}','0000',0),
		('NutritionOrder_EnteralFormula','1d2','{$deviceId}','0000',0),
		('NutritionOrder_Administration','1d3','{$deviceId}','0000',0),
		('Observation','1d4','{$deviceId}','0000',0),
		('Observation_ReferenceRange','1d5','{$deviceId}','0000',0),
		('Observation_Component','1d6','{$deviceId}','0000',0),
		('ObservationDefinition','1d7','{$deviceId}','0000',0),
		('ObservationDefinition_QuantitativeDetails','1d8','{$deviceId}','0000',0),
		('ObservationDefinition_QualifiedInterval','1d9','{$deviceId}','0000',0),
		('OperationDefinition','1da','{$deviceId}','0000',0),
		('OperationDefinition_Parameter','1db','{$deviceId}','0000',0),
		('OperationDefinition_Binding','1dc','{$deviceId}','0000',0),
		('OperationDefinition_ReferencedFrom','1dd','{$deviceId}','0000',0),
		('OperationDefinition_Overload','1de','{$deviceId}','0000',0),
		('OperationOutcome','1df','{$deviceId}','0000',0),
		('OperationOutcome_Issue','1e0','{$deviceId}','0000',0),
		('Organization','1e1','{$deviceId}','0000',0),
		('Organization_Contact','1e2','{$deviceId}','0000',0),
		('OrganizationAffiliation','1e3','{$deviceId}','0000',0),
		('Parameters','1e4','{$deviceId}','0000',0),
		('Parameters_Parameter','1e5','{$deviceId}','0000',0),
		('Patient','1e6','{$deviceId}','0000',0),
		('Patient_Contact','1e7','{$deviceId}','0000',0),
		('Patient_Communication','1e8','{$deviceId}','0000',0),
		('Patient_Link','1e9','{$deviceId}','0000',0),
		('PaymentNotice','1ea','{$deviceId}','0000',0),
		('PaymentReconciliation','1eb','{$deviceId}','0000',0),
		('PaymentReconciliation_Detail','1ec','{$deviceId}','0000',0),
		('PaymentReconciliation_ProcessNote','1ed','{$deviceId}','0000',0),
		('Person','1ee','{$deviceId}','0000',0),
		('Person_Link','1ef','{$deviceId}','0000',0),
		('PlanDefinition','1f0','{$deviceId}','0000',0),
		('PlanDefinition_Goal','1f1','{$deviceId}','0000',0),
		('PlanDefinition_Target','1f2','{$deviceId}','0000',0),
		('PlanDefinition_Action','1f3','{$deviceId}','0000',0),
		('PlanDefinition_Condition','1f4','{$deviceId}','0000',0),
		('PlanDefinition_RelatedAction','1f5','{$deviceId}','0000',0),
		('PlanDefinition_Participant','1f6','{$deviceId}','0000',0),
		('PlanDefinition_DynamicValue','1f7','{$deviceId}','0000',0),
		('Practitioner','1f8','{$deviceId}','0000',0),
		('Practitioner_Qualification','1f9','{$deviceId}','0000',0),
		('PractitionerRole','1fa','{$deviceId}','0000',0),
		('PractitionerRole_AvailableTime','1fb','{$deviceId}','0000',0),
		('PractitionerRole_NotAvailable','1fc','{$deviceId}','0000',0),
		('Procedure','1fd','{$deviceId}','0000',0),
		('Procedure_Performer','1fe','{$deviceId}','0000',0),
		('Procedure_FocalDevice','1ff','{$deviceId}','0000',0),
		('Provenance','200','{$deviceId}','0000',0),
		('Provenance_Agent','201','{$deviceId}','0000',0),
		('Provenance_Entity','202','{$deviceId}','0000',0),
		('Questionnaire','203','{$deviceId}','0000',0),
		('Questionnaire_Item','204','{$deviceId}','0000',0),
		('Questionnaire_EnableWhen','205','{$deviceId}','0000',0),
		('Questionnaire_AnswerOption','206','{$deviceId}','0000',0),
		('Questionnaire_Initial','207','{$deviceId}','0000',0),
		('QuestionnaireResponse','208','{$deviceId}','0000',0),
		('QuestionnaireResponse_Item','209','{$deviceId}','0000',0),
		('QuestionnaireResponse_Answer','20a','{$deviceId}','0000',0),
		('RelatedPerson','20b','{$deviceId}','0000',0),
		('RelatedPerson_Communication','20c','{$deviceId}','0000',0),
		('RequestGroup','20d','{$deviceId}','0000',0),
		('RequestGroup_Action','20e','{$deviceId}','0000',0),
		('RequestGroup_Condition','20f','{$deviceId}','0000',0),
		('RequestGroup_RelatedAction','210','{$deviceId}','0000',0),
		('ResearchDefinition','211','{$deviceId}','0000',0),
		('ResearchElementDefinition','212','{$deviceId}','0000',0),
		('ResearchElementDefinition_Characteristic','213','{$deviceId}','0000',0),
		('ResearchStudy','214','{$deviceId}','0000',0),
		('ResearchStudy_Arm','215','{$deviceId}','0000',0),
		('ResearchStudy_Objective','216','{$deviceId}','0000',0),
		('ResearchSubject','217','{$deviceId}','0000',0),
		('RiskAssessment','218','{$deviceId}','0000',0),
		('RiskAssessment_Prediction','219','{$deviceId}','0000',0),
		('RiskEvidenceSynthesis','21a','{$deviceId}','0000',0),
		('RiskEvidenceSynthesis_SampleSize','21b','{$deviceId}','0000',0),
		('RiskEvidenceSynthesis_RiskEstimate','21c','{$deviceId}','0000',0),
		('RiskEvidenceSynthesis_PrecisionEstimate','21d','{$deviceId}','0000',0),
		('RiskEvidenceSynthesis_Certainty','21e','{$deviceId}','0000',0),
		('RiskEvidenceSynthesis_CertaintySubcomponent','21f','{$deviceId}','0000',0),
		('Schedule','220','{$deviceId}','0000',0),
		('SearchParameter','221','{$deviceId}','0000',0),
		('SearchParameter_Component','222','{$deviceId}','0000',0),
		('ServiceRequest','223','{$deviceId}','0000',0),
		('Slot','224','{$deviceId}','0000',0),
		('Specimen','225','{$deviceId}','0000',0),
		('Specimen_Collection','226','{$deviceId}','0000',0),
		('Specimen_Processing','227','{$deviceId}','0000',0),
		('Specimen_Container','228','{$deviceId}','0000',0),
		('SpecimenDefinition','229','{$deviceId}','0000',0),
		('SpecimenDefinition_TypeTested','22a','{$deviceId}','0000',0),
		('SpecimenDefinition_Container','22b','{$deviceId}','0000',0),
		('SpecimenDefinition_Additive','22c','{$deviceId}','0000',0),
		('SpecimenDefinition_Handling','22d','{$deviceId}','0000',0),
		('StructureDefinition','22e','{$deviceId}','0000',0),
		('StructureDefinition_Mapping','22f','{$deviceId}','0000',0),
		('StructureDefinition_Context','230','{$deviceId}','0000',0),
		('StructureDefinition_Snapshot','231','{$deviceId}','0000',0),
		('StructureDefinition_Differential','232','{$deviceId}','0000',0),
		('StructureMap','233','{$deviceId}','0000',0),
		('StructureMap_Structure','234','{$deviceId}','0000',0),
		('StructureMap_Group','235','{$deviceId}','0000',0),
		('StructureMap_Input','236','{$deviceId}','0000',0),
		('StructureMap_Rule','237','{$deviceId}','0000',0),
		('StructureMap_Source','238','{$deviceId}','0000',0),
		('StructureMap_Target','239','{$deviceId}','0000',0),
		('StructureMap_Parameter','23a','{$deviceId}','0000',0),
		('StructureMap_Dependent','23b','{$deviceId}','0000',0),
		('Subscription','23c','{$deviceId}','0000',0),
		('Subscription_Channel','23d','{$deviceId}','0000',0),
		('Substance','23e','{$deviceId}','0000',0),
		('Substance_Instance','23f','{$deviceId}','0000',0),
		('Substance_Ingredient','240','{$deviceId}','0000',0),
		('SubstanceNucleicAcid','241','{$deviceId}','0000',0),
		('SubstanceNucleicAcid_Subunit','242','{$deviceId}','0000',0),
		('SubstanceNucleicAcid_Linkage','243','{$deviceId}','0000',0),
		('SubstanceNucleicAcid_Sugar','244','{$deviceId}','0000',0),
		('SubstancePolymer','245','{$deviceId}','0000',0),
		('SubstancePolymer_MonomerSet','246','{$deviceId}','0000',0),
		('SubstancePolymer_StartingMaterial','247','{$deviceId}','0000',0),
		('SubstancePolymer_Repeat','248','{$deviceId}','0000',0),
		('SubstancePolymer_RepeatUnit','249','{$deviceId}','0000',0),
		('SubstancePolymer_DegreeOfPolymerisation','24a','{$deviceId}','0000',0),
		('SubstancePolymer_StructuralRepresentation','24b','{$deviceId}','0000',0),
		('SubstanceProtein','24c','{$deviceId}','0000',0),
		('SubstanceProtein_Subunit','24d','{$deviceId}','0000',0),
		('SubstanceReferenceInformation','24e','{$deviceId}','0000',0),
		('SubstanceReferenceInformation_Gene','24f','{$deviceId}','0000',0),
		('SubstanceReferenceInformation_GeneElement','250','{$deviceId}','0000',0),
		('SubstanceReferenceInformation_Classification','251','{$deviceId}','0000',0),
		('SubstanceReferenceInformation_Target','252','{$deviceId}','0000',0),
		('SubstanceSourceMaterial','253','{$deviceId}','0000',0),
		('SubstanceSourceMaterial_FractionDescription','254','{$deviceId}','0000',0),
		('SubstanceSourceMaterial_Organism','255','{$deviceId}','0000',0),
		('SubstanceSourceMaterial_Author','256','{$deviceId}','0000',0),
		('SubstanceSourceMaterial_Hybrid','257','{$deviceId}','0000',0),
		('SubstanceSourceMaterial_OrganismGeneral','258','{$deviceId}','0000',0),
		('SubstanceSourceMaterial_PartDescription','259','{$deviceId}','0000',0),
		('SubstanceSpecification','25a','{$deviceId}','0000',0),
		('SubstanceSpecification_Moiety','25b','{$deviceId}','0000',0),
		('SubstanceSpecification_Property','25c','{$deviceId}','0000',0),
		('SubstanceSpecification_Structure','25d','{$deviceId}','0000',0),
		('SubstanceSpecification_Isotope','25e','{$deviceId}','0000',0),
		('SubstanceSpecification_MolecularWeight','25f','{$deviceId}','0000',0),
		('SubstanceSpecification_Representation','260','{$deviceId}','0000',0),
		('SubstanceSpecification_Code','261','{$deviceId}','0000',0),
		('SubstanceSpecification_Name','262','{$deviceId}','0000',0),
		('SubstanceSpecification_Official','263','{$deviceId}','0000',0),
		('SubstanceSpecification_Relationship','264','{$deviceId}','0000',0),
		('SupplyDelivery','265','{$deviceId}','0000',0),
		('SupplyDelivery_SuppliedItem','266','{$deviceId}','0000',0),
		('SupplyRequest','267','{$deviceId}','0000',0),
		('SupplyRequest_Parameter','268','{$deviceId}','0000',0),
		('Task','269','{$deviceId}','0000',0),
		('Task_Restriction','26a','{$deviceId}','0000',0),
		('Task_Input','26b','{$deviceId}','0000',0),
		('Task_Output','26c','{$deviceId}','0000',0),
		('TerminologyCapabilities','26d','{$deviceId}','0000',0),
		('TerminologyCapabilities_Software','26e','{$deviceId}','0000',0),
		('TerminologyCapabilities_Implementation','26f','{$deviceId}','0000',0),
		('TerminologyCapabilities_CodeSystem','270','{$deviceId}','0000',0),
		('TerminologyCapabilities_Version','271','{$deviceId}','0000',0),
		('TerminologyCapabilities_Filter','272','{$deviceId}','0000',0),
		('TerminologyCapabilities_Expansion','273','{$deviceId}','0000',0),
		('TerminologyCapabilities_Parameter','274','{$deviceId}','0000',0),
		('TerminologyCapabilities_ValidateCode','275','{$deviceId}','0000',0),
		('TerminologyCapabilities_Translation','276','{$deviceId}','0000',0),
		('TerminologyCapabilities_Closure','277','{$deviceId}','0000',0),
		('TestReport','278','{$deviceId}','0000',0),
		('TestReport_Participant','279','{$deviceId}','0000',0),
		('TestReport_Setup','27a','{$deviceId}','0000',0),
		('TestReport_Action','27b','{$deviceId}','0000',0),
		('TestReport_Operation','27c','{$deviceId}','0000',0),
		('TestReport_Assert','27d','{$deviceId}','0000',0),
		('TestReport_Test','27e','{$deviceId}','0000',0),
		('TestReport_Action1','27f','{$deviceId}','0000',0),
		('TestReport_Teardown','280','{$deviceId}','0000',0),
		('TestReport_Action2','281','{$deviceId}','0000',0),
		('TestScript','282','{$deviceId}','0000',0),
		('TestScript_Origin','283','{$deviceId}','0000',0),
		('TestScript_Destination','284','{$deviceId}','0000',0),
		('TestScript_Metadata','285','{$deviceId}','0000',0),
		('TestScript_Link','286','{$deviceId}','0000',0),
		('TestScript_Capability','287','{$deviceId}','0000',0),
		('TestScript_Fixture','288','{$deviceId}','0000',0),
		('TestScript_Variable','289','{$deviceId}','0000',0),
		('TestScript_Setup','28a','{$deviceId}','0000',0),
		('TestScript_Action','28b','{$deviceId}','0000',0),
		('TestScript_Operation','28c','{$deviceId}','0000',0),
		('TestScript_RequestHeader','28d','{$deviceId}','0000',0),
		('TestScript_Assert','28e','{$deviceId}','0000',0),
		('TestScript_Test','28f','{$deviceId}','0000',0),
		('TestScript_Action1','290','{$deviceId}','0000',0),
		('TestScript_Teardown','291','{$deviceId}','0000',0),
		('TestScript_Action2','292','{$deviceId}','0000',0),
		('ValueSet','293','{$deviceId}','0000',0),
		('ValueSet_Compose','294','{$deviceId}','0000',0),
		('ValueSet_Include','295','{$deviceId}','0000',0),
		('ValueSet_Concept','296','{$deviceId}','0000',0),
		('ValueSet_Designation','297','{$deviceId}','0000',0),
		('ValueSet_Filter','298','{$deviceId}','0000',0),
		('ValueSet_Expansion','299','{$deviceId}','0000',0),
		('ValueSet_Parameter','29a','{$deviceId}','0000',0),
		('ValueSet_Contains','29b','{$deviceId}','0000',0),
		('VerificationResult','29c','{$deviceId}','0000',0),
		('VerificationResult_PrimarySource','29d','{$deviceId}','0000',0),
		('VerificationResult_Attestation','29e','{$deviceId}','0000',0),
		('VerificationResult_Validator','29f','{$deviceId}','0000',0),
		('VisionPrescription','2a0','{$deviceId}','0000',0),
		('VisionPrescription_LensSpecification','2a1','{$deviceId}','0000',0),
		('VisionPrescription_Prism','2a2','{$deviceId}','0000',0)
''');
}
