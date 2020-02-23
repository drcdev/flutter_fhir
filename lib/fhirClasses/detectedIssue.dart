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

class DetectedIssue {
  static Future<DetectedIssue> newInstance({
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
    CodeableConcept code,
    String severity,
    Element elementSeverity,
    Reference patient,
    String identifiedDateTime,
    Element elementIdentifiedDateTime,
    Period identifiedPeriod,
    Reference author,
    List<Reference> implicated,
    List<DetectedIssue_Evidence> evidence,
    String detail,
    Element elementDetail,
    String reference,
    Element elementReference,
    List<DetectedIssue_Mitigation> mitigation,
  }) async {
    var fhirDb = new DatabaseHelper();
    DetectedIssue newDetectedIssue = new DetectedIssue(
      resourceType: 'DetectedIssue',
      id: id ?? await fhirDb.newResourceId('DetectedIssue'),
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
      code: code,
      severity: severity,
      elementSeverity: elementSeverity,
      patient: patient,
      identifiedDateTime: identifiedDateTime,
      elementIdentifiedDateTime: elementIdentifiedDateTime,
      identifiedPeriod: identifiedPeriod,
      author: author,
      implicated: implicated,
      evidence: evidence,
      detail: detail,
      elementDetail: elementDetail,
      reference: reference,
      elementReference: elementReference,
      mitigation: mitigation,
    );
    newDetectedIssue.meta.createdAt = DateTime.now();
    newDetectedIssue.meta.lastUpdated = newDetectedIssue.meta.createdAt;
    int saved = await fhirDb.saveResource(newDetectedIssue);
    return newDetectedIssue;
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
  String resourceType = 'DetectedIssue';
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
  CodeableConcept code;
  @HiveField(15)
  String severity;
  @HiveField(16)
  Element elementSeverity;
  @HiveField(17)
  Reference patient;
  @HiveField(18)
  String identifiedDateTime;
  @HiveField(19)
  Element elementIdentifiedDateTime;
  @HiveField(20)
  Period identifiedPeriod;
  @HiveField(21)
  Reference author;
  @HiveField(22)
  List<Reference> implicated;
  @HiveField(23)
  List<DetectedIssue_Evidence> evidence;
  @HiveField(24)
  String detail;
  @HiveField(25)
  Element elementDetail;
  @HiveField(26)
  String reference;
  @HiveField(27)
  Element elementReference;
  @HiveField(28)
  List<DetectedIssue_Mitigation> mitigation;

  DetectedIssue({
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
    this.code,
    this.severity,
    this.elementSeverity,
    this.patient,
    this.identifiedDateTime,
    this.elementIdentifiedDateTime,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.elementDetail,
    this.reference,
    this.elementReference,
    this.mitigation,
  });

  factory DetectedIssue.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssueToJson(this);
}

class DetectedIssue_Evidence {
  static Future<DetectedIssue_Evidence> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> code,
    List<Reference> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    DetectedIssue_Evidence newDetectedIssue_Evidence =
        new DetectedIssue_Evidence(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      detail: detail,
    );
    return newDetectedIssue_Evidence;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<CodeableConcept> code;
  @HiveField(4)
  List<Reference> detail;

  DetectedIssue_Evidence({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.detail,
  });

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssue_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_EvidenceToJson(this);
}

class DetectedIssue_Mitigation {
  static Future<DetectedIssue_Mitigation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept action,
    DateTime date,
    Element elementDate,
    Reference author,
  }) async {
    var fhirDb = new DatabaseHelper();
    DetectedIssue_Mitigation newDetectedIssue_Mitigation =
        new DetectedIssue_Mitigation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      action: action,
      date: date,
      elementDate: elementDate,
      author: author,
    );
    return newDetectedIssue_Mitigation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept action;
  @HiveField(4)
  DateTime date;
  @HiveField(5)
  Element elementDate;
  @HiveField(6)
  Reference author;

  DetectedIssue_Mitigation({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.action,
    this.date,
    this.elementDate,
    this.author,
  });

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_MitigationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetectedIssue _$DetectedIssueFromJson(Map<String, dynamic> json) {
  return DetectedIssue(
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    identifiedDateTime: json['identifiedDateTime'] as String,
    elementIdentifiedDateTime: json['elementIdentifiedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementIdentifiedDateTime'] as Map<String, dynamic>),
    identifiedPeriod: json['identifiedPeriod'] == null
        ? null
        : Period.fromJson(json['identifiedPeriod'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    implicated: (json['implicated'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evidence: (json['evidence'] as List)
        ?.map((e) => e == null
            ? null
            : DetectedIssue_Evidence.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: json['detail'] as String,
    elementDetail: json['elementDetail'] == null
        ? null
        : Element.fromJson(json['elementDetail'] as Map<String, dynamic>),
    reference: json['reference'] as String,
    elementReference: json['elementReference'] == null
        ? null
        : Element.fromJson(json['elementReference'] as Map<String, dynamic>),
    mitigation: (json['mitigation'] as List)
        ?.map((e) => e == null
            ? null
            : DetectedIssue_Mitigation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DetectedIssueToJson(DetectedIssue instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('severity', instance.severity);
  writeNotNull('elementSeverity', instance.elementSeverity?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('identifiedDateTime', instance.identifiedDateTime);
  writeNotNull('elementIdentifiedDateTime',
      instance.elementIdentifiedDateTime?.toJson());
  writeNotNull('identifiedPeriod', instance.identifiedPeriod?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull(
      'implicated', instance.implicated?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'evidence', instance.evidence?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail);
  writeNotNull('elementDetail', instance.elementDetail?.toJson());
  writeNotNull('reference', instance.reference);
  writeNotNull('elementReference', instance.elementReference?.toJson());
  writeNotNull(
      'mitigation', instance.mitigation?.map((e) => e?.toJson())?.toList());
  return val;
}

DetectedIssue_Evidence _$DetectedIssue_EvidenceFromJson(
    Map<String, dynamic> json) {
  return DetectedIssue_Evidence(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DetectedIssue_EvidenceToJson(
    DetectedIssue_Evidence instance) {
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
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

DetectedIssue_Mitigation _$DetectedIssue_MitigationFromJson(
    Map<String, dynamic> json) {
  return DetectedIssue_Mitigation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: json['action'] == null
        ? null
        : CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetectedIssue_MitigationToJson(
    DetectedIssue_Mitigation instance) {
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
  writeNotNull('action', instance.action?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('author', instance.author?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetectedIssueAdapter extends TypeAdapter<DetectedIssue> {
  @override
  DetectedIssue read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectedIssue(
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
      code: fields[14] as CodeableConcept,
      severity: fields[15] as String,
      elementSeverity: fields[16] as Element,
      patient: fields[17] as Reference,
      identifiedDateTime: fields[18] as String,
      elementIdentifiedDateTime: fields[19] as Element,
      identifiedPeriod: fields[20] as Period,
      author: fields[21] as Reference,
      implicated: (fields[22] as List)?.cast<Reference>(),
      evidence: (fields[23] as List)?.cast<DetectedIssue_Evidence>(),
      detail: fields[24] as String,
      elementDetail: fields[25] as Element,
      reference: fields[26] as String,
      elementReference: fields[27] as Element,
      mitigation: (fields[28] as List)?.cast<DetectedIssue_Mitigation>(),
    );
  }

  @override
  void write(BinaryWriter writer, DetectedIssue obj) {
    writer
      ..writeByte(29)
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
      ..write(obj.code)
      ..writeByte(15)
      ..write(obj.severity)
      ..writeByte(16)
      ..write(obj.elementSeverity)
      ..writeByte(17)
      ..write(obj.patient)
      ..writeByte(18)
      ..write(obj.identifiedDateTime)
      ..writeByte(19)
      ..write(obj.elementIdentifiedDateTime)
      ..writeByte(20)
      ..write(obj.identifiedPeriod)
      ..writeByte(21)
      ..write(obj.author)
      ..writeByte(22)
      ..write(obj.implicated)
      ..writeByte(23)
      ..write(obj.evidence)
      ..writeByte(24)
      ..write(obj.detail)
      ..writeByte(25)
      ..write(obj.elementDetail)
      ..writeByte(26)
      ..write(obj.reference)
      ..writeByte(27)
      ..write(obj.elementReference)
      ..writeByte(28)
      ..write(obj.mitigation);
  }
}

class DetectedIssue_EvidenceAdapter
    extends TypeAdapter<DetectedIssue_Evidence> {
  @override
  DetectedIssue_Evidence read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectedIssue_Evidence(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: (fields[3] as List)?.cast<CodeableConcept>(),
      detail: (fields[4] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, DetectedIssue_Evidence obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.detail);
  }
}

class DetectedIssue_MitigationAdapter
    extends TypeAdapter<DetectedIssue_Mitigation> {
  @override
  DetectedIssue_Mitigation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetectedIssue_Mitigation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      action: fields[3] as CodeableConcept,
      date: fields[4] as DateTime,
      elementDate: fields[5] as Element,
      author: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, DetectedIssue_Mitigation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.action)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.elementDate)
      ..writeByte(6)
      ..write(obj.author);
  }
}
