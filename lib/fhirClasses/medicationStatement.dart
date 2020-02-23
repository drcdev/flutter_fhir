import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicationStatement {
  static Future<MedicationStatement> newInstance({
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
    List<Reference> basedOn,
    List<Reference> partOf,
    String status,
    Element elementStatus,
    List<CodeableConcept> statusReason,
    CodeableConcept category,
    CodeableConcept medicationCodeableConcept,
    Reference medicationReference,
    Reference subject,
    Reference context,
    String effectiveDateTime,
    Element elementEffectiveDateTime,
    Period effectivePeriod,
    DateTime dateAsserted,
    Element elementDateAsserted,
    Reference informationSource,
    List<Reference> derivedFrom,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Annotation> note,
    List<Dosage> dosage,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationStatement newMedicationStatement = new MedicationStatement(
      resourceType: 'MedicationStatement',
      id: id ?? await fhirDb.newResourceId('MedicationStatement'),
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
      basedOn: basedOn,
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      category: category,
      medicationCodeableConcept: medicationCodeableConcept,
      medicationReference: medicationReference,
      subject: subject,
      context: context,
      effectiveDateTime: effectiveDateTime,
      elementEffectiveDateTime: elementEffectiveDateTime,
      effectivePeriod: effectivePeriod,
      dateAsserted: dateAsserted,
      elementDateAsserted: elementDateAsserted,
      informationSource: informationSource,
      derivedFrom: derivedFrom,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      note: note,
      dosage: dosage,
    );
    newMedicationStatement.meta.createdAt = DateTime.now();
    newMedicationStatement.meta.lastUpdated =
        newMedicationStatement.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicationStatement);
    return newMedicationStatement;
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
  String resourceType = 'MedicationStatement';
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
  List<Reference> basedOn;
  @HiveField(13)
  List<Reference> partOf;
  @HiveField(14)
  String status;
  @HiveField(15)
  Element elementStatus;
  @HiveField(16)
  List<CodeableConcept> statusReason;
  @HiveField(17)
  CodeableConcept category;
  @HiveField(18)
  CodeableConcept medicationCodeableConcept;
  @HiveField(19)
  Reference medicationReference;
  @HiveField(20)
  Reference subject;
  @HiveField(21)
  Reference context;
  @HiveField(22)
  String effectiveDateTime;
  @HiveField(23)
  Element elementEffectiveDateTime;
  @HiveField(24)
  Period effectivePeriod;
  @HiveField(25)
  DateTime dateAsserted;
  @HiveField(26)
  Element elementDateAsserted;
  @HiveField(27)
  Reference informationSource;
  @HiveField(28)
  List<Reference> derivedFrom;
  @HiveField(29)
  List<CodeableConcept> reasonCode;
  @HiveField(30)
  List<Reference> reasonReference;
  @HiveField(31)
  List<Annotation> note;
  @HiveField(32)
  List<Dosage> dosage;

  MedicationStatement({
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
    this.basedOn,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    @required this.subject,
    this.context,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.dateAsserted,
    this.elementDateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
  });

  factory MedicationStatement.fromJson(Map<String, dynamic> json) =>
      _$MedicationStatementFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationStatementToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationStatement _$MedicationStatementFromJson(Map<String, dynamic> json) {
  return MedicationStatement(
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: (json['statusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    dateAsserted: json['dateAsserted'] == null
        ? null
        : DateTime.parse(json['dateAsserted'] as String),
    elementDateAsserted: json['elementDateAsserted'] == null
        ? null
        : Element.fromJson(json['elementDateAsserted'] as Map<String, dynamic>),
    informationSource: json['informationSource'] == null
        ? null
        : Reference.fromJson(json['informationSource'] as Map<String, dynamic>),
    derivedFrom: (json['derivedFrom'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosage: (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationStatementToJson(MedicationStatement instance) {
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
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull(
      'statusReason', instance.statusReason?.map((e) => e?.toJson())?.toList());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('medicationCodeableConcept',
      instance.medicationCodeableConcept?.toJson());
  writeNotNull('medicationReference', instance.medicationReference?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('context', instance.context?.toJson());
  writeNotNull('effectiveDateTime', instance.effectiveDateTime);
  writeNotNull(
      'elementEffectiveDateTime', instance.elementEffectiveDateTime?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('dateAsserted', instance.dateAsserted?.toIso8601String());
  writeNotNull('elementDateAsserted', instance.elementDateAsserted?.toJson());
  writeNotNull('informationSource', instance.informationSource?.toJson());
  writeNotNull(
      'derivedFrom', instance.derivedFrom?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('dosage', instance.dosage?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationStatementAdapter extends TypeAdapter<MedicationStatement> {
  @override
  MedicationStatement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationStatement(
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      partOf: (fields[13] as List)?.cast<Reference>(),
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      statusReason: (fields[16] as List)?.cast<CodeableConcept>(),
      category: fields[17] as CodeableConcept,
      medicationCodeableConcept: fields[18] as CodeableConcept,
      medicationReference: fields[19] as Reference,
      subject: fields[20] as Reference,
      context: fields[21] as Reference,
      effectiveDateTime: fields[22] as String,
      elementEffectiveDateTime: fields[23] as Element,
      effectivePeriod: fields[24] as Period,
      dateAsserted: fields[25] as DateTime,
      elementDateAsserted: fields[26] as Element,
      informationSource: fields[27] as Reference,
      derivedFrom: (fields[28] as List)?.cast<Reference>(),
      reasonCode: (fields[29] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[30] as List)?.cast<Reference>(),
      note: (fields[31] as List)?.cast<Annotation>(),
      dosage: (fields[32] as List)?.cast<Dosage>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationStatement obj) {
    writer
      ..writeByte(33)
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
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.partOf)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.statusReason)
      ..writeByte(17)
      ..write(obj.category)
      ..writeByte(18)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(19)
      ..write(obj.medicationReference)
      ..writeByte(20)
      ..write(obj.subject)
      ..writeByte(21)
      ..write(obj.context)
      ..writeByte(22)
      ..write(obj.effectiveDateTime)
      ..writeByte(23)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(24)
      ..write(obj.effectivePeriod)
      ..writeByte(25)
      ..write(obj.dateAsserted)
      ..writeByte(26)
      ..write(obj.elementDateAsserted)
      ..writeByte(27)
      ..write(obj.informationSource)
      ..writeByte(28)
      ..write(obj.derivedFrom)
      ..writeByte(29)
      ..write(obj.reasonCode)
      ..writeByte(30)
      ..write(obj.reasonReference)
      ..writeByte(31)
      ..write(obj.note)
      ..writeByte(32)
      ..write(obj.dosage);
  }
}
