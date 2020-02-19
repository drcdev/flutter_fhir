import 'dart:convert';
import 'dart:io';
import 'dart:core';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/util/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:device_info/device_info.dart';

//ToDo: create ability to only edit one cell at a time

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
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "fhir.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  Future<String> newResourceId(String resource) async {
    var dbClient = await db;
    //get the info about the new resource
    var classInfo = await dbClient.query('Classes',
        where: 'resourceType LIKE (?)',
        whereArgs: ['$resource'],
        columns: ['id', 'deviceId', 'lastId', 'total', 'lastUpdated']);

    //Create it's new lastId
    String newNum =
        (int.parse(classInfo[0]['lastId']) + 1).toString().padLeft(4, '0');
    //update value in database in master table
    var count = await dbClient.rawUpdate(
        'UPDATE Classes SET lastId = ? WHERE resourceType = ?',
        ['$newNum', '$resource']);

    //return newId
    return (classInfo[0]['id'] +
        '-' +
        classInfo[0]['deviceId'] +
        '-' +
        newNum.toString());
  }

  Future<int> updateServer(String url) async {
    var dbClient = await db;
    List<Map> results = await dbClient
        .query('Server', where: 'serverUrl = ?', whereArgs: [url]);
    Server server = Server.fromJson(results[0]);
    server.lastUpdated = DateTime.now().toString();
    return await dbClient.update('Server', server.toJson(),
        where: 'serverUrl = ?', whereArgs: [url]);
  }

  Future<int> saveResource(dynamic resource) async {
    var dbClient = await db;

    var row = {
      'id': resource.id,
      'createdAt': resource.meta.createdAt.toString(),
      'lastUpdated': resource.meta.lastUpdated.toString(),
      'jsonResource': jsonEncode(resource)
    };

    List<Map> results = await dbClient.query(resource.resourceType,
        columns: ['id'], where: 'id = ?', whereArgs: [resource.id]);

    int rowNum;

    if (results.length > 0) {
      //if already exists in table, udpate the row
      rowNum = await dbClient.update('${resource.runtimeType.toString()}', row,
          where: 'id = ?', whereArgs: [resource.id]);
    } else {
      //inserts new row into db
      rowNum = await dbClient.insert(resource.runtimeType.toString(), row);
    }

    List<Map<String, dynamic>> list = await dbClient.query('Classes',
        where: 'resourceType = ?',
        whereArgs: [resource.runtimeType.toString()]);

    int total = (rowNum != null && results.length <= 0)
        ? list[0]['total'] + 1
        : list[0]['total'];
    var count = await dbClient.rawUpdate(
        'UPDATE Classes SET total = ?, lastUpdated = ? WHERE resourceType = ?',
        [
          '${total}',
          '${resource.meta.lastUpdated.toString()}',
          '${resource.runtimeType.toString()}'
        ]);

    return rowNum;
  }

  Future<Server> lastServerUpdate(String url) async {
    var dbClient = await db;
    List<Map> list = await dbClient
        .query('Server', where: 'serverUrl = ?', whereArgs: [url]);
    return (Server(
      serverUrl: list[0]['serverUrl'],
      clientId: list[0]['clientId'],
      secret: list[0]['secret'],
      lastUpdated: list[0]['lastUpdated'],
    ));
  }

  Future<int> saveServerUpdate(Server server) async {
    var dbClient = await db;
    var row = {
      'serverUrl': server.serverUrl,
      'clientId': server.clientId,
      'secret': server.secret,
      'lastUpdated': server.lastUpdated
    };
    return await dbClient.update('Server', row,
        where: 'serverUrl = ?', whereArgs: [server.serverUrl]);
  }

  Future<dynamic> search(String resourceType, String id) async {
    var dbClient = await db;
    List<Map> list = await dbClient.query(resourceType,
        columns: ['jsonResource'], where: 'id = ?', whereArgs: [id]);
    if (list.length == 0) {
      return 'No matches';
    } else if (list.length == 1) {
      List<dynamic> search = new List<dynamic>();
      for (int i = 0; i < list.length; i++) {
        search.add(ResourceTypes(resourceType,
            jsonDecode(list[i]['jsonResource']) as Map<String, dynamic>));
      }
      return search[0];
    } else {
      return 'Too many matches';
    }
  }

  Future<List<dynamic>> getList(String table) async {
    var dbClient = await db;

    //gets list from table
    List<dynamic> list = await dbClient.query(table, columns: ['jsonResource']);
    //creates new list 'search' for returning the values, all of dynamic type
    //to allow the list to be whatever the table is
    List<dynamic> search = List<dynamic>();
    for (int i = 0; i < list.length; i++) {
      search.add(ResourceTypes(
          table, jsonDecode(list[i]['jsonResource']) as Map<String, dynamic>));
    }
    return search;
  }

  Future<int> deleteResource(dynamic resource) async {
    var dbClient = await db;
    int res = await dbClient.rawDelete(
        'DELETE FROM Classes WHERE resourceType = "${resource.resourceType}"');
    return res;
  }

  void _onCreate(Database db, int version) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    String deviceId = (androidInfo.id.hashCode % 10000).abs().toString();
    // When creating the db, create the table, master table holds last
    //id number for that resource from this device, also number of resources
    //total on this device

    await db.execute('''CREATE TABLE Classes (
			resourceType TEXT PRIMARY KEY,
			id TEXT,
			deviceId TEXT,
			lastId TEXT,
			total INTEGER,
			lastUpdated TEXT)''');
    await db.execute('''CREATE TABLE Account (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ActivityDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE AdverseEvent (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE AllergyIntolerance (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Appointment (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE AppointmentResponse (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE AuditEvent (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Basic (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Binary (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE BiologicallyDerivedProduct (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE BodyStructure (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Bundle (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CapabilityStatement (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CarePlan (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CareTeam (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CatalogEntry (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ChargeItem (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ChargeItemDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Claim (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ClaimResponse (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ClinicalImpression (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CodeSystem (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Communication (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CommunicationRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CompartmentDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Composition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ConceptMap (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Condition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Consent (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Contract (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Coverage (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CoverageEligibilityRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE CoverageEligibilityResponse (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DetectedIssue (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Device (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DeviceDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DeviceMetric (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DeviceRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DeviceUseStatement (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DiagnosticReport (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DocumentManifest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE DocumentReference (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE EffectEvidenceSynthesis (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Encounter (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Endpoint (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE EnrollmentRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE EnrollmentResponse (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE EpisodeOfCare (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE EventDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Evidence (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE EvidenceVariable (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ExampleScenario (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ExampleScenario_Instance (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ExplanationOfBenefit (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE FamilyMemberHistory (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Flag (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Goal (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE GraphDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE 'Group' (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE GuidanceResponse (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE HealthcareService (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ImagingStudy (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Immunization (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ImmunizationEvaluation (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ImmunizationRecommendation (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ImplementationGuide (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE InsurancePlan (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Invoice (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Library (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Linkage (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE List (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Location (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Measure (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MeasureReport (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Media (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Medication (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicationAdministration (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicationDispense (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicationKnowledge (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicationRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicationStatement (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProduct (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductAuthorization (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductContraindication (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductIndication (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductIngredient (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductInteraction (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductManufactured (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductPackaged (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductPharmaceutical (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MedicinalProductUndesirableEffect (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MessageDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MessageHeader (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE MolecularSequence (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE NamingSystem (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE NutritionOrder (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Observation (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ObservationDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE OperationDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE OperationOutcome (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Organization (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE OrganizationAffiliation (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Parameters (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Patient (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE PaymentNotice (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE PaymentReconciliation (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Person (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE PlanDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Practitioner (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE PractitionerRole (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Procedure (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Provenance (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Questionnaire (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE QuestionnaireResponse (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE RelatedPerson (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE RequestGroup (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ResearchDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ResearchElementDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ResearchStudy (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ResearchSubject (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE RiskAssessment (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE RiskEvidenceSynthesis (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Schedule (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SearchParameter (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ServiceRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Slot (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Specimen (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SpecimenDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE StructureDefinition (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE StructureMap (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Subscription (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Substance (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SubstanceNucleicAcid (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SubstancePolymer (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SubstanceProtein (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SubstanceReferenceInformation (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SubstanceSourceMaterial (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SubstanceSpecification (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SupplyDelivery (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE SupplyRequest (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE Task (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE TerminologyCapabilities (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE TestReport (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE TestScript (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE ValueSet (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE VerificationResult (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');
    await db.execute('''CREATE TABLE VisionPrescription (
			id TEXT PRIMARY KEY,
			createdAt TEXT,
			lastUpdated TEXT,
			jsonResource TEXT)''');

//Tables to keep track of user info
    await db.execute('''CREATE TABLE User (
			userName TEXT,
			udun TEXT,
			practitionerId TEXT,
			language TEXT,
			organization TEXT,
			server TEXT,
			PRIMARY KEY (userName, server))''');
    var row = {
      'userName': 'faulkenbej@chop.edu',
      'udun': 'chopchop',
      'practitionerId': '84057017-f31d-4cfc-b2b3-c80e491875d6',
      'organization': 'e4903137-2e9c-4a2d-8340-0ca7e89f203a',
      'server': 'https://dbhifhir.aidbox.app'
    };
    await db.insert('User', row);
    row = {
      'userName': 'faulkenbej@chop.edu',
      'udun': 'chopchop',
      'practitionerId': '84057017-f31d-4cfc-b2b3-c80e491875d6',
      'organization': 'e4903137-2e9c-4a2d-8340-0ca7e89f203a',
      'server': 'https://choptestpatients.aidbox.app'
    };
    await db.insert('User', row);

//keep track of servers
    await db.execute('''CREATE TABLE Server (
			serverUrl TEXT PRIMARY KEY,
			clientId TEXT,
			secret TEXT,
			lastUpdated TEXT)''');
    row = {
      'serverUrl': 'https://dbhifhir.aidbox.app',
      'clientId': 'greyfhir',
      'secret': 'chopchop',
      'lastUpdated': '1900-01-01T00:00:09.549157Z'
    };
    await db.insert('Server', row);
    row = {
      'serverUrl': 'https://choptestpatients.aidbox.app',
      'clientId': 'greyfhir',
      'secret': 'chopchop',
      'lastUpdated': '1900-01-01T00:00:09.549157Z'
    };
    await db.insert('Server', row);

    String time = DateTime.now().toString();
//Insert the rest of the classes into the classes table
    await db.rawInsert(
        '''INSERT INTO Classes (resourceType, id, deviceId, lastId, total, lastUpdated)
			VALUES
				('Element','010','$deviceId','0000',0,'$time'),
				('Extension','011','$deviceId','0000',0,'$time'),
				('Narrative','012','$deviceId','0000',0,'$time'),
				('Annotation','013','$deviceId','0000',0,'$time'),
				('Attachment','014','$deviceId','0000',0,'$time'),
				('Identifier','015','$deviceId','0000',0,'$time'),
				('CodeableConcept','016','$deviceId','0000',0,'$time'),
				('Coding','017','$deviceId','0000',0,'$time'),
				('Quantity','018','$deviceId','0000',0,'$time'),
				('Duration','019','$deviceId','0000',0,'$time'),
				('Distance','01a','$deviceId','0000',0,'$time'),
				('Count','01b','$deviceId','0000',0,'$time'),
				('Money','01c','$deviceId','0000',0,'$time'),
				('Age','01d','$deviceId','0000',0,'$time'),
				('Range','01e','$deviceId','0000',0,'$time'),
				('Period','01f','$deviceId','0000',0,'$time'),
				('Ratio','020','$deviceId','0000',0,'$time'),
				('Reference','021','$deviceId','0000',0,'$time'),
				('SampledData','022','$deviceId','0000',0,'$time'),
				('Signature','023','$deviceId','0000',0,'$time'),
				('HumanName','024','$deviceId','0000',0,'$time'),
				('Address','025','$deviceId','0000',0,'$time'),
				('ContactPoint','026','$deviceId','0000',0,'$time'),
				('Timing','027','$deviceId','0000',0,'$time'),
				('Timing_Repeat','028','$deviceId','0000',0,'$time'),
				('Meta','029','$deviceId','0000',0,'$time'),
				('ContactDetail','02a','$deviceId','0000',0,'$time'),
				('Contributor','02b','$deviceId','0000',0,'$time'),
				('DataRequirement','02c','$deviceId','0000',0,'$time'),
				('DataRequirement_CodeFilter','02d','$deviceId','0000',0,'$time'),
				('DataRequirement_DateFilter','02e','$deviceId','0000',0,'$time'),
				('DataRequirement_Sort','02f','$deviceId','0000',0,'$time'),
				('ParameterDefinition','030','$deviceId','0000',0,'$time'),
				('RelatedArtifact','031','$deviceId','0000',0,'$time'),
				('TriggerDefinition','032','$deviceId','0000',0,'$time'),
				('UsageContext','033','$deviceId','0000',0,'$time'),
				('Dosage','034','$deviceId','0000',0,'$time'),
				('Dosage_DoseAndRate','035','$deviceId','0000',0,'$time'),
				('Population','036','$deviceId','0000',0,'$time'),
				('ProductShelfLife','037','$deviceId','0000',0,'$time'),
				('ProdCharacteristic','038','$deviceId','0000',0,'$time'),
				('MarketingStatus','039','$deviceId','0000',0,'$time'),
				('SubstanceAmount','03a','$deviceId','0000',0,'$time'),
				('SubstanceAmount_ReferenceRange','03b','$deviceId','0000',0,'$time'),
				('Expression','03c','$deviceId','0000',0,'$time'),
				('ElementDefinition','03d','$deviceId','0000',0,'$time'),
				('ElementDefinition_Slicing','03e','$deviceId','0000',0,'$time'),
				('ElementDefinition_Discriminator','03f','$deviceId','0000',0,'$time'),
				('ElementDefinition_Base','040','$deviceId','0000',0,'$time'),
				('ElementDefinition_Type','041','$deviceId','0000',0,'$time'),
				('ElementDefinition_Example','042','$deviceId','0000',0,'$time'),
				('ElementDefinition_Constraint','043','$deviceId','0000',0,'$time'),
				('ElementDefinition_Binding','044','$deviceId','0000',0,'$time'),
				('ElementDefinition_Mapping','045','$deviceId','0000',0,'$time'),
				('Account','046','$deviceId','0000',0,'$time'),
				('Account_Coverage','047','$deviceId','0000',0,'$time'),
				('Account_Guarantor','048','$deviceId','0000',0,'$time'),
				('ActivityDefinition','049','$deviceId','0000',0,'$time'),
				('ActivityDefinition_Participant','04a','$deviceId','0000',0,'$time'),
				('ActivityDefinition_DynamicValue','04b','$deviceId','0000',0,'$time'),
				('AdverseEvent','04c','$deviceId','0000',0,'$time'),
				('AdverseEvent_SuspectEntity','04d','$deviceId','0000',0,'$time'),
				('AdverseEvent_Causality','04e','$deviceId','0000',0,'$time'),
				('AllergyIntolerance','04f','$deviceId','0000',0,'$time'),
				('AllergyIntolerance_Reaction','050','$deviceId','0000',0,'$time'),
				('Appointment','051','$deviceId','0000',0,'$time'),
				('Appointment_Participant','052','$deviceId','0000',0,'$time'),
				('AppointmentResponse','053','$deviceId','0000',0,'$time'),
				('AuditEvent','054','$deviceId','0000',0,'$time'),
				('AuditEvent_Agent','055','$deviceId','0000',0,'$time'),
				('AuditEvent_Network','056','$deviceId','0000',0,'$time'),
				('AuditEvent_Source','057','$deviceId','0000',0,'$time'),
				('AuditEvent_Entity','058','$deviceId','0000',0,'$time'),
				('AuditEvent_Detail','059','$deviceId','0000',0,'$time'),
				('Basic','05a','$deviceId','0000',0,'$time'),
				('Binary','05b','$deviceId','0000',0,'$time'),
				('BiologicallyDerivedProduct','05c','$deviceId','0000',0,'$time'),
				('BiologicallyDerivedProduct_Collection','05d','$deviceId','0000',0,'$time'),
				('BiologicallyDerivedProduct_Processing','05e','$deviceId','0000',0,'$time'),
				('BiologicallyDerivedProduct_Manipulation','05f','$deviceId','0000',0,'$time'),
				('BiologicallyDerivedProduct_Storage','060','$deviceId','0000',0,'$time'),
				('BodyStructure','061','$deviceId','0000',0,'$time'),
				('Bundle','062','$deviceId','0000',0,'$time'),
				('Bundle_Link','063','$deviceId','0000',0,'$time'),
				('Bundle_Entry','064','$deviceId','0000',0,'$time'),
				('Bundle_Search','065','$deviceId','0000',0,'$time'),
				('Bundle_Request','066','$deviceId','0000',0,'$time'),
				('Bundle_Response','067','$deviceId','0000',0,'$time'),
				('CapabilityStatement','068','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Software','069','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Implementation','06a','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Rest','06b','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Security','06c','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Resource','06d','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Interaction','06e','$deviceId','0000',0,'$time'),
				('CapabilityStatement_SearchParam','06f','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Operation','070','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Interaction1','071','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Messaging','072','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Endpoint','073','$deviceId','0000',0,'$time'),
				('CapabilityStatement_SupportedMessage','074','$deviceId','0000',0,'$time'),
				('CapabilityStatement_Document','075','$deviceId','0000',0,'$time'),
				('CarePlan','076','$deviceId','0000',0,'$time'),
				('CarePlan_Activity','077','$deviceId','0000',0,'$time'),
				('CarePlan_Detail','078','$deviceId','0000',0,'$time'),
				('CareTeam','079','$deviceId','0000',0,'$time'),
				('CareTeam_Participant','07a','$deviceId','0000',0,'$time'),
				('CatalogEntry','07b','$deviceId','0000',0,'$time'),
				('CatalogEntry_RelatedEntry','07c','$deviceId','0000',0,'$time'),
				('ChargeItem','07d','$deviceId','0000',0,'$time'),
				('ChargeItem_Performer','07e','$deviceId','0000',0,'$time'),
				('ChargeItemDefinition','07f','$deviceId','0000',0,'$time'),
				('ChargeItemDefinition_Applicability','080','$deviceId','0000',0,'$time'),
				('ChargeItemDefinition_PropertyGroup','081','$deviceId','0000',0,'$time'),
				('ChargeItemDefinition_PriceComponent','082','$deviceId','0000',0,'$time'),
				('Claim','083','$deviceId','0000',0,'$time'),
				('Claim_Related','084','$deviceId','0000',0,'$time'),
				('Claim_Payee','085','$deviceId','0000',0,'$time'),
				('Claim_CareTeam','086','$deviceId','0000',0,'$time'),
				('Claim_SupportingInfo','087','$deviceId','0000',0,'$time'),
				('Claim_Diagnosis','088','$deviceId','0000',0,'$time'),
				('Claim_Procedure','089','$deviceId','0000',0,'$time'),
				('Claim_Insurance','08a','$deviceId','0000',0,'$time'),
				('Claim_Accident','08b','$deviceId','0000',0,'$time'),
				('Claim_Item','08c','$deviceId','0000',0,'$time'),
				('Claim_Detail','08d','$deviceId','0000',0,'$time'),
				('Claim_SubDetail','08e','$deviceId','0000',0,'$time'),
				('ClaimResponse','08f','$deviceId','0000',0,'$time'),
				('ClaimResponse_Item','090','$deviceId','0000',0,'$time'),
				('ClaimResponse_Adjudication','091','$deviceId','0000',0,'$time'),
				('ClaimResponse_Detail','092','$deviceId','0000',0,'$time'),
				('ClaimResponse_SubDetail','093','$deviceId','0000',0,'$time'),
				('ClaimResponse_AddItem','094','$deviceId','0000',0,'$time'),
				('ClaimResponse_Detail1','095','$deviceId','0000',0,'$time'),
				('ClaimResponse_SubDetail1','096','$deviceId','0000',0,'$time'),
				('ClaimResponse_Total','097','$deviceId','0000',0,'$time'),
				('ClaimResponse_Payment','098','$deviceId','0000',0,'$time'),
				('ClaimResponse_ProcessNote','099','$deviceId','0000',0,'$time'),
				('ClaimResponse_Insurance','09a','$deviceId','0000',0,'$time'),
				('ClaimResponse_Error','09b','$deviceId','0000',0,'$time'),
				('ClinicalImpression','09c','$deviceId','0000',0,'$time'),
				('ClinicalImpression_Investigation','09d','$deviceId','0000',0,'$time'),
				('ClinicalImpression_Finding','09e','$deviceId','0000',0,'$time'),
				('CodeSystem','09f','$deviceId','0000',0,'$time'),
				('CodeSystem_Filter','0a0','$deviceId','0000',0,'$time'),
				('CodeSystem_Property','0a1','$deviceId','0000',0,'$time'),
				('CodeSystem_Concept','0a2','$deviceId','0000',0,'$time'),
				('CodeSystem_Designation','0a3','$deviceId','0000',0,'$time'),
				('CodeSystem_Property1','0a4','$deviceId','0000',0,'$time'),
				('Communication','0a5','$deviceId','0000',0,'$time'),
				('Communication_Payload','0a6','$deviceId','0000',0,'$time'),
				('CommunicationRequest','0a7','$deviceId','0000',0,'$time'),
				('CommunicationRequest_Payload','0a8','$deviceId','0000',0,'$time'),
				('CompartmentDefinition','0a9','$deviceId','0000',0,'$time'),
				('CompartmentDefinition_Resource','0aa','$deviceId','0000',0,'$time'),
				('Composition','0ab','$deviceId','0000',0,'$time'),
				('Composition_Attester','0ac','$deviceId','0000',0,'$time'),
				('Composition_RelatesTo','0ad','$deviceId','0000',0,'$time'),
				('Composition_Event','0ae','$deviceId','0000',0,'$time'),
				('Composition_Section','0af','$deviceId','0000',0,'$time'),
				('ConceptMap','0b0','$deviceId','0000',0,'$time'),
				('ConceptMap_Group','0b1','$deviceId','0000',0,'$time'),
				('ConceptMap_Element','0b2','$deviceId','0000',0,'$time'),
				('ConceptMap_Target','0b3','$deviceId','0000',0,'$time'),
				('ConceptMap_DependsOn','0b4','$deviceId','0000',0,'$time'),
				('ConceptMap_Unmapped','0b5','$deviceId','0000',0,'$time'),
				('Condition','0b6','$deviceId','0000',0,'$time'),
				('Condition_Stage','0b7','$deviceId','0000',0,'$time'),
				('Condition_Evidence','0b8','$deviceId','0000',0,'$time'),
				('Consent','0b9','$deviceId','0000',0,'$time'),
				('Consent_Policy','0ba','$deviceId','0000',0,'$time'),
				('Consent_Verification','0bb','$deviceId','0000',0,'$time'),
				('Consent_Provision','0bc','$deviceId','0000',0,'$time'),
				('Consent_Actor','0bd','$deviceId','0000',0,'$time'),
				('Consent_Data','0be','$deviceId','0000',0,'$time'),
				('Contract','0bf','$deviceId','0000',0,'$time'),
				('Contract_ContentDefinition','0c0','$deviceId','0000',0,'$time'),
				('Contract_Term','0c1','$deviceId','0000',0,'$time'),
				('Contract_SecurityLabel','0c2','$deviceId','0000',0,'$time'),
				('Contract_Offer','0c3','$deviceId','0000',0,'$time'),
				('Contract_Party','0c4','$deviceId','0000',0,'$time'),
				('Contract_Answer','0c5','$deviceId','0000',0,'$time'),
				('Contract_Asset','0c6','$deviceId','0000',0,'$time'),
				('Contract_Context','0c7','$deviceId','0000',0,'$time'),
				('Contract_ValuedItem','0c8','$deviceId','0000',0,'$time'),
				('Contract_Action','0c9','$deviceId','0000',0,'$time'),
				('Contract_Subject','0ca','$deviceId','0000',0,'$time'),
				('Contract_Signer','0cb','$deviceId','0000',0,'$time'),
				('Contract_Friendly','0cc','$deviceId','0000',0,'$time'),
				('Contract_Legal','0cd','$deviceId','0000',0,'$time'),
				('Contract_Rule','0ce','$deviceId','0000',0,'$time'),
				('Coverage','0cf','$deviceId','0000',0,'$time'),
				('Coverage_Class','0d0','$deviceId','0000',0,'$time'),
				('Coverage_CostToBeneficiary','0d1','$deviceId','0000',0,'$time'),
				('Coverage_Exception','0d2','$deviceId','0000',0,'$time'),
				('CoverageEligibilityRequest','0d3','$deviceId','0000',0,'$time'),
				('CoverageEligibilityRequest_SupportingInfo','0d4','$deviceId','0000',0,'$time'),
				('CoverageEligibilityRequest_Insurance','0d5','$deviceId','0000',0,'$time'),
				('CoverageEligibilityRequest_Item','0d6','$deviceId','0000',0,'$time'),
				('CoverageEligibilityRequest_Diagnosis','0d7','$deviceId','0000',0,'$time'),
				('CoverageEligibilityResponse','0d8','$deviceId','0000',0,'$time'),
				('CoverageEligibilityResponse_Insurance','0d9','$deviceId','0000',0,'$time'),
				('CoverageEligibilityResponse_Item','0da','$deviceId','0000',0,'$time'),
				('CoverageEligibilityResponse_Benefit','0db','$deviceId','0000',0,'$time'),
				('CoverageEligibilityResponse_Error','0dc','$deviceId','0000',0,'$time'),
				('DetectedIssue','0dd','$deviceId','0000',0,'$time'),
				('DetectedIssue_Evidence','0de','$deviceId','0000',0,'$time'),
				('DetectedIssue_Mitigation','0df','$deviceId','0000',0,'$time'),
				('Device','0e0','$deviceId','0000',0,'$time'),
				('Device_UdiCarrier','0e1','$deviceId','0000',0,'$time'),
				('Device_DeviceName','0e2','$deviceId','0000',0,'$time'),
				('Device_Specialization','0e3','$deviceId','0000',0,'$time'),
				('Device_Version','0e4','$deviceId','0000',0,'$time'),
				('Device_Property','0e5','$deviceId','0000',0,'$time'),
				('DeviceDefinition','0e6','$deviceId','0000',0,'$time'),
				('DeviceDefinition_UdiDeviceIdentifier','0e7','$deviceId','0000',0,'$time'),
				('DeviceDefinition_DeviceName','0e8','$deviceId','0000',0,'$time'),
				('DeviceDefinition_Specialization','0e9','$deviceId','0000',0,'$time'),
				('DeviceDefinition_Capability','0ea','$deviceId','0000',0,'$time'),
				('DeviceDefinition_Property','0eb','$deviceId','0000',0,'$time'),
				('DeviceDefinition_Material','0ec','$deviceId','0000',0,'$time'),
				('DeviceMetric','0ed','$deviceId','0000',0,'$time'),
				('DeviceMetric_Calibration','0ee','$deviceId','0000',0,'$time'),
				('DeviceRequest','0ef','$deviceId','0000',0,'$time'),
				('DeviceRequest_Parameter','0f0','$deviceId','0000',0,'$time'),
				('DeviceUseStatement','0f1','$deviceId','0000',0,'$time'),
				('DiagnosticReport','0f2','$deviceId','0000',0,'$time'),
				('DiagnosticReport_Media','0f3','$deviceId','0000',0,'$time'),
				('DocumentManifest','0f4','$deviceId','0000',0,'$time'),
				('DocumentManifest_Related','0f5','$deviceId','0000',0,'$time'),
				('DocumentReference','0f6','$deviceId','0000',0,'$time'),
				('DocumentReference_RelatesTo','0f7','$deviceId','0000',0,'$time'),
				('DocumentReference_Content','0f8','$deviceId','0000',0,'$time'),
				('DocumentReference_Context','0f9','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis','0fa','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis_SampleSize','0fb','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis_ResultsByExposure','0fc','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis_EffectEstimate','0fd','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis_PrecisionEstimate','0fe','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis_Certainty','0ff','$deviceId','0000',0,'$time'),
				('EffectEvidenceSynthesis_CertaintySubcomponent','100','$deviceId','0000',0,'$time'),
				('Encounter','101','$deviceId','0000',0,'$time'),
				('Encounter_StatusHistory','102','$deviceId','0000',0,'$time'),
				('Encounter_ClassHistory','103','$deviceId','0000',0,'$time'),
				('Encounter_Participant','104','$deviceId','0000',0,'$time'),
				('Encounter_Diagnosis','105','$deviceId','0000',0,'$time'),
				('Encounter_Hospitalization','106','$deviceId','0000',0,'$time'),
				('Encounter_Location','107','$deviceId','0000',0,'$time'),
				('Endpoint','108','$deviceId','0000',0,'$time'),
				('EnrollmentRequest','109','$deviceId','0000',0,'$time'),
				('EnrollmentResponse','10a','$deviceId','0000',0,'$time'),
				('EpisodeOfCare','10b','$deviceId','0000',0,'$time'),
				('EpisodeOfCare_StatusHistory','10c','$deviceId','0000',0,'$time'),
				('EpisodeOfCare_Diagnosis','10d','$deviceId','0000',0,'$time'),
				('EventDefinition','10e','$deviceId','0000',0,'$time'),
				('Evidence','10f','$deviceId','0000',0,'$time'),
				('EvidenceVariable','110','$deviceId','0000',0,'$time'),
				('EvidenceVariable_Characteristic','111','$deviceId','0000',0,'$time'),
				('ExampleScenario','112','$deviceId','0000',0,'$time'),
				('ExampleScenario_Actor','113','$deviceId','0000',0,'$time'),
				('ExampleScenario_Instance','114','$deviceId','0000',0,'$time'),
				('ExampleScenario_Version','115','$deviceId','0000',0,'$time'),
				('ExampleScenario_ContainedInstance','116','$deviceId','0000',0,'$time'),
				('ExampleScenario_Process','117','$deviceId','0000',0,'$time'),
				('ExampleScenario_Step','118','$deviceId','0000',0,'$time'),
				('ExampleScenario_Operation','119','$deviceId','0000',0,'$time'),
				('ExampleScenario_Alternative','11a','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit','11b','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Related','11c','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Payee','11d','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_CareTeam','11e','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_SupportingInfo','11f','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Diagnosis','120','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Procedure','121','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Insurance','122','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Accident','123','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Item','124','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Adjudication','125','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Detail','126','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_SubDetail','127','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_AddItem','128','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Detail1','129','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_SubDetail1','12a','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Total','12b','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Payment','12c','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_ProcessNote','12d','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_BenefitBalance','12e','$deviceId','0000',0,'$time'),
				('ExplanationOfBenefit_Financial','12f','$deviceId','0000',0,'$time'),
				('FamilyMemberHistory','130','$deviceId','0000',0,'$time'),
				('FamilyMemberHistory_Condition','131','$deviceId','0000',0,'$time'),
				('Flag','132','$deviceId','0000',0,'$time'),
				('Goal','133','$deviceId','0000',0,'$time'),
				('Goal_Target','134','$deviceId','0000',0,'$time'),
				('GraphDefinition','135','$deviceId','0000',0,'$time'),
				('GraphDefinition_Link','136','$deviceId','0000',0,'$time'),
				('GraphDefinition_Target','137','$deviceId','0000',0,'$time'),
				('GraphDefinition_Compartment','138','$deviceId','0000',0,'$time'),
				('Group','139','$deviceId','0000',0,'$time'),
				('Group_Characteristic','13a','$deviceId','0000',0,'$time'),
				('Group_Member','13b','$deviceId','0000',0,'$time'),
				('GuidanceResponse','13c','$deviceId','0000',0,'$time'),
				('HealthcareService','13d','$deviceId','0000',0,'$time'),
				('HealthcareService_Eligibility','13e','$deviceId','0000',0,'$time'),
				('HealthcareService_AvailableTime','13f','$deviceId','0000',0,'$time'),
				('HealthcareService_NotAvailable','140','$deviceId','0000',0,'$time'),
				('ImagingStudy','141','$deviceId','0000',0,'$time'),
				('ImagingStudy_Series','142','$deviceId','0000',0,'$time'),
				('ImagingStudy_Performer','143','$deviceId','0000',0,'$time'),
				('ImagingStudy_Instance','144','$deviceId','0000',0,'$time'),
				('Immunization','145','$deviceId','0000',0,'$time'),
				('Immunization_Performer','146','$deviceId','0000',0,'$time'),
				('Immunization_Education','147','$deviceId','0000',0,'$time'),
				('Immunization_Reaction','148','$deviceId','0000',0,'$time'),
				('Immunization_ProtocolApplied','149','$deviceId','0000',0,'$time'),
				('ImmunizationEvaluation','14a','$deviceId','0000',0,'$time'),
				('ImmunizationRecommendation','14b','$deviceId','0000',0,'$time'),
				('ImmunizationRecommendation_Recommendation','14c','$deviceId','0000',0,'$time'),
				('ImmunizationRecommendation_DateCriterion','14d','$deviceId','0000',0,'$time'),
				('ImplementationGuide','14e','$deviceId','0000',0,'$time'),
				('ImplementationGuide_DependsOn','14f','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Global','150','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Definition','151','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Grouping','152','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Resource','153','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Page','154','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Parameter','155','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Template','156','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Manifest','157','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Resource1','158','$deviceId','0000',0,'$time'),
				('ImplementationGuide_Page1','159','$deviceId','0000',0,'$time'),
				('InsurancePlan','15a','$deviceId','0000',0,'$time'),
				('InsurancePlan_Contact','15b','$deviceId','0000',0,'$time'),
				('InsurancePlan_Coverage','15c','$deviceId','0000',0,'$time'),
				('InsurancePlan_Benefit','15d','$deviceId','0000',0,'$time'),
				('InsurancePlan_Limit','15e','$deviceId','0000',0,'$time'),
				('InsurancePlan_Plan','15f','$deviceId','0000',0,'$time'),
				('InsurancePlan_GeneralCost','160','$deviceId','0000',0,'$time'),
				('InsurancePlan_SpecificCost','161','$deviceId','0000',0,'$time'),
				('InsurancePlan_Benefit1','162','$deviceId','0000',0,'$time'),
				('InsurancePlan_Cost','163','$deviceId','0000',0,'$time'),
				('Invoice','164','$deviceId','0000',0,'$time'),
				('Invoice_Participant','165','$deviceId','0000',0,'$time'),
				('Invoice_LineItem','166','$deviceId','0000',0,'$time'),
				('Invoice_PriceComponent','167','$deviceId','0000',0,'$time'),
				('Library','168','$deviceId','0000',0,'$time'),
				('Linkage','169','$deviceId','0000',0,'$time'),
				('Linkage_Item','16a','$deviceId','0000',0,'$time'),
				('List','16b','$deviceId','0000',0,'$time'),
				('List_Entry','16c','$deviceId','0000',0,'$time'),
				('Location','16d','$deviceId','0000',0,'$time'),
				('Location_Position','16e','$deviceId','0000',0,'$time'),
				('Location_HoursOfOperation','16f','$deviceId','0000',0,'$time'),
				('Measure','170','$deviceId','0000',0,'$time'),
				('Measure_Group','171','$deviceId','0000',0,'$time'),
				('Measure_Population','172','$deviceId','0000',0,'$time'),
				('Measure_Stratifier','173','$deviceId','0000',0,'$time'),
				('Measure_Component','174','$deviceId','0000',0,'$time'),
				('Measure_SupplementalData','175','$deviceId','0000',0,'$time'),
				('MeasureReport','176','$deviceId','0000',0,'$time'),
				('MeasureReport_Group','177','$deviceId','0000',0,'$time'),
				('MeasureReport_Population','178','$deviceId','0000',0,'$time'),
				('MeasureReport_Stratifier','179','$deviceId','0000',0,'$time'),
				('MeasureReport_Stratum','17a','$deviceId','0000',0,'$time'),
				('MeasureReport_Component','17b','$deviceId','0000',0,'$time'),
				('MeasureReport_Population1','17c','$deviceId','0000',0,'$time'),
				('Media','17d','$deviceId','0000',0,'$time'),
				('Medication','17e','$deviceId','0000',0,'$time'),
				('Medication_Ingredient','17f','$deviceId','0000',0,'$time'),
				('Medication_Batch','180','$deviceId','0000',0,'$time'),
				('MedicationAdministration','181','$deviceId','0000',0,'$time'),
				('MedicationAdministration_Performer','182','$deviceId','0000',0,'$time'),
				('MedicationAdministration_Dosage','183','$deviceId','0000',0,'$time'),
				('MedicationDispense','184','$deviceId','0000',0,'$time'),
				('MedicationDispense_Performer','185','$deviceId','0000',0,'$time'),
				('MedicationDispense_Substitution','186','$deviceId','0000',0,'$time'),
				('MedicationKnowledge','187','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_RelatedMedicationKnowledge','188','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Monograph','189','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Ingredient','18a','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Cost','18b','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_MonitoringProgram','18c','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_AdministrationGuidelines','18d','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Dosage','18e','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_PatientCharacteristics','18f','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_MedicineClassification','190','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Packaging','191','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_DrugCharacteristic','192','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Regulatory','193','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Substitution','194','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Schedule','195','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_MaxDispense','196','$deviceId','0000',0,'$time'),
				('MedicationKnowledge_Kinetics','197','$deviceId','0000',0,'$time'),
				('MedicationRequest','198','$deviceId','0000',0,'$time'),
				('MedicationRequest_DispenseRequest','199','$deviceId','0000',0,'$time'),
				('MedicationRequest_InitialFill','19a','$deviceId','0000',0,'$time'),
				('MedicationRequest_Substitution','19b','$deviceId','0000',0,'$time'),
				('MedicationStatement','19c','$deviceId','0000',0,'$time'),
				('MedicinalProduct','19d','$deviceId','0000',0,'$time'),
				('MedicinalProduct_Name','19e','$deviceId','0000',0,'$time'),
				('MedicinalProduct_NamePart','19f','$deviceId','0000',0,'$time'),
				('MedicinalProduct_CountryLanguage','1a0','$deviceId','0000',0,'$time'),
				('MedicinalProduct_ManufacturingBusinessOperation','1a1','$deviceId','0000',0,'$time'),
				('MedicinalProduct_SpecialDesignation','1a2','$deviceId','0000',0,'$time'),
				('MedicinalProductAuthorization','1a3','$deviceId','0000',0,'$time'),
				('MedicinalProductAuthorization_JurisdictionalAuthorization','1a4','$deviceId','0000',0,'$time'),
				('MedicinalProductAuthorization_Procedure','1a5','$deviceId','0000',0,'$time'),
				('MedicinalProductContraindication','1a6','$deviceId','0000',0,'$time'),
				('MedicinalProductContraindication_OtherTherapy','1a7','$deviceId','0000',0,'$time'),
				('MedicinalProductIndication','1a8','$deviceId','0000',0,'$time'),
				('MedicinalProductIndication_OtherTherapy','1a9','$deviceId','0000',0,'$time'),
				('MedicinalProductIngredient','1aa','$deviceId','0000',0,'$time'),
				('MedicinalProductIngredient_SpecifiedSubstance','1ab','$deviceId','0000',0,'$time'),
				('MedicinalProductIngredient_Strength','1ac','$deviceId','0000',0,'$time'),
				('MedicinalProductIngredient_ReferenceStrength','1ad','$deviceId','0000',0,'$time'),
				('MedicinalProductIngredient_Substance','1ae','$deviceId','0000',0,'$time'),
				('MedicinalProductInteraction','1af','$deviceId','0000',0,'$time'),
				('MedicinalProductInteraction_Interactant','1b0','$deviceId','0000',0,'$time'),
				('MedicinalProductManufactured','1b1','$deviceId','0000',0,'$time'),
				('MedicinalProductPackaged','1b2','$deviceId','0000',0,'$time'),
				('MedicinalProductPackaged_BatchIdentifier','1b3','$deviceId','0000',0,'$time'),
				('MedicinalProductPackaged_PackageItem','1b4','$deviceId','0000',0,'$time'),
				('MedicinalProductPharmaceutical','1b5','$deviceId','0000',0,'$time'),
				('MedicinalProductPharmaceutical_Characteristics','1b6','$deviceId','0000',0,'$time'),
				('MedicinalProductPharmaceutical_RouteOfAdministration','1b7','$deviceId','0000',0,'$time'),
				('MedicinalProductPharmaceutical_TargetSpecies','1b8','$deviceId','0000',0,'$time'),
				('MedicinalProductPharmaceutical_WithdrawalPeriod','1b9','$deviceId','0000',0,'$time'),
				('MedicinalProductUndesirableEffect','1ba','$deviceId','0000',0,'$time'),
				('MessageDefinition','1bb','$deviceId','0000',0,'$time'),
				('MessageDefinition_Focus','1bc','$deviceId','0000',0,'$time'),
				('MessageDefinition_AllowedResponse','1bd','$deviceId','0000',0,'$time'),
				('MessageHeader','1be','$deviceId','0000',0,'$time'),
				('MessageHeader_Destination','1bf','$deviceId','0000',0,'$time'),
				('MessageHeader_Source','1c0','$deviceId','0000',0,'$time'),
				('MessageHeader_Response','1c1','$deviceId','0000',0,'$time'),
				('MolecularSequence','1c2','$deviceId','0000',0,'$time'),
				('MolecularSequence_ReferenceSeq','1c3','$deviceId','0000',0,'$time'),
				('MolecularSequence_Variant','1c4','$deviceId','0000',0,'$time'),
				('MolecularSequence_Quality','1c5','$deviceId','0000',0,'$time'),
				('MolecularSequence_Roc','1c6','$deviceId','0000',0,'$time'),
				('MolecularSequence_Repository','1c7','$deviceId','0000',0,'$time'),
				('MolecularSequence_StructureVariant','1c8','$deviceId','0000',0,'$time'),
				('MolecularSequence_Outer','1c9','$deviceId','0000',0,'$time'),
				('MolecularSequence_Inner','1ca','$deviceId','0000',0,'$time'),
				('NamingSystem','1cb','$deviceId','0000',0,'$time'),
				('NamingSystem_UniqueId','1cc','$deviceId','0000',0,'$time'),
				('NutritionOrder','1cd','$deviceId','0000',0,'$time'),
				('NutritionOrder_OralDiet','1ce','$deviceId','0000',0,'$time'),
				('NutritionOrder_Nutrient','1cf','$deviceId','0000',0,'$time'),
				('NutritionOrder_Texture','1d0','$deviceId','0000',0,'$time'),
				('NutritionOrder_Supplement','1d1','$deviceId','0000',0,'$time'),
				('NutritionOrder_EnteralFormula','1d2','$deviceId','0000',0,'$time'),
				('NutritionOrder_Administration','1d3','$deviceId','0000',0,'$time'),
				('Observation','1d4','$deviceId','0000',0,'$time'),
				('Observation_ReferenceRange','1d5','$deviceId','0000',0,'$time'),
				('Observation_Component','1d6','$deviceId','0000',0,'$time'),
				('ObservationDefinition','1d7','$deviceId','0000',0,'$time'),
				('ObservationDefinition_QuantitativeDetails','1d8','$deviceId','0000',0,'$time'),
				('ObservationDefinition_QualifiedInterval','1d9','$deviceId','0000',0,'$time'),
				('OperationDefinition','1da','$deviceId','0000',0,'$time'),
				('OperationDefinition_Parameter','1db','$deviceId','0000',0,'$time'),
				('OperationDefinition_Binding','1dc','$deviceId','0000',0,'$time'),
				('OperationDefinition_ReferencedFrom','1dd','$deviceId','0000',0,'$time'),
				('OperationDefinition_Overload','1de','$deviceId','0000',0,'$time'),
				('OperationOutcome','1df','$deviceId','0000',0,'$time'),
				('OperationOutcome_Issue','1e0','$deviceId','0000',0,'$time'),
				('Organization','1e1','$deviceId','0000',0,'$time'),
				('Organization_Contact','1e2','$deviceId','0000',0,'$time'),
				('OrganizationAffiliation','1e3','$deviceId','0000',0,'$time'),
				('Parameters','1e4','$deviceId','0000',0,'$time'),
				('Parameters_Parameter','1e5','$deviceId','0000',0,'$time'),
				('Patient','1e6','$deviceId','0000',0,'$time'),
				('Patient_Contact','1e7','$deviceId','0000',0,'$time'),
				('Patient_Communication','1e8','$deviceId','0000',0,'$time'),
				('Patient_Link','1e9','$deviceId','0000',0,'$time'),
				('PaymentNotice','1ea','$deviceId','0000',0,'$time'),
				('PaymentReconciliation','1eb','$deviceId','0000',0,'$time'),
				('PaymentReconciliation_Detail','1ec','$deviceId','0000',0,'$time'),
				('PaymentReconciliation_ProcessNote','1ed','$deviceId','0000',0,'$time'),
				('Person','1ee','$deviceId','0000',0,'$time'),
				('Person_Link','1ef','$deviceId','0000',0,'$time'),
				('PlanDefinition','1f0','$deviceId','0000',0,'$time'),
				('PlanDefinition_Goal','1f1','$deviceId','0000',0,'$time'),
				('PlanDefinition_Target','1f2','$deviceId','0000',0,'$time'),
				('PlanDefinition_Action','1f3','$deviceId','0000',0,'$time'),
				('PlanDefinition_Condition','1f4','$deviceId','0000',0,'$time'),
				('PlanDefinition_RelatedAction','1f5','$deviceId','0000',0,'$time'),
				('PlanDefinition_Participant','1f6','$deviceId','0000',0,'$time'),
				('PlanDefinition_DynamicValue','1f7','$deviceId','0000',0,'$time'),
				('Practitioner','1f8','$deviceId','0000',0,'$time'),
				('Practitioner_Qualification','1f9','$deviceId','0000',0,'$time'),
				('PractitionerRole','1fa','$deviceId','0000',0,'$time'),
				('PractitionerRole_AvailableTime','1fb','$deviceId','0000',0,'$time'),
				('PractitionerRole_NotAvailable','1fc','$deviceId','0000',0,'$time'),
				('Procedure','1fd','$deviceId','0000',0,'$time'),
				('Procedure_Performer','1fe','$deviceId','0000',0,'$time'),
				('Procedure_FocalDevice','1ff','$deviceId','0000',0,'$time'),
				('Provenance','200','$deviceId','0000',0,'$time'),
				('Provenance_Agent','201','$deviceId','0000',0,'$time'),
				('Provenance_Entity','202','$deviceId','0000',0,'$time'),
				('Questionnaire','203','$deviceId','0000',0,'$time'),
				('Questionnaire_Item','204','$deviceId','0000',0,'$time'),
				('Questionnaire_EnableWhen','205','$deviceId','0000',0,'$time'),
				('Questionnaire_AnswerOption','206','$deviceId','0000',0,'$time'),
				('Questionnaire_Initial','207','$deviceId','0000',0,'$time'),
				('QuestionnaireResponse','208','$deviceId','0000',0,'$time'),
				('QuestionnaireResponse_Item','209','$deviceId','0000',0,'$time'),
				('QuestionnaireResponse_Answer','20a','$deviceId','0000',0,'$time'),
				('RelatedPerson','20b','$deviceId','0000',0,'$time'),
				('RelatedPerson_Communication','20c','$deviceId','0000',0,'$time'),
				('RequestGroup','20d','$deviceId','0000',0,'$time'),
				('RequestGroup_Action','20e','$deviceId','0000',0,'$time'),
				('RequestGroup_Condition','20f','$deviceId','0000',0,'$time'),
				('RequestGroup_RelatedAction','210','$deviceId','0000',0,'$time'),
				('ResearchDefinition','211','$deviceId','0000',0,'$time'),
				('ResearchElementDefinition','212','$deviceId','0000',0,'$time'),
				('ResearchElementDefinition_Characteristic','213','$deviceId','0000',0,'$time'),
				('ResearchStudy','214','$deviceId','0000',0,'$time'),
				('ResearchStudy_Arm','215','$deviceId','0000',0,'$time'),
				('ResearchStudy_Objective','216','$deviceId','0000',0,'$time'),
				('ResearchSubject','217','$deviceId','0000',0,'$time'),
				('RiskAssessment','218','$deviceId','0000',0,'$time'),
				('RiskAssessment_Prediction','219','$deviceId','0000',0,'$time'),
				('RiskEvidenceSynthesis','21a','$deviceId','0000',0,'$time'),
				('RiskEvidenceSynthesis_SampleSize','21b','$deviceId','0000',0,'$time'),
				('RiskEvidenceSynthesis_RiskEstimate','21c','$deviceId','0000',0,'$time'),
				('RiskEvidenceSynthesis_PrecisionEstimate','21d','$deviceId','0000',0,'$time'),
				('RiskEvidenceSynthesis_Certainty','21e','$deviceId','0000',0,'$time'),
				('RiskEvidenceSynthesis_CertaintySubcomponent','21f','$deviceId','0000',0,'$time'),
				('Schedule','220','$deviceId','0000',0,'$time'),
				('SearchParameter','221','$deviceId','0000',0,'$time'),
				('SearchParameter_Component','222','$deviceId','0000',0,'$time'),
				('ServiceRequest','223','$deviceId','0000',0,'$time'),
				('Slot','224','$deviceId','0000',0,'$time'),
				('Specimen','225','$deviceId','0000',0,'$time'),
				('Specimen_Collection','226','$deviceId','0000',0,'$time'),
				('Specimen_Processing','227','$deviceId','0000',0,'$time'),
				('Specimen_Container','228','$deviceId','0000',0,'$time'),
				('SpecimenDefinition','229','$deviceId','0000',0,'$time'),
				('SpecimenDefinition_TypeTested','22a','$deviceId','0000',0,'$time'),
				('SpecimenDefinition_Container','22b','$deviceId','0000',0,'$time'),
				('SpecimenDefinition_Additive','22c','$deviceId','0000',0,'$time'),
				('SpecimenDefinition_Handling','22d','$deviceId','0000',0,'$time'),
				('StructureDefinition','22e','$deviceId','0000',0,'$time'),
				('StructureDefinition_Mapping','22f','$deviceId','0000',0,'$time'),
				('StructureDefinition_Context','230','$deviceId','0000',0,'$time'),
				('StructureDefinition_Snapshot','231','$deviceId','0000',0,'$time'),
				('StructureDefinition_Differential','232','$deviceId','0000',0,'$time'),
				('StructureMap','233','$deviceId','0000',0,'$time'),
				('StructureMap_Structure','234','$deviceId','0000',0,'$time'),
				('StructureMap_Group','235','$deviceId','0000',0,'$time'),
				('StructureMap_Input','236','$deviceId','0000',0,'$time'),
				('StructureMap_Rule','237','$deviceId','0000',0,'$time'),
				('StructureMap_Source','238','$deviceId','0000',0,'$time'),
				('StructureMap_Target','239','$deviceId','0000',0,'$time'),
				('StructureMap_Parameter','23a','$deviceId','0000',0,'$time'),
				('StructureMap_Dependent','23b','$deviceId','0000',0,'$time'),
				('Subscription','23c','$deviceId','0000',0,'$time'),
				('Subscription_Channel','23d','$deviceId','0000',0,'$time'),
				('Substance','23e','$deviceId','0000',0,'$time'),
				('Substance_Instance','23f','$deviceId','0000',0,'$time'),
				('Substance_Ingredient','240','$deviceId','0000',0,'$time'),
				('SubstanceNucleicAcid','241','$deviceId','0000',0,'$time'),
				('SubstanceNucleicAcid_Subunit','242','$deviceId','0000',0,'$time'),
				('SubstanceNucleicAcid_Linkage','243','$deviceId','0000',0,'$time'),
				('SubstanceNucleicAcid_Sugar','244','$deviceId','0000',0,'$time'),
				('SubstancePolymer','245','$deviceId','0000',0,'$time'),
				('SubstancePolymer_MonomerSet','246','$deviceId','0000',0,'$time'),
				('SubstancePolymer_StartingMaterial','247','$deviceId','0000',0,'$time'),
				('SubstancePolymer_Repeat','248','$deviceId','0000',0,'$time'),
				('SubstancePolymer_RepeatUnit','249','$deviceId','0000',0,'$time'),
				('SubstancePolymer_DegreeOfPolymerisation','24a','$deviceId','0000',0,'$time'),
				('SubstancePolymer_StructuralRepresentation','24b','$deviceId','0000',0,'$time'),
				('SubstanceProtein','24c','$deviceId','0000',0,'$time'),
				('SubstanceProtein_Subunit','24d','$deviceId','0000',0,'$time'),
				('SubstanceReferenceInformation','24e','$deviceId','0000',0,'$time'),
				('SubstanceReferenceInformation_Gene','24f','$deviceId','0000',0,'$time'),
				('SubstanceReferenceInformation_GeneElement','250','$deviceId','0000',0,'$time'),
				('SubstanceReferenceInformation_Classification','251','$deviceId','0000',0,'$time'),
				('SubstanceReferenceInformation_Target','252','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial','253','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial_FractionDescription','254','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial_Organism','255','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial_Author','256','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial_Hybrid','257','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial_OrganismGeneral','258','$deviceId','0000',0,'$time'),
				('SubstanceSourceMaterial_PartDescription','259','$deviceId','0000',0,'$time'),
				('SubstanceSpecification','25a','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Moiety','25b','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Property','25c','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Structure','25d','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Isotope','25e','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_MolecularWeight','25f','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Representation','260','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Code','261','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Name','262','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Official','263','$deviceId','0000',0,'$time'),
				('SubstanceSpecification_Relationship','264','$deviceId','0000',0,'$time'),
				('SupplyDelivery','265','$deviceId','0000',0,'$time'),
				('SupplyDelivery_SuppliedItem','266','$deviceId','0000',0,'$time'),
				('SupplyRequest','267','$deviceId','0000',0,'$time'),
				('SupplyRequest_Parameter','268','$deviceId','0000',0,'$time'),
				('Task','269','$deviceId','0000',0,'$time'),
				('Task_Restriction','26a','$deviceId','0000',0,'$time'),
				('Task_Input','26b','$deviceId','0000',0,'$time'),
				('Task_Output','26c','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities','26d','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Software','26e','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Implementation','26f','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_CodeSystem','270','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Version','271','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Filter','272','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Expansion','273','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Parameter','274','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_ValidateCode','275','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Translation','276','$deviceId','0000',0,'$time'),
				('TerminologyCapabilities_Closure','277','$deviceId','0000',0,'$time'),
				('TestReport','278','$deviceId','0000',0,'$time'),
				('TestReport_Participant','279','$deviceId','0000',0,'$time'),
				('TestReport_Setup','27a','$deviceId','0000',0,'$time'),
				('TestReport_Action','27b','$deviceId','0000',0,'$time'),
				('TestReport_Operation','27c','$deviceId','0000',0,'$time'),
				('TestReport_Assert','27d','$deviceId','0000',0,'$time'),
				('TestReport_Test','27e','$deviceId','0000',0,'$time'),
				('TestReport_Action1','27f','$deviceId','0000',0,'$time'),
				('TestReport_Teardown','280','$deviceId','0000',0,'$time'),
				('TestReport_Action2','281','$deviceId','0000',0,'$time'),
				('TestScript','282','$deviceId','0000',0,'$time'),
				('TestScript_Origin','283','$deviceId','0000',0,'$time'),
				('TestScript_Destination','284','$deviceId','0000',0,'$time'),
				('TestScript_Metadata','285','$deviceId','0000',0,'$time'),
				('TestScript_Link','286','$deviceId','0000',0,'$time'),
				('TestScript_Capability','287','$deviceId','0000',0,'$time'),
				('TestScript_Fixture','288','$deviceId','0000',0,'$time'),
				('TestScript_Variable','289','$deviceId','0000',0,'$time'),
				('TestScript_Setup','28a','$deviceId','0000',0,'$time'),
				('TestScript_Action','28b','$deviceId','0000',0,'$time'),
				('TestScript_Operation','28c','$deviceId','0000',0,'$time'),
				('TestScript_RequestHeader','28d','$deviceId','0000',0,'$time'),
				('TestScript_Assert','28e','$deviceId','0000',0,'$time'),
				('TestScript_Test','28f','$deviceId','0000',0,'$time'),
				('TestScript_Action1','290','$deviceId','0000',0,'$time'),
				('TestScript_Teardown','291','$deviceId','0000',0,'$time'),
				('TestScript_Action2','292','$deviceId','0000',0,'$time'),
				('ValueSet','293','$deviceId','0000',0,'$time'),
				('ValueSet_Compose','294','$deviceId','0000',0,'$time'),
				('ValueSet_Include','295','$deviceId','0000',0,'$time'),
				('ValueSet_Concept','296','$deviceId','0000',0,'$time'),
				('ValueSet_Designation','297','$deviceId','0000',0,'$time'),
				('ValueSet_Filter','298','$deviceId','0000',0,'$time'),
				('ValueSet_Expansion','299','$deviceId','0000',0,'$time'),
				('ValueSet_Parameter','29a','$deviceId','0000',0,'$time'),
				('ValueSet_Contains','29b','$deviceId','0000',0,'$time'),
				('VerificationResult','29c','$deviceId','0000',0,'$time'),
				('VerificationResult_PrimarySource','29d','$deviceId','0000',0,'$time'),
				('VerificationResult_Attestation','29e','$deviceId','0000',0,'$time'),
				('VerificationResult_Validator','29f','$deviceId','0000',0,'$time'),
				('VisionPrescription','2a0','$deviceId','0000',0,'$time'),
				('VisionPrescription_LensSpecification','2a1','$deviceId','0000',0,'$time'),
				('VisionPrescription_Prism','2a2','$deviceId','0000',0, '$time')
				''');
  }
}
