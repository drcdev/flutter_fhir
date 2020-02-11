import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 119)
class ImmunizationRecommendation {

	static Future<ImmunizationRecommendation> newInstance({
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
		List<ImmunizationRecommendation_Recommendation> recommendation}) async {
	 return ImmunizationRecommendation(
			id: await newEntry('ImmunizationRecommendation'),
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
			patient: patient,
			date: date,
			elementDate: elementDate,
			authority: authority,
			recommendation: recommendation);
	}

  @HiveField(0)
  final String resourceType= 'ImmunizationRecommendation';
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

ImmunizationRecommendation(
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
    @required this.patient,
    this.date,
    this.elementDate,
    this.authority,
    @required this.recommendation
    });

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendationFromJson(json);
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
		List<Reference> supportingPatientInformation}) async {
	 return ImmunizationRecommendation_Recommendation(
			id: await newEntry('ImmunizationRecommendation_Recommendation'),
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
			supportingPatientInformation: supportingPatientInformation);
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
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementDoseNumberPositiveInt;
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
  Element elementDoseNumberString;
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementSeriesDosesPositiveInt;
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
  Element elementSeriesDosesString;
  List<Reference> supportingImmunization;
  List<Reference> supportingPatientInformation;

ImmunizationRecommendation_Recommendation(
  {this.id,
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
    this.supportingPatientInformation
    });

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_RecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

	static Future<ImmunizationRecommendation_DateCriterion> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		DateTime value,
		Element elementValue}) async {
	 return ImmunizationRecommendation_DateCriterion(
			id: await newEntry('ImmunizationRecommendation_DateCriterion'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			value: value,
			elementValue: elementValue);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  DateTime value;
  Element elementValue;

ImmunizationRecommendation_DateCriterion(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.value,
    this.elementValue
    });

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_DateCriterionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImmunizationRecommendationAdapter
    extends TypeAdapter<ImmunizationRecommendation> {
  @override
  final typeId = 119;

  @override
  ImmunizationRecommendation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImmunizationRecommendation(
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationRecommendation _$ImmunizationRecommendationFromJson(
    Map<String, dynamic> json) {
  return ImmunizationRecommendation(
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
