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

class ImmunizationRecommendation {
  static Future<ImmunizationRecommendation> newInstance({
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
    Reference patient,
    DateTime date,
    Element elementDate,
    Reference authority,
    List<ImmunizationRecommendation_Recommendation> recommendation,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImmunizationRecommendation newImmunizationRecommendation =
        new ImmunizationRecommendation(
      resourceType: 'ImmunizationRecommendation',
      id: id ?? await fhirDb.newResourceId('ImmunizationRecommendation'),
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
      patient: patient,
      date: date,
      elementDate: elementDate,
      authority: authority,
      recommendation: recommendation,
    );
    newImmunizationRecommendation.meta.createdAt = DateTime.now();
    newImmunizationRecommendation.meta.lastUpdated =
        newImmunizationRecommendation.meta.createdAt;
    int saved = await fhirDb.saveResource(newImmunizationRecommendation);
    return newImmunizationRecommendation;
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
  String resourceType = 'ImmunizationRecommendation';
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
  Reference patient;
  @HiveField(13)
  DateTime date;
  @HiveField(14)
  Element elementDate;
  @HiveField(15)
  Reference authority;
  @HiveField(16)
  List<ImmunizationRecommendation_Recommendation> recommendation;

  ImmunizationRecommendation({
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
    @required this.patient,
    this.date,
    this.elementDate,
    this.authority,
    @required this.recommendation,
  });

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationRecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendationToJson(this);
}

class ImmunizationRecommendation_Recommendation {
  static Future<ImmunizationRecommendation_Recommendation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> vaccineCode,
    CodeableConcept targetDisease,
    List<CodeableConcept> contraindicatedVaccineCode,
    CodeableConcept forecastStatus,
    List<CodeableConcept> forecastReason,
    List<ImmunizationRecommendation_DateCriterion> dateCriterion,
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
    List<Reference> supportingImmunization,
    List<Reference> supportingPatientInformation,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImmunizationRecommendation_Recommendation
        newImmunizationRecommendation_Recommendation =
        new ImmunizationRecommendation_Recommendation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      vaccineCode: vaccineCode,
      targetDisease: targetDisease,
      contraindicatedVaccineCode: contraindicatedVaccineCode,
      forecastStatus: forecastStatus,
      forecastReason: forecastReason,
      dateCriterion: dateCriterion,
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
      supportingImmunization: supportingImmunization,
      supportingPatientInformation: supportingPatientInformation,
    );
    return newImmunizationRecommendation_Recommendation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<CodeableConcept> vaccineCode;
  @HiveField(4)
  CodeableConcept targetDisease;
  @HiveField(5)
  List<CodeableConcept> contraindicatedVaccineCode;
  @HiveField(6)
  CodeableConcept forecastStatus;
  @HiveField(7)
  List<CodeableConcept> forecastReason;
  @HiveField(8)
  List<ImmunizationRecommendation_DateCriterion> dateCriterion;
  @HiveField(9)
  String description;
  @HiveField(10)
  Element elementDescription;
  @HiveField(11)
  String series;
  @HiveField(12)
  Element elementSeries;
  @HiveField(13)
  int doseNumberPositiveInt;
  @HiveField(14)
  Element elementDoseNumberPositiveInt;
  @HiveField(15)
  String doseNumberString;
  @HiveField(16)
  Element elementDoseNumberString;
  @HiveField(17)
  int seriesDosesPositiveInt;
  @HiveField(18)
  Element elementSeriesDosesPositiveInt;
  @HiveField(19)
  String seriesDosesString;
  @HiveField(20)
  Element elementSeriesDosesString;
  @HiveField(21)
  List<Reference> supportingImmunization;
  @HiveField(22)
  List<Reference> supportingPatientInformation;

  ImmunizationRecommendation_Recommendation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    @required this.forecastStatus,
    this.forecastReason,
    this.dateCriterion,
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
    this.supportingImmunization,
    this.supportingPatientInformation,
  });

  factory ImmunizationRecommendation_Recommendation.fromJson(
          Map<String, dynamic> json) =>
      _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ImmunizationRecommendation_RecommendationToJson(this);
}

class ImmunizationRecommendation_DateCriterion {
  static Future<ImmunizationRecommendation_DateCriterion> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    DateTime value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImmunizationRecommendation_DateCriterion
        newImmunizationRecommendation_DateCriterion =
        new ImmunizationRecommendation_DateCriterion(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      value: value,
      elementValue: elementValue,
    );
    return newImmunizationRecommendation_DateCriterion;
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
  DateTime value;
  @HiveField(5)
  Element elementValue;

  ImmunizationRecommendation_DateCriterion({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.value,
    this.elementValue,
  });

  factory ImmunizationRecommendation_DateCriterion.fromJson(
          Map<String, dynamic> json) =>
      _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ImmunizationRecommendation_DateCriterionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationRecommendation _$ImmunizationRecommendationFromJson(
    Map<String, dynamic> json) {
  return ImmunizationRecommendation(
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
    recommendation: (json['recommendation'] as List)
        ?.map((e) => e == null
            ? null
            : ImmunizationRecommendation_Recommendation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImmunizationRecommendationToJson(
    ImmunizationRecommendation instance) {
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
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('authority', instance.authority?.toJson());
  writeNotNull('recommendation',
      instance.recommendation?.map((e) => e?.toJson())?.toList());
  return val;
}

ImmunizationRecommendation_Recommendation
    _$ImmunizationRecommendation_RecommendationFromJson(
        Map<String, dynamic> json) {
  return ImmunizationRecommendation_Recommendation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    vaccineCode: (json['vaccineCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    targetDisease: json['targetDisease'] == null
        ? null
        : CodeableConcept.fromJson(
            json['targetDisease'] as Map<String, dynamic>),
    contraindicatedVaccineCode: (json['contraindicatedVaccineCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    forecastStatus: json['forecastStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['forecastStatus'] as Map<String, dynamic>),
    forecastReason: (json['forecastReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dateCriterion: (json['dateCriterion'] as List)
        ?.map((e) => e == null
            ? null
            : ImmunizationRecommendation_DateCriterion.fromJson(
                e as Map<String, dynamic>))
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
    supportingImmunization: (json['supportingImmunization'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingPatientInformation: (json['supportingPatientInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImmunizationRecommendation_RecommendationToJson(
    ImmunizationRecommendation_Recommendation instance) {
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
  writeNotNull(
      'vaccineCode', instance.vaccineCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('targetDisease', instance.targetDisease?.toJson());
  writeNotNull('contraindicatedVaccineCode',
      instance.contraindicatedVaccineCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('forecastStatus', instance.forecastStatus?.toJson());
  writeNotNull('forecastReason',
      instance.forecastReason?.map((e) => e?.toJson())?.toList());
  writeNotNull('dateCriterion',
      instance.dateCriterion?.map((e) => e?.toJson())?.toList());
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
  writeNotNull('supportingImmunization',
      instance.supportingImmunization?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingPatientInformation',
      instance.supportingPatientInformation?.map((e) => e?.toJson())?.toList());
  return val;
}

ImmunizationRecommendation_DateCriterion
    _$ImmunizationRecommendation_DateCriterionFromJson(
        Map<String, dynamic> json) {
  return ImmunizationRecommendation_DateCriterion(
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
    value:
        json['value'] == null ? null : DateTime.parse(json['value'] as String),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImmunizationRecommendation_DateCriterionToJson(
    ImmunizationRecommendation_DateCriterion instance) {
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
  writeNotNull('value', instance.value?.toIso8601String());
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImmunizationRecommendationAdapter
    extends TypeAdapter<ImmunizationRecommendation> {
  @override
  ImmunizationRecommendation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation(
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
      patient: fields[12] as Reference,
      date: fields[13] as DateTime,
      elementDate: fields[14] as Element,
      authority: fields[15] as Reference,
      recommendation: (fields[16] as List)
          ?.cast<ImmunizationRecommendation_Recommendation>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImmunizationRecommendation obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.patient)
      ..writeByte(13)
      ..write(obj.date)
      ..writeByte(14)
      ..write(obj.elementDate)
      ..writeByte(15)
      ..write(obj.authority)
      ..writeByte(16)
      ..write(obj.recommendation);
  }
}

class ImmunizationRecommendation_RecommendationAdapter
    extends TypeAdapter<ImmunizationRecommendation_Recommendation> {
  @override
  ImmunizationRecommendation_Recommendation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation_Recommendation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      vaccineCode: (fields[3] as List)?.cast<CodeableConcept>(),
      targetDisease: fields[4] as CodeableConcept,
      contraindicatedVaccineCode: (fields[5] as List)?.cast<CodeableConcept>(),
      forecastStatus: fields[6] as CodeableConcept,
      forecastReason: (fields[7] as List)?.cast<CodeableConcept>(),
      dateCriterion:
          (fields[8] as List)?.cast<ImmunizationRecommendation_DateCriterion>(),
      description: fields[9] as String,
      elementDescription: fields[10] as Element,
      series: fields[11] as String,
      elementSeries: fields[12] as Element,
      doseNumberPositiveInt: fields[13] as int,
      elementDoseNumberPositiveInt: fields[14] as Element,
      doseNumberString: fields[15] as String,
      elementDoseNumberString: fields[16] as Element,
      seriesDosesPositiveInt: fields[17] as int,
      elementSeriesDosesPositiveInt: fields[18] as Element,
      seriesDosesString: fields[19] as String,
      elementSeriesDosesString: fields[20] as Element,
      supportingImmunization: (fields[21] as List)?.cast<Reference>(),
      supportingPatientInformation: (fields[22] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, ImmunizationRecommendation_Recommendation obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.vaccineCode)
      ..writeByte(4)
      ..write(obj.targetDisease)
      ..writeByte(5)
      ..write(obj.contraindicatedVaccineCode)
      ..writeByte(6)
      ..write(obj.forecastStatus)
      ..writeByte(7)
      ..write(obj.forecastReason)
      ..writeByte(8)
      ..write(obj.dateCriterion)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.elementDescription)
      ..writeByte(11)
      ..write(obj.series)
      ..writeByte(12)
      ..write(obj.elementSeries)
      ..writeByte(13)
      ..write(obj.doseNumberPositiveInt)
      ..writeByte(14)
      ..write(obj.elementDoseNumberPositiveInt)
      ..writeByte(15)
      ..write(obj.doseNumberString)
      ..writeByte(16)
      ..write(obj.elementDoseNumberString)
      ..writeByte(17)
      ..write(obj.seriesDosesPositiveInt)
      ..writeByte(18)
      ..write(obj.elementSeriesDosesPositiveInt)
      ..writeByte(19)
      ..write(obj.seriesDosesString)
      ..writeByte(20)
      ..write(obj.elementSeriesDosesString)
      ..writeByte(21)
      ..write(obj.supportingImmunization)
      ..writeByte(22)
      ..write(obj.supportingPatientInformation);
  }
}

class ImmunizationRecommendation_DateCriterionAdapter
    extends TypeAdapter<ImmunizationRecommendation_DateCriterion> {
  @override
  ImmunizationRecommendation_DateCriterion read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation_DateCriterion(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      value: fields[4] as DateTime,
      elementValue: fields[5] as Element,
    );
  }

  @override
  void write(
      BinaryWriter writer, ImmunizationRecommendation_DateCriterion obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.value)
      ..writeByte(5)
      ..write(obj.elementValue);
  }
}
