import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class EpisodeOfCare {
  static Future<EpisodeOfCare> newInstance({
    String resourceType,
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
    List<Reference> account,
  }) async {
    var fhirDb = new DatabaseHelper();
    EpisodeOfCare newEpisodeOfCare = new EpisodeOfCare(
      resourceType: 'EpisodeOfCare',
      id: id ?? await fhirDb.newResourceId('EpisodeOfCare'),
      meta: meta ?? await Meta.newInstance(),
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
      account: account,
    );
    newEpisodeOfCare.meta.createdAt = DateTime.now();
    newEpisodeOfCare.meta.lastUpdated = newEpisodeOfCare.meta.createdAt;
    int saved = await fhirDb.saveResource(newEpisodeOfCare);
    return newEpisodeOfCare;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'EpisodeOfCare';
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
  String status;
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

  EpisodeOfCare({
    @required this.resourceType,
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
    this.type,
    this.diagnosis,
    @required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account,
  });

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCareToJson(this);
}

class EpisodeOfCare_StatusHistory {
  static Future<EpisodeOfCare_StatusHistory> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String status,
    Element elementStatus,
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    EpisodeOfCare_StatusHistory newEpisodeOfCare_StatusHistory =
        new EpisodeOfCare_StatusHistory(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      status: status,
      elementStatus: elementStatus,
      period: period,
    );
    return newEpisodeOfCare_StatusHistory;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String status;
  @HiveField(4)
  Element elementStatus;
  @HiveField(5)
  Period period;

  EpisodeOfCare_StatusHistory({
    this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus,
    @required this.period,
  });

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_StatusHistoryToJson(this);
}

class EpisodeOfCare_Diagnosis {
  static Future<EpisodeOfCare_Diagnosis> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference condition,
    CodeableConcept role,
    int rank,
    Element elementRank,
  }) async {
    var fhirDb = new DatabaseHelper();
    EpisodeOfCare_Diagnosis newEpisodeOfCare_Diagnosis =
        new EpisodeOfCare_Diagnosis(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      condition: condition,
      role: role,
      rank: rank,
      elementRank: elementRank,
    );
    return newEpisodeOfCare_Diagnosis;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference condition;
  @HiveField(4)
  CodeableConcept role;
  @HiveField(5)
  int rank;
  @HiveField(6)
  Element elementRank;

  EpisodeOfCare_Diagnosis({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.condition,
    this.role,
    this.rank,
    this.elementRank,
  });

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_DiagnosisToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeOfCare _$EpisodeOfCareFromJson(Map<String, dynamic> json) {
  return EpisodeOfCare(
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$EpisodeOfCareToJson(EpisodeOfCare instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusHistory',
      instance.statusHistory?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e?.toJson())?.toList());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('managingOrganization', instance.managingOrganization?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('referralRequest',
      instance.referralRequest?.map((e) => e?.toJson())?.toList());
  writeNotNull('careManager', instance.careManager?.toJson());
  writeNotNull('team', instance.team?.map((e) => e?.toJson())?.toList());
  writeNotNull('account', instance.account?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    EpisodeOfCare_StatusHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

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
    EpisodeOfCare_Diagnosis instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('rank', instance.rank);
  writeNotNull('elementRank', instance.elementRank?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EpisodeOfCareAdapter extends TypeAdapter<EpisodeOfCare> {
  @override
  EpisodeOfCare read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare(
      resourceType: fields[0] as String,
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

class EpisodeOfCare_StatusHistoryAdapter
    extends TypeAdapter<EpisodeOfCare_StatusHistory> {
  @override
  EpisodeOfCare_StatusHistory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare_StatusHistory(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      status: fields[3] as String,
      elementStatus: fields[4] as Element,
      period: fields[5] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeOfCare_StatusHistory obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.elementStatus)
      ..writeByte(5)
      ..write(obj.period);
  }
}

class EpisodeOfCare_DiagnosisAdapter
    extends TypeAdapter<EpisodeOfCare_Diagnosis> {
  @override
  EpisodeOfCare_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EpisodeOfCare_Diagnosis(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      condition: fields[3] as Reference,
      role: fields[4] as CodeableConcept,
      rank: fields[5] as int,
      elementRank: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, EpisodeOfCare_Diagnosis obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.condition)
      ..writeByte(4)
      ..write(obj.role)
      ..writeByte(5)
      ..write(obj.rank)
      ..writeByte(6)
      ..write(obj.elementRank);
  }
}
