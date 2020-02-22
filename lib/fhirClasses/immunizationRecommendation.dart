import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ImmunizationRecommendation';
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
  Reference patient;
  DateTime date;
  Element elementDate;
  Reference authority;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> vaccineCode;
  CodeableConcept targetDisease;
  List<CodeableConcept> contraindicatedVaccineCode;
  CodeableConcept forecastStatus;
  List<CodeableConcept> forecastReason;
  List<ImmunizationRecommendation_DateCriterion> dateCriterion;
  String description;
  Element elementDescription;
  String series;
  Element elementSeries;
  int doseNumberPositiveInt;
  Element elementDoseNumberPositiveInt;
  String doseNumberString;
  Element elementDoseNumberString;
  int seriesDosesPositiveInt;
  Element elementSeriesDosesPositiveInt;
  String seriesDosesString;
  Element elementSeriesDosesString;
  List<Reference> supportingImmunization;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  DateTime value;
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
        ImmunizationRecommendation instance) =>
    <String, dynamic>{
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
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'authority': instance.authority?.toJson(),
      'recommendation':
          instance.recommendation?.map((e) => e?.toJson())?.toList(),
    };

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
        ImmunizationRecommendation_Recommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'vaccineCode': instance.vaccineCode?.map((e) => e?.toJson())?.toList(),
      'targetDisease': instance.targetDisease?.toJson(),
      'contraindicatedVaccineCode': instance.contraindicatedVaccineCode
          ?.map((e) => e?.toJson())
          ?.toList(),
      'forecastStatus': instance.forecastStatus?.toJson(),
      'forecastReason':
          instance.forecastReason?.map((e) => e?.toJson())?.toList(),
      'dateCriterion':
          instance.dateCriterion?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'series': instance.series,
      'elementSeries': instance.elementSeries?.toJson(),
      'doseNumberPositiveInt': instance.doseNumberPositiveInt,
      'elementDoseNumberPositiveInt':
          instance.elementDoseNumberPositiveInt?.toJson(),
      'doseNumberString': instance.doseNumberString,
      'elementDoseNumberString': instance.elementDoseNumberString?.toJson(),
      'seriesDosesPositiveInt': instance.seriesDosesPositiveInt,
      'elementSeriesDosesPositiveInt':
          instance.elementSeriesDosesPositiveInt?.toJson(),
      'seriesDosesString': instance.seriesDosesString,
      'elementSeriesDosesString': instance.elementSeriesDosesString?.toJson(),
      'supportingImmunization':
          instance.supportingImmunization?.map((e) => e?.toJson())?.toList(),
      'supportingPatientInformation': instance.supportingPatientInformation
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

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
        ImmunizationRecommendation_DateCriterion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'value': instance.value?.toIso8601String(),
      'elementValue': instance.elementValue?.toJson(),
    };
