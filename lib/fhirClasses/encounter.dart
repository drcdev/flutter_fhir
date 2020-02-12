import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 99)
class Encounter {

	static Future<Encounter> newInstance({
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
	Encounter newEncounter = new Encounter(
			id: await newId('Encounter'),
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
			partOf: partOf);
	var encounterBox = await Hive.openBox<Encounter>('EncounterBox');
	encounterBox.add(newEncounter);
	return newEncounter;
}
  @HiveField(0)
  final String resourceType= 'Encounter';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  List<Encounter_StatusHistory> statusHistory;
  @HiveField(15)
  Coding classs;
  @HiveField(16)
  List<Encounter_ClassHistory> classHistory;
  @HiveField(17)
  List<CodeableConcept> type;
  @HiveField(18)
  CodeableConcept serviceType;
  @HiveField(19)
  CodeableConcept priority;
  @HiveField(20)
  Reference subject;
  @HiveField(21)
  List<Reference> episodeOfCare;
  @HiveField(22)
  List<Reference> basedOn;
  @HiveField(23)
  List<Encounter_Participant> participant;
  @HiveField(24)
  List<Reference> appointment;
  @HiveField(25)
  Period period;
  @HiveField(26)
  Duration length;
  @HiveField(27)
  List<CodeableConcept> reasonCode;
  @HiveField(28)
  List<Reference> reasonReference;
  @HiveField(29)
  List<Encounter_Diagnosis> diagnosis;
  @HiveField(30)
  List<Reference> account;
  @HiveField(31)
  Encounter_Hospitalization hospitalization;
  @HiveField(32)
  List<Encounter_Location> location;
  @HiveField(33)
  Reference serviceProvider;
  @HiveField(34)
  Reference partOf;

Encounter(
  {this.id,
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
	Encounter_StatusHistory newEncounter_StatusHistory = new Encounter_StatusHistory(
			id: await newId('Encounter_StatusHistory'),
			extension: extension,
			modifierExtension: modifierExtension,
			status: status,
			elementStatus: elementStatus,
			period: period);
	var encounter_StatusHistoryBox = await Hive.openBox<Encounter_StatusHistory>('Encounter_StatusHistoryBox');
	encounter_StatusHistoryBox.add(newEncounter_StatusHistory);
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
	Encounter_ClassHistory newEncounter_ClassHistory = new Encounter_ClassHistory(
			id: await newId('Encounter_ClassHistory'),
			extension: extension,
			modifierExtension: modifierExtension,
			classs: classs,
			period: period);
	var encounter_ClassHistoryBox = await Hive.openBox<Encounter_ClassHistory>('Encounter_ClassHistoryBox');
	encounter_ClassHistoryBox.add(newEncounter_ClassHistory);
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
	Encounter_Participant newEncounter_Participant = new Encounter_Participant(
			id: await newId('Encounter_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			period: period,
			individual: individual);
	var encounter_ParticipantBox = await Hive.openBox<Encounter_Participant>('Encounter_ParticipantBox');
	encounter_ParticipantBox.add(newEncounter_Participant);
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
	Encounter_Diagnosis newEncounter_Diagnosis = new Encounter_Diagnosis(
			id: await newId('Encounter_Diagnosis'),
			extension: extension,
			modifierExtension: modifierExtension,
			condition: condition,
			use: use,
			rank: rank,
			elementRank: elementRank);
	var encounter_DiagnosisBox = await Hive.openBox<Encounter_Diagnosis>('Encounter_DiagnosisBox');
	encounter_DiagnosisBox.add(newEncounter_Diagnosis);
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
	Encounter_Hospitalization newEncounter_Hospitalization = new Encounter_Hospitalization(
			id: await newId('Encounter_Hospitalization'),
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
			dischargeDisposition: dischargeDisposition);
	var encounter_HospitalizationBox = await Hive.openBox<Encounter_Hospitalization>('Encounter_HospitalizationBox');
	encounter_HospitalizationBox.add(newEncounter_Hospitalization);
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
	Encounter_Location newEncounter_Location = new Encounter_Location(
			id: await newId('Encounter_Location'),
			extension: extension,
			modifierExtension: modifierExtension,
			location: location,
			status: status,
			elementStatus: elementStatus,
			physicalType: physicalType,
			period: period);
	var encounter_LocationBox = await Hive.openBox<Encounter_Location>('Encounter_LocationBox');
	encounter_LocationBox.add(newEncounter_Location);
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
// TypeAdapterGenerator
// **************************************************************************

class EncounterAdapter extends TypeAdapter<Encounter> {
  @override
  final typeId = 99;

  @override
  Encounter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusHistory: (fields[14] as List)?.cast<Encounter_StatusHistory>(),
      classs: fields[15] as Coding,
      classHistory: (fields[16] as List)?.cast<Encounter_ClassHistory>(),
      type: (fields[17] as List)?.cast<CodeableConcept>(),
      serviceType: fields[18] as CodeableConcept,
      priority: fields[19] as CodeableConcept,
      subject: fields[20] as Reference,
      episodeOfCare: (fields[21] as List)?.cast<Reference>(),
      basedOn: (fields[22] as List)?.cast<Reference>(),
      participant: (fields[23] as List)?.cast<Encounter_Participant>(),
      appointment: (fields[24] as List)?.cast<Reference>(),
      period: fields[25] as Period,
      length: fields[26] as Duration,
      reasonCode: (fields[27] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[28] as List)?.cast<Reference>(),
      diagnosis: (fields[29] as List)?.cast<Encounter_Diagnosis>(),
      account: (fields[30] as List)?.cast<Reference>(),
      hospitalization: fields[31] as Encounter_Hospitalization,
      location: (fields[32] as List)?.cast<Encounter_Location>(),
      serviceProvider: fields[33] as Reference,
      partOf: fields[34] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter obj) {
    writer
      ..writeByte(35)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusHistory)
      ..writeByte(15)
      ..write(obj.classs)
      ..writeByte(16)
      ..write(obj.classHistory)
      ..writeByte(17)
      ..write(obj.type)
      ..writeByte(18)
      ..write(obj.serviceType)
      ..writeByte(19)
      ..write(obj.priority)
      ..writeByte(20)
      ..write(obj.subject)
      ..writeByte(21)
      ..write(obj.episodeOfCare)
      ..writeByte(22)
      ..write(obj.basedOn)
      ..writeByte(23)
      ..write(obj.participant)
      ..writeByte(24)
      ..write(obj.appointment)
      ..writeByte(25)
      ..write(obj.period)
      ..writeByte(26)
      ..write(obj.length)
      ..writeByte(27)
      ..write(obj.reasonCode)
      ..writeByte(28)
      ..write(obj.reasonReference)
      ..writeByte(29)
      ..write(obj.diagnosis)
      ..writeByte(30)
      ..write(obj.account)
      ..writeByte(31)
      ..write(obj.hospitalization)
      ..writeByte(32)
      ..write(obj.location)
      ..writeByte(33)
      ..write(obj.serviceProvider)
      ..writeByte(34)
      ..write(obj.partOf);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Encounter _$EncounterFromJson(Map<String, dynamic> json) {
  return Encounter(
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
