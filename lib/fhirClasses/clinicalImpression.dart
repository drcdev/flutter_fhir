import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ClinicalImpression {
  static Future<ClinicalImpression> newInstance({
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
    CodeableConcept statusReason,
    CodeableConcept code,
    String description,
    Element elementDescription,
    Reference subject,
    Reference encounter,
    String effectiveDateTime,
    Element elementEffectiveDateTime,
    Period effectivePeriod,
    DateTime date,
    Element elementDate,
    Reference assessor,
    Reference previous,
    List<Reference> problem,
    List<ClinicalImpression_Investigation> investigation,
    List<String> protocol,
    List<Element> elementProtocol,
    String summary,
    Element elementSummary,
    List<ClinicalImpression_Finding> finding,
    List<CodeableConcept> prognosisCodeableConcept,
    List<Reference> prognosisReference,
    List<Reference> supportingInfo,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClinicalImpression newClinicalImpression = new ClinicalImpression(
      resourceType: 'ClinicalImpression',
      id: id ?? await fhirDb.newResourceId('ClinicalImpression'),
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
      statusReason: statusReason,
      code: code,
      description: description,
      elementDescription: elementDescription,
      subject: subject,
      encounter: encounter,
      effectiveDateTime: effectiveDateTime,
      elementEffectiveDateTime: elementEffectiveDateTime,
      effectivePeriod: effectivePeriod,
      date: date,
      elementDate: elementDate,
      assessor: assessor,
      previous: previous,
      problem: problem,
      investigation: investigation,
      protocol: protocol,
      elementProtocol: elementProtocol,
      summary: summary,
      elementSummary: elementSummary,
      finding: finding,
      prognosisCodeableConcept: prognosisCodeableConcept,
      prognosisReference: prognosisReference,
      supportingInfo: supportingInfo,
      note: note,
    );
    newClinicalImpression.meta.createdAt = DateTime.now();
    newClinicalImpression.meta.lastUpdated =
        newClinicalImpression.meta.createdAt;
    int saved = await fhirDb.saveResource(newClinicalImpression);
    return newClinicalImpression;
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
  String resourceType = 'ClinicalImpression';
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
  CodeableConcept statusReason;
  @HiveField(15)
  CodeableConcept code;
  @HiveField(16)
  String description;
  @HiveField(17)
  Element elementDescription;
  @HiveField(18)
  Reference subject;
  @HiveField(19)
  Reference encounter;
  @HiveField(20)
  String effectiveDateTime;
  @HiveField(21)
  Element elementEffectiveDateTime;
  @HiveField(22)
  Period effectivePeriod;
  @HiveField(23)
  DateTime date;
  @HiveField(24)
  Element elementDate;
  @HiveField(25)
  Reference assessor;
  @HiveField(26)
  Reference previous;
  @HiveField(27)
  List<Reference> problem;
  @HiveField(28)
  List<ClinicalImpression_Investigation> investigation;
  @HiveField(29)
  List<String> protocol;
  @HiveField(30)
  List<Element> elementProtocol;
  @HiveField(31)
  String summary;
  @HiveField(32)
  Element elementSummary;
  @HiveField(33)
  List<ClinicalImpression_Finding> finding;
  @HiveField(34)
  List<CodeableConcept> prognosisCodeableConcept;
  @HiveField(35)
  List<Reference> prognosisReference;
  @HiveField(36)
  List<Reference> supportingInfo;
  @HiveField(37)
  List<Annotation> note;

  ClinicalImpression({
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
    this.statusReason,
    this.code,
    this.description,
    this.elementDescription,
    @required this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.date,
    this.elementDate,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.elementProtocol,
    this.summary,
    this.elementSummary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
  });

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpressionToJson(this);
}

class ClinicalImpression_Investigation {
  static Future<ClinicalImpression_Investigation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    List<Reference> item,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClinicalImpression_Investigation newClinicalImpression_Investigation =
        new ClinicalImpression_Investigation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      item: item,
    );
    return newClinicalImpression_Investigation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  List<Reference> item;

  ClinicalImpression_Investigation({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.item,
  });

  factory ClinicalImpression_Investigation.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalImpression_InvestigationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ClinicalImpression_InvestigationToJson(this);
}

class ClinicalImpression_Finding {
  static Future<ClinicalImpression_Finding> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept itemCodeableConcept,
    Reference itemReference,
    String basis,
    Element elementBasis,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClinicalImpression_Finding newClinicalImpression_Finding =
        new ClinicalImpression_Finding(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemCodeableConcept: itemCodeableConcept,
      itemReference: itemReference,
      basis: basis,
      elementBasis: elementBasis,
    );
    return newClinicalImpression_Finding;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept itemCodeableConcept;
  @HiveField(4)
  Reference itemReference;
  @HiveField(5)
  String basis;
  @HiveField(6)
  Element elementBasis;

  ClinicalImpression_Finding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.elementBasis,
  });

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpression_FindingFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicalImpression_FindingToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicalImpression _$ClinicalImpressionFromJson(Map<String, dynamic> json) {
  return ClinicalImpression(
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
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    assessor: json['assessor'] == null
        ? null
        : Reference.fromJson(json['assessor'] as Map<String, dynamic>),
    previous: json['previous'] == null
        ? null
        : Reference.fromJson(json['previous'] as Map<String, dynamic>),
    problem: (json['problem'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    investigation: (json['investigation'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalImpression_Investigation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    protocol: (json['protocol'] as List)?.map((e) => e as String)?.toList(),
    elementProtocol: (json['elementProtocol'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    summary: json['summary'] as String,
    elementSummary: json['elementSummary'] == null
        ? null
        : Element.fromJson(json['elementSummary'] as Map<String, dynamic>),
    finding: (json['finding'] as List)
        ?.map((e) => e == null
            ? null
            : ClinicalImpression_Finding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prognosisCodeableConcept: (json['prognosisCodeableConcept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prognosisReference: (json['prognosisReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClinicalImpressionToJson(ClinicalImpression instance) {
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
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('effectiveDateTime', instance.effectiveDateTime);
  writeNotNull(
      'elementEffectiveDateTime', instance.elementEffectiveDateTime?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('assessor', instance.assessor?.toJson());
  writeNotNull('previous', instance.previous?.toJson());
  writeNotNull('problem', instance.problem?.map((e) => e?.toJson())?.toList());
  writeNotNull('investigation',
      instance.investigation?.map((e) => e?.toJson())?.toList());
  writeNotNull('protocol', instance.protocol);
  writeNotNull('elementProtocol',
      instance.elementProtocol?.map((e) => e?.toJson())?.toList());
  writeNotNull('summary', instance.summary);
  writeNotNull('elementSummary', instance.elementSummary?.toJson());
  writeNotNull('finding', instance.finding?.map((e) => e?.toJson())?.toList());
  writeNotNull('prognosisCodeableConcept',
      instance.prognosisCodeableConcept?.map((e) => e?.toJson())?.toList());
  writeNotNull('prognosisReference',
      instance.prognosisReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

ClinicalImpression_Investigation _$ClinicalImpression_InvestigationFromJson(
    Map<String, dynamic> json) {
  return ClinicalImpression_Investigation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClinicalImpression_InvestigationToJson(
    ClinicalImpression_Investigation instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  return val;
}

ClinicalImpression_Finding _$ClinicalImpression_FindingFromJson(
    Map<String, dynamic> json) {
  return ClinicalImpression_Finding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    basis: json['basis'] as String,
    elementBasis: json['elementBasis'] == null
        ? null
        : Element.fromJson(json['elementBasis'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClinicalImpression_FindingToJson(
    ClinicalImpression_Finding instance) {
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
  writeNotNull('itemCodeableConcept', instance.itemCodeableConcept?.toJson());
  writeNotNull('itemReference', instance.itemReference?.toJson());
  writeNotNull('basis', instance.basis);
  writeNotNull('elementBasis', instance.elementBasis?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClinicalImpressionAdapter extends TypeAdapter<ClinicalImpression> {
  @override
  ClinicalImpression read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClinicalImpression(
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
      statusReason: fields[14] as CodeableConcept,
      code: fields[15] as CodeableConcept,
      description: fields[16] as String,
      elementDescription: fields[17] as Element,
      subject: fields[18] as Reference,
      encounter: fields[19] as Reference,
      effectiveDateTime: fields[20] as String,
      elementEffectiveDateTime: fields[21] as Element,
      effectivePeriod: fields[22] as Period,
      date: fields[23] as DateTime,
      elementDate: fields[24] as Element,
      assessor: fields[25] as Reference,
      previous: fields[26] as Reference,
      problem: (fields[27] as List)?.cast<Reference>(),
      investigation:
          (fields[28] as List)?.cast<ClinicalImpression_Investigation>(),
      protocol: (fields[29] as List)?.cast<String>(),
      elementProtocol: (fields[30] as List)?.cast<Element>(),
      summary: fields[31] as String,
      elementSummary: fields[32] as Element,
      finding: (fields[33] as List)?.cast<ClinicalImpression_Finding>(),
      prognosisCodeableConcept: (fields[34] as List)?.cast<CodeableConcept>(),
      prognosisReference: (fields[35] as List)?.cast<Reference>(),
      supportingInfo: (fields[36] as List)?.cast<Reference>(),
      note: (fields[37] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClinicalImpression obj) {
    writer
      ..writeByte(38)
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
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.code)
      ..writeByte(16)
      ..write(obj.description)
      ..writeByte(17)
      ..write(obj.elementDescription)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.encounter)
      ..writeByte(20)
      ..write(obj.effectiveDateTime)
      ..writeByte(21)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(22)
      ..write(obj.effectivePeriod)
      ..writeByte(23)
      ..write(obj.date)
      ..writeByte(24)
      ..write(obj.elementDate)
      ..writeByte(25)
      ..write(obj.assessor)
      ..writeByte(26)
      ..write(obj.previous)
      ..writeByte(27)
      ..write(obj.problem)
      ..writeByte(28)
      ..write(obj.investigation)
      ..writeByte(29)
      ..write(obj.protocol)
      ..writeByte(30)
      ..write(obj.elementProtocol)
      ..writeByte(31)
      ..write(obj.summary)
      ..writeByte(32)
      ..write(obj.elementSummary)
      ..writeByte(33)
      ..write(obj.finding)
      ..writeByte(34)
      ..write(obj.prognosisCodeableConcept)
      ..writeByte(35)
      ..write(obj.prognosisReference)
      ..writeByte(36)
      ..write(obj.supportingInfo)
      ..writeByte(37)
      ..write(obj.note);
  }
}

class ClinicalImpression_InvestigationAdapter
    extends TypeAdapter<ClinicalImpression_Investigation> {
  @override
  ClinicalImpression_Investigation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClinicalImpression_Investigation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      item: (fields[4] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClinicalImpression_Investigation obj) {
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
      ..write(obj.item);
  }
}

class ClinicalImpression_FindingAdapter
    extends TypeAdapter<ClinicalImpression_Finding> {
  @override
  ClinicalImpression_Finding read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClinicalImpression_Finding(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemCodeableConcept: fields[3] as CodeableConcept,
      itemReference: fields[4] as Reference,
      basis: fields[5] as String,
      elementBasis: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ClinicalImpression_Finding obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemCodeableConcept)
      ..writeByte(4)
      ..write(obj.itemReference)
      ..writeByte(5)
      ..write(obj.basis)
      ..writeByte(6)
      ..write(obj.elementBasis);
  }
}
