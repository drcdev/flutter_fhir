import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 103)
class EpisodeOfCare {

	static Future<EpisodeOfCare> newInstance({
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
		List<EpisodeOfCare_StatusHistory> statusHistory,
		List<CodeableConcept> type,
		List<EpisodeOfCare_Diagnosis> diagnosis,
		Reference patient,
		Reference managingOrganization,
		Period period,
		List<Reference> referralRequest,
		Reference careManager,
		List<Reference> team,
		List<Reference> account}) async {
	EpisodeOfCare newEpisodeOfCare = new EpisodeOfCare(
			id: await newId('EpisodeOfCare'),
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
			type: type,
			diagnosis: diagnosis,
			patient: patient,
			managingOrganization: managingOrganization,
			period: period,
			referralRequest: referralRequest,
			careManager: careManager,
			team: team,
			account: account);
	var episodeOfCareBox = await Hive.openBox<EpisodeOfCare>('EpisodeOfCareBox');
	episodeOfCareBox.add(newEpisodeOfCare);
	return newEpisodeOfCare;
}
  @HiveField(0)
  final String resourceType= 'EpisodeOfCare';
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
  String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  List<EpisodeOfCare_StatusHistory> statusHistory;
  @HiveField(15)
  List<CodeableConcept> type;
  @HiveField(16)
  List<EpisodeOfCare_Diagnosis> diagnosis;
  @HiveField(17)
  Reference patient;
  @HiveField(18)
  Reference managingOrganization;
  @HiveField(19)
  Period period;
  @HiveField(20)
  List<Reference> referralRequest;
  @HiveField(21)
  Reference careManager;
  @HiveField(22)
  List<Reference> team;
  @HiveField(23)
  List<Reference> account;

EpisodeOfCare(
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
    this.type,
    this.diagnosis,
    @required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account
    });

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) => _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_StatusHistory {

	static Future<EpisodeOfCare_StatusHistory> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String status,
		Element elementStatus,
		Period period}) async {
	EpisodeOfCare_StatusHistory newEpisodeOfCare_StatusHistory = new EpisodeOfCare_StatusHistory(
			id: await newId('EpisodeOfCare_StatusHistory'),
			extension: extension,
			modifierExtension: modifierExtension,
			status: status,
			elementStatus: elementStatus,
			period: period);
	var episodeOfCare_StatusHistoryBox = await Hive.openBox<EpisodeOfCare_StatusHistory>('EpisodeOfCare_StatusHistoryBox');
	episodeOfCare_StatusHistoryBox.add(newEpisodeOfCare_StatusHistory);
	return newEpisodeOfCare_StatusHistory;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
  Element elementStatus;
  Period period;

EpisodeOfCare_StatusHistory(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus,
    @required this.period
    });

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_Diagnosis {

	static Future<EpisodeOfCare_Diagnosis> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference condition,
		CodeableConcept role,
		int rank,
		Element elementRank}) async {
	EpisodeOfCare_Diagnosis newEpisodeOfCare_Diagnosis = new EpisodeOfCare_Diagnosis(
			id: await newId('EpisodeOfCare_Diagnosis'),
			extension: extension,
			modifierExtension: modifierExtension,
			condition: condition,
			role: role,
			rank: rank,
			elementRank: elementRank);
	var episodeOfCare_DiagnosisBox = await Hive.openBox<EpisodeOfCare_Diagnosis>('EpisodeOfCare_DiagnosisBox');
	episodeOfCare_DiagnosisBox.add(newEpisodeOfCare_Diagnosis);
	return newEpisodeOfCare_Diagnosis;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference condition;
  CodeableConcept role;
  int rank;
  Element elementRank;

EpisodeOfCare_Diagnosis(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.condition,
    this.role,
    this.rank,
    this.elementRank
    });

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_DiagnosisToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EpisodeOfCareAdapter extends TypeAdapter<EpisodeOfCare> {
  @override
  final typeId = 103;

  @override
  EpisodeOfCare read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare(
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
      statusHistory: (fields[14] as List)?.cast<EpisodeOfCare_StatusHistory>(),
      type: (fields[15] as List)?.cast<CodeableConcept>(),
      diagnosis: (fields[16] as List)?.cast<EpisodeOfCare_Diagnosis>(),
      patient: fields[17] as Reference,
      managingOrganization: fields[18] as Reference,
      period: fields[19] as Period,
      referralRequest: (fields[20] as List)?.cast<Reference>(),
      careManager: fields[21] as Reference,
      team: (fields[22] as List)?.cast<Reference>(),
      account: (fields[23] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeOfCare obj) {
    writer
      ..writeByte(24)
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
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.diagnosis)
      ..writeByte(17)
      ..write(obj.patient)
      ..writeByte(18)
      ..write(obj.managingOrganization)
      ..writeByte(19)
      ..write(obj.period)
      ..writeByte(20)
      ..write(obj.referralRequest)
      ..writeByte(21)
      ..write(obj.careManager)
      ..writeByte(22)
      ..write(obj.team)
      ..writeByte(23)
      ..write(obj.account);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeOfCare _$EpisodeOfCareFromJson(Map<String, dynamic> json) {
  return EpisodeOfCare(
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
            : EpisodeOfCare_StatusHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : EpisodeOfCare_Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    referralRequest: (json['referralRequest'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careManager: json['careManager'] == null
        ? null
        : Reference.fromJson(json['careManager'] as Map<String, dynamic>),
    team: (json['team'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    account: (json['account'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EpisodeOfCareToJson(EpisodeOfCare instance) =>
    <String, dynamic>{
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
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'period': instance.period?.toJson(),
      'referralRequest':
          instance.referralRequest?.map((e) => e?.toJson())?.toList(),
      'careManager': instance.careManager?.toJson(),
      'team': instance.team?.map((e) => e?.toJson())?.toList(),
      'account': instance.account?.map((e) => e?.toJson())?.toList(),
    };

EpisodeOfCare_StatusHistory _$EpisodeOfCare_StatusHistoryFromJson(
    Map<String, dynamic> json) {
  return EpisodeOfCare_StatusHistory(
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

Map<String, dynamic> _$EpisodeOfCare_StatusHistoryToJson(
        EpisodeOfCare_StatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
    };

EpisodeOfCare_Diagnosis _$EpisodeOfCare_DiagnosisFromJson(
    Map<String, dynamic> json) {
  return EpisodeOfCare_Diagnosis(
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
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    elementRank: json['elementRank'] == null
        ? null
        : Element.fromJson(json['elementRank'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EpisodeOfCare_DiagnosisToJson(
        EpisodeOfCare_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.toJson(),
      'role': instance.role?.toJson(),
      'rank': instance.rank,
      'elementRank': instance.elementRank?.toJson(),
    };
