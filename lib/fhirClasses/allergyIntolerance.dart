import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class AllergyIntolerance {
  static Future<AllergyIntolerance> newInstance({
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
    CodeableConcept clinicalStatus,
    CodeableConcept verificationStatus,
    String type,
    Element elementType,
    String category,
    List<Element> elementCategory,
    String criticality,
    Element elementCriticality,
    CodeableConcept code,
    Reference patient,
    Reference encounter,
    String onsetDateTime,
    Element elementOnsetDateTime,
    Age onsetAge,
    Period onsetPeriod,
    Range onsetRange,
    String onsetString,
    Element elementOnsetString,
    DateTime recordedDate,
    Element elementRecordedDate,
    Reference recorder,
    Reference asserter,
    DateTime lastOccurrence,
    Element elementLastOccurrence,
    List<Annotation> note,
    List<AllergyIntolerance_Reaction> reaction,
  }) async {
    var fhirDb = new DatabaseHelper();
    AllergyIntolerance newAllergyIntolerance = new AllergyIntolerance(
      resourceType: 'AllergyIntolerance',
      id: id ?? await fhirDb.newResourceId('AllergyIntolerance'),
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
      clinicalStatus: clinicalStatus,
      verificationStatus: verificationStatus,
      type: type,
      elementType: elementType,
      category: category,
      elementCategory: elementCategory,
      criticality: criticality,
      elementCriticality: elementCriticality,
      code: code,
      patient: patient,
      encounter: encounter,
      onsetDateTime: onsetDateTime,
      elementOnsetDateTime: elementOnsetDateTime,
      onsetAge: onsetAge,
      onsetPeriod: onsetPeriod,
      onsetRange: onsetRange,
      onsetString: onsetString,
      elementOnsetString: elementOnsetString,
      recordedDate: recordedDate,
      elementRecordedDate: elementRecordedDate,
      recorder: recorder,
      asserter: asserter,
      lastOccurrence: lastOccurrence,
      elementLastOccurrence: elementLastOccurrence,
      note: note,
      reaction: reaction,
    );
    newAllergyIntolerance.meta.createdAt = DateTime.now();
    newAllergyIntolerance.meta.lastUpdated =
        newAllergyIntolerance.meta.createdAt;
    int saved = await fhirDb.saveResource(newAllergyIntolerance);
    return newAllergyIntolerance;
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
  String resourceType = 'AllergyIntolerance';
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
  CodeableConcept clinicalStatus;
  @HiveField(13)
  CodeableConcept verificationStatus;
  @HiveField(14)
  String type;
  @HiveField(15)
  Element elementType;
  @HiveField(16)
  String category;
  @HiveField(17)
  List<Element> elementCategory;
  @HiveField(18)
  String criticality;
  @HiveField(19)
  Element elementCriticality;
  @HiveField(20)
  CodeableConcept code;
  @HiveField(21)
  Reference patient;
  @HiveField(22)
  Reference encounter;
  @HiveField(23)
  String onsetDateTime;
  @HiveField(24)
  Element elementOnsetDateTime;
  @HiveField(25)
  Age onsetAge;
  @HiveField(26)
  Period onsetPeriod;
  @HiveField(27)
  Range onsetRange;
  @HiveField(28)
  String onsetString;
  @HiveField(29)
  Element elementOnsetString;
  @HiveField(30)
  DateTime recordedDate;
  @HiveField(31)
  Element elementRecordedDate;
  @HiveField(32)
  Reference recorder;
  @HiveField(33)
  Reference asserter;
  @HiveField(34)
  DateTime lastOccurrence;
  @HiveField(35)
  Element elementLastOccurrence;
  @HiveField(36)
  List<Annotation> note;
  @HiveField(37)
  List<AllergyIntolerance_Reaction> reaction;

  AllergyIntolerance({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.elementType,
    this.category,
    this.elementCategory,
    this.criticality,
    this.elementCriticality,
    this.code,
    @required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.elementOnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.elementOnsetString,
    this.recordedDate,
    this.elementRecordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.elementLastOccurrence,
    this.note,
    this.reaction,
  });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);
}

class AllergyIntolerance_Reaction {
  static Future<AllergyIntolerance_Reaction> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept substance,
    List<CodeableConcept> manifestation,
    String description,
    Element elementDescription,
    DateTime onset,
    Element elementOnset,
    String severity,
    Element elementSeverity,
    CodeableConcept exposureRoute,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    AllergyIntolerance_Reaction newAllergyIntolerance_Reaction =
        new AllergyIntolerance_Reaction(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      substance: substance,
      manifestation: manifestation,
      description: description,
      elementDescription: elementDescription,
      onset: onset,
      elementOnset: elementOnset,
      severity: severity,
      elementSeverity: elementSeverity,
      exposureRoute: exposureRoute,
      note: note,
    );
    return newAllergyIntolerance_Reaction;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept substance;
  @HiveField(4)
  List<CodeableConcept> manifestation;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
  DateTime onset;
  @HiveField(8)
  Element elementOnset;
  @HiveField(9)
  String severity;
  @HiveField(10)
  Element elementSeverity;
  @HiveField(11)
  CodeableConcept exposureRoute;
  @HiveField(12)
  List<Annotation> note;

  AllergyIntolerance_Reaction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    @required this.manifestation,
    this.description,
    this.elementDescription,
    this.onset,
    this.elementOnset,
    this.severity,
    this.elementSeverity,
    this.exposureRoute,
    this.note,
  });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntolerance_ReactionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllergyIntolerance _$AllergyIntoleranceFromJson(Map<String, dynamic> json) {
  return AllergyIntolerance(
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
    clinicalStatus: json['clinicalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['clinicalStatus'] as Map<String, dynamic>),
    verificationStatus: json['verificationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['verificationStatus'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    category: json['category'] as String,
    elementCategory: (json['elementCategory'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criticality: json['criticality'] as String,
    elementCriticality: json['elementCriticality'] == null
        ? null
        : Element.fromJson(json['elementCriticality'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    onsetDateTime: json['onsetDateTime'] as String,
    elementOnsetDateTime: json['elementOnsetDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOnsetDateTime'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    elementRecordedDate: json['elementRecordedDate'] == null
        ? null
        : Element.fromJson(json['elementRecordedDate'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    lastOccurrence: json['lastOccurrence'] == null
        ? null
        : DateTime.parse(json['lastOccurrence'] as String),
    elementLastOccurrence: json['elementLastOccurrence'] == null
        ? null
        : Element.fromJson(
            json['elementLastOccurrence'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : AllergyIntolerance_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntoleranceToJson(AllergyIntolerance instance) {
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
  writeNotNull('clinicalStatus', instance.clinicalStatus?.toJson());
  writeNotNull('verificationStatus', instance.verificationStatus?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('category', instance.category);
  writeNotNull('elementCategory',
      instance.elementCategory?.map((e) => e?.toJson())?.toList());
  writeNotNull('criticality', instance.criticality);
  writeNotNull('elementCriticality', instance.elementCriticality?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('onsetDateTime', instance.onsetDateTime);
  writeNotNull('elementOnsetDateTime', instance.elementOnsetDateTime?.toJson());
  writeNotNull('onsetAge', instance.onsetAge?.toJson());
  writeNotNull('onsetPeriod', instance.onsetPeriod?.toJson());
  writeNotNull('onsetRange', instance.onsetRange?.toJson());
  writeNotNull('onsetString', instance.onsetString);
  writeNotNull('elementOnsetString', instance.elementOnsetString?.toJson());
  writeNotNull('recordedDate', instance.recordedDate?.toIso8601String());
  writeNotNull('elementRecordedDate', instance.elementRecordedDate?.toJson());
  writeNotNull('recorder', instance.recorder?.toJson());
  writeNotNull('asserter', instance.asserter?.toJson());
  writeNotNull('lastOccurrence', instance.lastOccurrence?.toIso8601String());
  writeNotNull(
      'elementLastOccurrence', instance.elementLastOccurrence?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reaction', instance.reaction?.map((e) => e?.toJson())?.toList());
  return val;
}

AllergyIntolerance_Reaction _$AllergyIntolerance_ReactionFromJson(
    Map<String, dynamic> json) {
  return AllergyIntolerance_Reaction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    manifestation: (json['manifestation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    onset:
        json['onset'] == null ? null : DateTime.parse(json['onset'] as String),
    elementOnset: json['elementOnset'] == null
        ? null
        : Element.fromJson(json['elementOnset'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    exposureRoute: json['exposureRoute'] == null
        ? null
        : CodeableConcept.fromJson(
            json['exposureRoute'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntolerance_ReactionToJson(
    AllergyIntolerance_Reaction instance) {
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
  writeNotNull('substance', instance.substance?.toJson());
  writeNotNull('manifestation',
      instance.manifestation?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('onset', instance.onset?.toIso8601String());
  writeNotNull('elementOnset', instance.elementOnset?.toJson());
  writeNotNull('severity', instance.severity);
  writeNotNull('elementSeverity', instance.elementSeverity?.toJson());
  writeNotNull('exposureRoute', instance.exposureRoute?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AllergyIntoleranceAdapter extends TypeAdapter<AllergyIntolerance> {
  @override
  AllergyIntolerance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllergyIntolerance(
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
      clinicalStatus: fields[12] as CodeableConcept,
      verificationStatus: fields[13] as CodeableConcept,
      type: fields[14] as String,
      elementType: fields[15] as Element,
      category: fields[16] as String,
      elementCategory: (fields[17] as List)?.cast<Element>(),
      criticality: fields[18] as String,
      elementCriticality: fields[19] as Element,
      code: fields[20] as CodeableConcept,
      patient: fields[21] as Reference,
      encounter: fields[22] as Reference,
      onsetDateTime: fields[23] as String,
      elementOnsetDateTime: fields[24] as Element,
      onsetAge: fields[25] as Age,
      onsetPeriod: fields[26] as Period,
      onsetRange: fields[27] as Range,
      onsetString: fields[28] as String,
      elementOnsetString: fields[29] as Element,
      recordedDate: fields[30] as DateTime,
      elementRecordedDate: fields[31] as Element,
      recorder: fields[32] as Reference,
      asserter: fields[33] as Reference,
      lastOccurrence: fields[34] as DateTime,
      elementLastOccurrence: fields[35] as Element,
      note: (fields[36] as List)?.cast<Annotation>(),
      reaction: (fields[37] as List)?.cast<AllergyIntolerance_Reaction>(),
    );
  }

  @override
  void write(BinaryWriter writer, AllergyIntolerance obj) {
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
      ..write(obj.clinicalStatus)
      ..writeByte(13)
      ..write(obj.verificationStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.elementType)
      ..writeByte(16)
      ..write(obj.category)
      ..writeByte(17)
      ..write(obj.elementCategory)
      ..writeByte(18)
      ..write(obj.criticality)
      ..writeByte(19)
      ..write(obj.elementCriticality)
      ..writeByte(20)
      ..write(obj.code)
      ..writeByte(21)
      ..write(obj.patient)
      ..writeByte(22)
      ..write(obj.encounter)
      ..writeByte(23)
      ..write(obj.onsetDateTime)
      ..writeByte(24)
      ..write(obj.elementOnsetDateTime)
      ..writeByte(25)
      ..write(obj.onsetAge)
      ..writeByte(26)
      ..write(obj.onsetPeriod)
      ..writeByte(27)
      ..write(obj.onsetRange)
      ..writeByte(28)
      ..write(obj.onsetString)
      ..writeByte(29)
      ..write(obj.elementOnsetString)
      ..writeByte(30)
      ..write(obj.recordedDate)
      ..writeByte(31)
      ..write(obj.elementRecordedDate)
      ..writeByte(32)
      ..write(obj.recorder)
      ..writeByte(33)
      ..write(obj.asserter)
      ..writeByte(34)
      ..write(obj.lastOccurrence)
      ..writeByte(35)
      ..write(obj.elementLastOccurrence)
      ..writeByte(36)
      ..write(obj.note)
      ..writeByte(37)
      ..write(obj.reaction);
  }
}

class AllergyIntolerance_ReactionAdapter
    extends TypeAdapter<AllergyIntolerance_Reaction> {
  @override
  AllergyIntolerance_Reaction read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllergyIntolerance_Reaction(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      substance: fields[3] as CodeableConcept,
      manifestation: (fields[4] as List)?.cast<CodeableConcept>(),
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      onset: fields[7] as DateTime,
      elementOnset: fields[8] as Element,
      severity: fields[9] as String,
      elementSeverity: fields[10] as Element,
      exposureRoute: fields[11] as CodeableConcept,
      note: (fields[12] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, AllergyIntolerance_Reaction obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.substance)
      ..writeByte(4)
      ..write(obj.manifestation)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.onset)
      ..writeByte(8)
      ..write(obj.elementOnset)
      ..writeByte(9)
      ..write(obj.severity)
      ..writeByte(10)
      ..write(obj.elementSeverity)
      ..writeByte(11)
      ..write(obj.exposureRoute)
      ..writeByte(12)
      ..write(obj.note);
  }
}
