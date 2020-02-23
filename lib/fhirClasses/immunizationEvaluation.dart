import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ImmunizationEvaluation {
  static Future<ImmunizationEvaluation> newInstance({
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
    Reference patient,
    DateTime date,
    Element elementDate,
    Reference authority,
    CodeableConcept targetDisease,
    Reference immunizationEvent,
    CodeableConcept doseStatus,
    List<CodeableConcept> doseStatusReason,
    String description,
    Element elementDescription,
    String series,
    Element elementSeries,
    int doseNumberPositiveInt,
    Element elementDoseNumberPositiveInt,
    String doseNumberString,
    Element elementDoseNumberString,
    int seriesDosesPositiveInt,
    Element elementSeriesDosesPositiveInt,
    String seriesDosesString,
    Element elementSeriesDosesString,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImmunizationEvaluation newImmunizationEvaluation =
        new ImmunizationEvaluation(
      resourceType: 'ImmunizationEvaluation',
      id: id ?? await fhirDb.newResourceId('ImmunizationEvaluation'),
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
      patient: patient,
      date: date,
      elementDate: elementDate,
      authority: authority,
      targetDisease: targetDisease,
      immunizationEvent: immunizationEvent,
      doseStatus: doseStatus,
      doseStatusReason: doseStatusReason,
      description: description,
      elementDescription: elementDescription,
      series: series,
      elementSeries: elementSeries,
      doseNumberPositiveInt: doseNumberPositiveInt,
      elementDoseNumberPositiveInt: elementDoseNumberPositiveInt,
      doseNumberString: doseNumberString,
      elementDoseNumberString: elementDoseNumberString,
      seriesDosesPositiveInt: seriesDosesPositiveInt,
      elementSeriesDosesPositiveInt: elementSeriesDosesPositiveInt,
      seriesDosesString: seriesDosesString,
      elementSeriesDosesString: elementSeriesDosesString,
    );
    newImmunizationEvaluation.meta.createdAt = DateTime.now();
    newImmunizationEvaluation.meta.lastUpdated =
        newImmunizationEvaluation.meta.createdAt;
    int saved = await fhirDb.saveResource(newImmunizationEvaluation);
    return newImmunizationEvaluation;
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
  String resourceType = 'ImmunizationEvaluation';
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
  Reference patient;
  @HiveField(15)
  DateTime date;
  @HiveField(16)
  Element elementDate;
  @HiveField(17)
  Reference authority;
  @HiveField(18)
  CodeableConcept targetDisease;
  @HiveField(19)
  Reference immunizationEvent;
  @HiveField(20)
  CodeableConcept doseStatus;
  @HiveField(21)
  List<CodeableConcept> doseStatusReason;
  @HiveField(22)
  String description;
  @HiveField(23)
  Element elementDescription;
  @HiveField(24)
  String series;
  @HiveField(25)
  Element elementSeries;
  @HiveField(26)
  int doseNumberPositiveInt;
  @HiveField(27)
  Element elementDoseNumberPositiveInt;
  @HiveField(28)
  String doseNumberString;
  @HiveField(29)
  Element elementDoseNumberString;
  @HiveField(30)
  int seriesDosesPositiveInt;
  @HiveField(31)
  Element elementSeriesDosesPositiveInt;
  @HiveField(32)
  String seriesDosesString;
  @HiveField(33)
  Element elementSeriesDosesString;

  ImmunizationEvaluation({
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
    @required this.patient,
    this.date,
    this.elementDate,
    this.authority,
    @required this.targetDisease,
    @required this.immunizationEvent,
    @required this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.elementDescription,
    this.series,
    this.elementSeries,
    this.doseNumberPositiveInt,
    this.elementDoseNumberPositiveInt,
    this.doseNumberString,
    this.elementDoseNumberString,
    this.seriesDosesPositiveInt,
    this.elementSeriesDosesPositiveInt,
    this.seriesDosesString,
    this.elementSeriesDosesString,
  });

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationEvaluationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationEvaluation _$ImmunizationEvaluationFromJson(
    Map<String, dynamic> json) {
  return ImmunizationEvaluation(
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
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
    targetDisease: json['targetDisease'] == null
        ? null
        : CodeableConcept.fromJson(
            json['targetDisease'] as Map<String, dynamic>),
    immunizationEvent: json['immunizationEvent'] == null
        ? null
        : Reference.fromJson(json['immunizationEvent'] as Map<String, dynamic>),
    doseStatus: json['doseStatus'] == null
        ? null
        : CodeableConcept.fromJson(json['doseStatus'] as Map<String, dynamic>),
    doseStatusReason: (json['doseStatusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    series: json['series'] as String,
    elementSeries: json['elementSeries'] == null
        ? null
        : Element.fromJson(json['elementSeries'] as Map<String, dynamic>),
    doseNumberPositiveInt: json['doseNumberPositiveInt'] as int,
    elementDoseNumberPositiveInt: json['elementDoseNumberPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementDoseNumberPositiveInt'] as Map<String, dynamic>),
    doseNumberString: json['doseNumberString'] as String,
    elementDoseNumberString: json['elementDoseNumberString'] == null
        ? null
        : Element.fromJson(
            json['elementDoseNumberString'] as Map<String, dynamic>),
    seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int,
    elementSeriesDosesPositiveInt: json['elementSeriesDosesPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementSeriesDosesPositiveInt'] as Map<String, dynamic>),
    seriesDosesString: json['seriesDosesString'] as String,
    elementSeriesDosesString: json['elementSeriesDosesString'] == null
        ? null
        : Element.fromJson(
            json['elementSeriesDosesString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImmunizationEvaluationToJson(
    ImmunizationEvaluation instance) {
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
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('authority', instance.authority?.toJson());
  writeNotNull('targetDisease', instance.targetDisease?.toJson());
  writeNotNull('immunizationEvent', instance.immunizationEvent?.toJson());
  writeNotNull('doseStatus', instance.doseStatus?.toJson());
  writeNotNull('doseStatusReason',
      instance.doseStatusReason?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('series', instance.series);
  writeNotNull('elementSeries', instance.elementSeries?.toJson());
  writeNotNull('doseNumberPositiveInt', instance.doseNumberPositiveInt);
  writeNotNull('elementDoseNumberPositiveInt',
      instance.elementDoseNumberPositiveInt?.toJson());
  writeNotNull('doseNumberString', instance.doseNumberString);
  writeNotNull(
      'elementDoseNumberString', instance.elementDoseNumberString?.toJson());
  writeNotNull('seriesDosesPositiveInt', instance.seriesDosesPositiveInt);
  writeNotNull('elementSeriesDosesPositiveInt',
      instance.elementSeriesDosesPositiveInt?.toJson());
  writeNotNull('seriesDosesString', instance.seriesDosesString);
  writeNotNull(
      'elementSeriesDosesString', instance.elementSeriesDosesString?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImmunizationEvaluationAdapter
    extends TypeAdapter<ImmunizationEvaluation> {
  @override
  ImmunizationEvaluation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationEvaluation(
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
      patient: fields[14] as Reference,
      date: fields[15] as DateTime,
      elementDate: fields[16] as Element,
      authority: fields[17] as Reference,
      targetDisease: fields[18] as CodeableConcept,
      immunizationEvent: fields[19] as Reference,
      doseStatus: fields[20] as CodeableConcept,
      doseStatusReason: (fields[21] as List)?.cast<CodeableConcept>(),
      description: fields[22] as String,
      elementDescription: fields[23] as Element,
      series: fields[24] as String,
      elementSeries: fields[25] as Element,
      doseNumberPositiveInt: fields[26] as int,
      elementDoseNumberPositiveInt: fields[27] as Element,
      doseNumberString: fields[28] as String,
      elementDoseNumberString: fields[29] as Element,
      seriesDosesPositiveInt: fields[30] as int,
      elementSeriesDosesPositiveInt: fields[31] as Element,
      seriesDosesString: fields[32] as String,
      elementSeriesDosesString: fields[33] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImmunizationEvaluation obj) {
    writer
      ..writeByte(34)
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
      ..write(obj.patient)
      ..writeByte(15)
      ..write(obj.date)
      ..writeByte(16)
      ..write(obj.elementDate)
      ..writeByte(17)
      ..write(obj.authority)
      ..writeByte(18)
      ..write(obj.targetDisease)
      ..writeByte(19)
      ..write(obj.immunizationEvent)
      ..writeByte(20)
      ..write(obj.doseStatus)
      ..writeByte(21)
      ..write(obj.doseStatusReason)
      ..writeByte(22)
      ..write(obj.description)
      ..writeByte(23)
      ..write(obj.elementDescription)
      ..writeByte(24)
      ..write(obj.series)
      ..writeByte(25)
      ..write(obj.elementSeries)
      ..writeByte(26)
      ..write(obj.doseNumberPositiveInt)
      ..writeByte(27)
      ..write(obj.elementDoseNumberPositiveInt)
      ..writeByte(28)
      ..write(obj.doseNumberString)
      ..writeByte(29)
      ..write(obj.elementDoseNumberString)
      ..writeByte(30)
      ..write(obj.seriesDosesPositiveInt)
      ..writeByte(31)
      ..write(obj.elementSeriesDosesPositiveInt)
      ..writeByte(32)
      ..write(obj.seriesDosesString)
      ..writeByte(33)
      ..write(obj.elementSeriesDosesString);
  }
}
