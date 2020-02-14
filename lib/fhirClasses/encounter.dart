import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {


	static Future<Encounter> newInstance({
		String  resourceType,
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		String status,
		Element elementStatus,
		List<Encounter_StatusHistory> statusHistory,
		Coding classs,
		List<Encounter_ClassHistory> classHistory,
		List<CodeableConcept> type,
		CodeableConcept serviceType,
		CodeableConcept priority,
		Reference subject,
		List<Reference> episodeOfCare,
		List<Reference> basedOn,
		List<Encounter_Participant> participant,
		List<Reference> appointment,
		Period period,
		Duration length,
		List<CodeableConcept> reasonCode,
		List<Reference> reasonReference,
		List<Encounter_Diagnosis> diagnosis,
		List<Reference> account,
		Encounter_Hospitalization hospitalization,
		List<Encounter_Location> location,
		Reference serviceProvider,
		Reference partOf}) async {
	var fhirDb = new DatabaseHelper();
	Encounter newEncounter = new Encounter(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('Encounter'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			status: status,
			elementStatus: elementStatus,
			statusHistory: statusHistory,
			classs: classs,
			classHistory: classHistory,
			type: type,
			serviceType: serviceType,
			priority: priority,
			subject: subject,
			episodeOfCare: episodeOfCare,
			basedOn: basedOn,
			participant: participant,
			appointment: appointment,
			period: period,
			length: length,
			reasonCode: reasonCode,
			reasonReference: reasonReference,
			diagnosis: diagnosis,
			account: account,
			hospitalization: hospitalization,
			location: location,
			serviceProvider: serviceProvider,
			partOf: partOf,
);
	int saved = await fhirDb.saveResource(newEncounter);
	return newEncounter;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String resourceType= 'Encounter';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
  Element elementStatus;
  List<Encounter_StatusHistory> statusHistory;
  Coding classs;
  List<Encounter_ClassHistory> classHistory;
  List<CodeableConcept> type;
  CodeableConcept serviceType;
  CodeableConcept priority;
  Reference subject;
  List<Reference> episodeOfCare;
  List<Reference> basedOn;
  List<Encounter_Participant> participant;
  List<Reference> appointment;
  Period period;
  Duration length;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Encounter_Diagnosis> diagnosis;
  List<Reference> account;
  Encounter_Hospitalization hospitalization;
  List<Encounter_Location> location;
  Reference serviceProvider;
  Reference partOf;

Encounter(
  {@required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.statusHistory,
    @required this.classs,
    this.classHistory,
    this.type,
    this.serviceType,
    this.priority,
    this.subject,
    this.episodeOfCare,
    this.basedOn,
    this.participant,
    this.appointment,
    this.period,
    this.length,
    this.reasonCode,
    this.reasonReference,
    this.diagnosis,
    this.account,
    this.hospitalization,
    this.location,
    this.serviceProvider,
    this.partOf
    });

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_StatusHistory {


	static Future<Encounter_StatusHistory> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String status,
		Element elementStatus,
		Period period}) async {
	var fhirDb = new DatabaseHelper();
	Encounter_StatusHistory newEncounter_StatusHistory = new Encounter_StatusHistory(
			id: await fhirDb.newResourceId('Encounter_StatusHistory'),
			extension: extension,
			modifierExtension: modifierExtension,
			status: status,
			elementStatus: elementStatus,
			period: period,
);
	return newEncounter_StatusHistory;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
  Element elementStatus;
  Period period;

Encounter_StatusHistory(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus,
    @required this.period
    });

  factory Encounter_StatusHistory.fromJson(Map<String, dynamic> json) => _$Encounter_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_ClassHistory {


	static Future<Encounter_ClassHistory> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Coding classs,
		Period period}) async {
	var fhirDb = new DatabaseHelper();
	Encounter_ClassHistory newEncounter_ClassHistory = new Encounter_ClassHistory(
			id: await fhirDb.newResourceId('Encounter_ClassHistory'),
			extension: extension,
			modifierExtension: modifierExtension,
			classs: classs,
			period: period,
);
	return newEncounter_ClassHistory;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding classs;
  Period period;

Encounter_ClassHistory(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.classs,
    @required this.period
    });

  factory Encounter_ClassHistory.fromJson(Map<String, dynamic> json) => _$Encounter_ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Participant {


	static Future<Encounter_Participant> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> type,
		Period period,
		Reference individual}) async {
	var fhirDb = new DatabaseHelper();
	Encounter_Participant newEncounter_Participant = new Encounter_Participant(
			id: await fhirDb.newResourceId('Encounter_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			period: period,
			individual: individual,
);
	return newEncounter_Participant;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> type;
  Period period;
  Reference individual;

Encounter_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.period,
    this.individual
    });

  factory Encounter_Participant.fromJson(Map<String, dynamic> json) => _$Encounter_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Diagnosis {


	static Future<Encounter_Diagnosis> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference condition,
		CodeableConcept use,
		int rank,
		Element elementRank}) async {
	var fhirDb = new DatabaseHelper();
	Encounter_Diagnosis newEncounter_Diagnosis = new Encounter_Diagnosis(
			id: await fhirDb.newResourceId('Encounter_Diagnosis'),
			extension: extension,
			modifierExtension: modifierExtension,
			condition: condition,
			use: use,
			rank: rank,
			elementRank: elementRank,
);
	return newEncounter_Diagnosis;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference condition;
  CodeableConcept use;
  int rank;
  Element elementRank;

Encounter_Diagnosis(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.condition,
    this.use,
    this.rank,
    this.elementRank
    });

  factory Encounter_Diagnosis.fromJson(Map<String, dynamic> json) => _$Encounter_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Hospitalization {


	static Future<Encounter_Hospitalization> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier preAdmissionIdentifier,
		Reference origin,
		CodeableConcept admitSource,
		CodeableConcept reAdmission,
		List<CodeableConcept> dietPreference,
		List<CodeableConcept> specialCourtesy,
		List<CodeableConcept> specialArrangement,
		Reference destination,
		CodeableConcept dischargeDisposition}) async {
	var fhirDb = new DatabaseHelper();
	Encounter_Hospitalization newEncounter_Hospitalization = new Encounter_Hospitalization(
			id: await fhirDb.newResourceId('Encounter_Hospitalization'),
			extension: extension,
			modifierExtension: modifierExtension,
			preAdmissionIdentifier: preAdmissionIdentifier,
			origin: origin,
			admitSource: admitSource,
			reAdmission: reAdmission,
			dietPreference: dietPreference,
			specialCourtesy: specialCourtesy,
			specialArrangement: specialArrangement,
			destination: destination,
			dischargeDisposition: dischargeDisposition,
);
	return newEncounter_Hospitalization;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier preAdmissionIdentifier;
  Reference origin;
  CodeableConcept admitSource;
  CodeableConcept reAdmission;
  List<CodeableConcept> dietPreference;
  List<CodeableConcept> specialCourtesy;
  List<CodeableConcept> specialArrangement;
  Reference destination;
  CodeableConcept dischargeDisposition;

Encounter_Hospitalization(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.preAdmissionIdentifier,
    this.origin,
    this.admitSource,
    this.reAdmission,
    this.dietPreference,
    this.specialCourtesy,
    this.specialArrangement,
    this.destination,
    this.dischargeDisposition
    });

  factory Encounter_Hospitalization.fromJson(Map<String, dynamic> json) => _$Encounter_HospitalizationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_HospitalizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Location {


	static Future<Encounter_Location> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference location,
		String status,
		Element elementStatus,
		CodeableConcept physicalType,
		Period period}) async {
	var fhirDb = new DatabaseHelper();
	Encounter_Location newEncounter_Location = new Encounter_Location(
			id: await fhirDb.newResourceId('Encounter_Location'),
			extension: extension,
			modifierExtension: modifierExtension,
			location: location,
			status: status,
			elementStatus: elementStatus,
			physicalType: physicalType,
			period: period,
);
	return newEncounter_Location;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference location;
  String status; // <code> enum: planned/active/reserved/completed;
  Element elementStatus;
  CodeableConcept physicalType;
  Period period;

Encounter_Location(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.location,
    this.status,
    this.elementStatus,
    this.physicalType,
    this.period
    });

  factory Encounter_Location.fromJson(Map<String, dynamic> json) => _$Encounter_LocationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_LocationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Encounter _$EncounterFromJson(Map<String, dynamic> json) {
  return Encounter(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusHistory: (json['statusHistory'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_StatusHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: json['classs'] == null
        ? null
        : Coding.fromJson(json['classs'] as Map<String, dynamic>),
    classHistory: (json['classHistory'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_ClassHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceType: json['serviceType'] == null
        ? null
        : CodeableConcept.fromJson(json['serviceType'] as Map<String, dynamic>),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    episodeOfCare: (json['episodeOfCare'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    appointment: (json['appointment'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    length: json['length'] == null
        ? null
        : Duration.fromJson(json['length'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    account: (json['account'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hospitalization: json['hospitalization'] == null
        ? null
        : Encounter_Hospitalization.fromJson(
            json['hospitalization'] as Map<String, dynamic>),
    location: (json['location'] as List)
        ?.map((e) => e == null
            ? null
            : Encounter_Location.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceProvider: json['serviceProvider'] == null
        ? null
        : Reference.fromJson(json['serviceProvider'] as Map<String, dynamic>),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EncounterToJson(Encounter instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusHistory':
          instance.statusHistory?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.toJson(),
      'classHistory': instance.classHistory?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'serviceType': instance.serviceType?.toJson(),
      'priority': instance.priority?.toJson(),
      'subject': instance.subject?.toJson(),
      'episodeOfCare':
          instance.episodeOfCare?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'appointment': instance.appointment?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'length': instance.length?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'account': instance.account?.map((e) => e?.toJson())?.toList(),
      'hospitalization': instance.hospitalization?.toJson(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'serviceProvider': instance.serviceProvider?.toJson(),
      'partOf': instance.partOf?.toJson(),
    };

Encounter_StatusHistory _$Encounter_StatusHistoryFromJson(
    Map<String, dynamic> json) {
  return Encounter_StatusHistory(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_StatusHistoryToJson(
        Encounter_StatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
    };

Encounter_ClassHistory _$Encounter_ClassHistoryFromJson(
    Map<String, dynamic> json) {
  return Encounter_ClassHistory(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: json['classs'] == null
        ? null
        : Coding.fromJson(json['classs'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_ClassHistoryToJson(
        Encounter_ClassHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.toJson(),
      'period': instance.period?.toJson(),
    };

Encounter_Participant _$Encounter_ParticipantFromJson(
    Map<String, dynamic> json) {
  return Encounter_Participant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    individual: json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_ParticipantToJson(
        Encounter_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'individual': instance.individual?.toJson(),
    };

Encounter_Diagnosis _$Encounter_DiagnosisFromJson(Map<String, dynamic> json) {
  return Encounter_Diagnosis(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] == null
        ? null
        : Reference.fromJson(json['condition'] as Map<String, dynamic>),
    use: json['use'] == null
        ? null
        : CodeableConcept.fromJson(json['use'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    elementRank: json['elementRank'] == null
        ? null
        : Element.fromJson(json['elementRank'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_DiagnosisToJson(
        Encounter_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.toJson(),
      'use': instance.use?.toJson(),
      'rank': instance.rank,
      'elementRank': instance.elementRank?.toJson(),
    };

Encounter_Hospitalization _$Encounter_HospitalizationFromJson(
    Map<String, dynamic> json) {
  return Encounter_Hospitalization(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preAdmissionIdentifier: json['preAdmissionIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['preAdmissionIdentifier'] as Map<String, dynamic>),
    origin: json['origin'] == null
        ? null
        : Reference.fromJson(json['origin'] as Map<String, dynamic>),
    admitSource: json['admitSource'] == null
        ? null
        : CodeableConcept.fromJson(json['admitSource'] as Map<String, dynamic>),
    reAdmission: json['reAdmission'] == null
        ? null
        : CodeableConcept.fromJson(json['reAdmission'] as Map<String, dynamic>),
    dietPreference: (json['dietPreference'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialCourtesy: (json['specialCourtesy'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialArrangement: (json['specialArrangement'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: json['destination'] == null
        ? null
        : Reference.fromJson(json['destination'] as Map<String, dynamic>),
    dischargeDisposition: json['dischargeDisposition'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dischargeDisposition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_HospitalizationToJson(
        Encounter_Hospitalization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'preAdmissionIdentifier': instance.preAdmissionIdentifier?.toJson(),
      'origin': instance.origin?.toJson(),
      'admitSource': instance.admitSource?.toJson(),
      'reAdmission': instance.reAdmission?.toJson(),
      'dietPreference':
          instance.dietPreference?.map((e) => e?.toJson())?.toList(),
      'specialCourtesy':
          instance.specialCourtesy?.map((e) => e?.toJson())?.toList(),
      'specialArrangement':
          instance.specialArrangement?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination?.toJson(),
      'dischargeDisposition': instance.dischargeDisposition?.toJson(),
    };

Encounter_Location _$Encounter_LocationFromJson(Map<String, dynamic> json) {
  return Encounter_Location(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    physicalType: json['physicalType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['physicalType'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Encounter_LocationToJson(Encounter_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'physicalType': instance.physicalType?.toJson(),
      'period': instance.period?.toJson(),
    };
