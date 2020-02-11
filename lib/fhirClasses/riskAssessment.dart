import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 175)
class RiskAssessment {

	static Future<RiskAssessment> newInstance({
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
		Reference basedOn,
		Reference parent,
		String status,
		Element elementStatus,
		CodeableConcept method,
		CodeableConcept code,
		Reference subject,
		Reference encounter,
		String occurrenceDateTime,
		Element elementOccurrenceDateTime,
		Period occurrencePeriod,
		Reference condition,
		Reference performer,
		List<CodeableConcept> reasonCode,
		List<Reference> reasonReference,
		List<Reference> basis,
		List<RiskAssessment_Prediction> prediction,
		String mitigation,
		Element elementMitigation,
		List<Annotation> note}) async {
	 return RiskAssessment(
			id: await newEntry('RiskAssessment'),
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
			basedOn: basedOn,
			parent: parent,
			status: status,
			elementStatus: elementStatus,
			method: method,
			code: code,
			subject: subject,
			encounter: encounter,
			occurrenceDateTime: occurrenceDateTime,
			elementOccurrenceDateTime: elementOccurrenceDateTime,
			occurrencePeriod: occurrencePeriod,
			condition: condition,
			performer: performer,
			reasonCode: reasonCode,
			reasonReference: reasonReference,
			basis: basis,
			prediction: prediction,
			mitigation: mitigation,
			elementMitigation: elementMitigation,
			note: note);
	}

  @HiveField(0)
  final String resourceType= 'RiskAssessment';
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
  Reference basedOn;
  @HiveField(13)
  Reference parent;
  @HiveField(14)
  String status;
  @HiveField(15)
  Element elementStatus;
  @HiveField(16)
  CodeableConcept method;
  @HiveField(17)
  CodeableConcept code;
  @HiveField(18)
  Reference subject;
  @HiveField(19)
  Reference encounter;
  @HiveField(20)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(21)
  Element elementOccurrenceDateTime;
  @HiveField(22)
  Period occurrencePeriod;
  @HiveField(23)
  Reference condition;
  @HiveField(24)
  Reference performer;
  @HiveField(25)
  List<CodeableConcept> reasonCode;
  @HiveField(26)
  List<Reference> reasonReference;
  @HiveField(27)
  List<Reference> basis;
  @HiveField(28)
  List<RiskAssessment_Prediction> prediction;
  @HiveField(29)
  String mitigation;
  @HiveField(30)
  Element elementMitigation;
  @HiveField(31)
  List<Annotation> note;

RiskAssessment(
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
    this.basedOn,
    this.parent,
    this.status,
    this.elementStatus,
    this.method,
    this.code,
    @required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.elementMitigation,
    this.note
    });

  factory RiskAssessment.fromJson(Map<String, dynamic> json) => _$RiskAssessmentFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

	static Future<RiskAssessment_Prediction> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept outcome,
		double probabilityDecimal,
		Element elementProbabilityDecimal,
		Range probabilityRange,
		CodeableConcept qualitativeRisk,
		double relativeRisk,
		Element elementRelativeRisk,
		Period whenPeriod,
		Range whenRange,
		String rationale,
		Element elementRationale}) async {
	 return RiskAssessment_Prediction(
			id: await newEntry('RiskAssessment_Prediction'),
			extension: extension,
			modifierExtension: modifierExtension,
			outcome: outcome,
			probabilityDecimal: probabilityDecimal,
			elementProbabilityDecimal: elementProbabilityDecimal,
			probabilityRange: probabilityRange,
			qualitativeRisk: qualitativeRisk,
			relativeRisk: relativeRisk,
			elementRelativeRisk: elementRelativeRisk,
			whenPeriod: whenPeriod,
			whenRange: whenRange,
			rationale: rationale,
			elementRationale: elementRationale);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept outcome;
  double probabilityDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementProbabilityDecimal;
  Range probabilityRange;
  CodeableConcept qualitativeRisk;
  double relativeRisk;
  Element elementRelativeRisk;
  Period whenPeriod;
  Range whenRange;
  String rationale;
  Element elementRationale;

RiskAssessment_Prediction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.elementProbabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.elementRelativeRisk,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    this.elementRationale
    });

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) => _$RiskAssessment_PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessment_PredictionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RiskAssessmentAdapter extends TypeAdapter<RiskAssessment> {
  @override
  final typeId = 175;

  @override
  RiskAssessment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiskAssessment(
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
      basedOn: fields[12] as Reference,
      parent: fields[13] as Reference,
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      method: fields[16] as CodeableConcept,
      code: fields[17] as CodeableConcept,
      subject: fields[18] as Reference,
      encounter: fields[19] as Reference,
      occurrenceDateTime: fields[20] as String,
      elementOccurrenceDateTime: fields[21] as Element,
      occurrencePeriod: fields[22] as Period,
      condition: fields[23] as Reference,
      performer: fields[24] as Reference,
      reasonCode: (fields[25] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[26] as List)?.cast<Reference>(),
      basis: (fields[27] as List)?.cast<Reference>(),
      prediction: (fields[28] as List)?.cast<RiskAssessment_Prediction>(),
      mitigation: fields[29] as String,
      elementMitigation: fields[30] as Element,
      note: (fields[31] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, RiskAssessment obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.parent)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.method)
      ..writeByte(17)
      ..write(obj.code)
      ..writeByte(18)
      ..write(obj.subject)
      ..writeByte(19)
      ..write(obj.encounter)
      ..writeByte(20)
      ..write(obj.occurrenceDateTime)
      ..writeByte(21)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(22)
      ..write(obj.occurrencePeriod)
      ..writeByte(23)
      ..write(obj.condition)
      ..writeByte(24)
      ..write(obj.performer)
      ..writeByte(25)
      ..write(obj.reasonCode)
      ..writeByte(26)
      ..write(obj.reasonReference)
      ..writeByte(27)
      ..write(obj.basis)
      ..writeByte(28)
      ..write(obj.prediction)
      ..writeByte(29)
      ..write(obj.mitigation)
      ..writeByte(30)
      ..write(obj.elementMitigation)
      ..writeByte(31)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskAssessment _$RiskAssessmentFromJson(Map<String, dynamic> json) {
  return RiskAssessment(
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
    basedOn: json['basedOn'] == null
        ? null
        : Reference.fromJson(json['basedOn'] as Map<String, dynamic>),
    parent: json['parent'] == null
        ? null
        : Reference.fromJson(json['parent'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    condition: json['condition'] == null
        ? null
        : Reference.fromJson(json['condition'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basis: (json['basis'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prediction: (json['prediction'] as List)
        ?.map((e) => e == null
            ? null
            : RiskAssessment_Prediction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mitigation: json['mitigation'] as String,
    elementMitigation: json['elementMitigation'] == null
        ? null
        : Element.fromJson(json['elementMitigation'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskAssessmentToJson(RiskAssessment instance) =>
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
      'basedOn': instance.basedOn?.toJson(),
      'parent': instance.parent?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'method': instance.method?.toJson(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'condition': instance.condition?.toJson(),
      'performer': instance.performer?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'basis': instance.basis?.map((e) => e?.toJson())?.toList(),
      'prediction': instance.prediction?.map((e) => e?.toJson())?.toList(),
      'mitigation': instance.mitigation,
      'elementMitigation': instance.elementMitigation?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

RiskAssessment_Prediction _$RiskAssessment_PredictionFromJson(
    Map<String, dynamic> json) {
  return RiskAssessment_Prediction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    probabilityDecimal: (json['probabilityDecimal'] as num)?.toDouble(),
    elementProbabilityDecimal: json['elementProbabilityDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementProbabilityDecimal'] as Map<String, dynamic>),
    probabilityRange: json['probabilityRange'] == null
        ? null
        : Range.fromJson(json['probabilityRange'] as Map<String, dynamic>),
    qualitativeRisk: json['qualitativeRisk'] == null
        ? null
        : CodeableConcept.fromJson(
            json['qualitativeRisk'] as Map<String, dynamic>),
    relativeRisk: (json['relativeRisk'] as num)?.toDouble(),
    elementRelativeRisk: json['elementRelativeRisk'] == null
        ? null
        : Element.fromJson(json['elementRelativeRisk'] as Map<String, dynamic>),
    whenPeriod: json['whenPeriod'] == null
        ? null
        : Period.fromJson(json['whenPeriod'] as Map<String, dynamic>),
    whenRange: json['whenRange'] == null
        ? null
        : Range.fromJson(json['whenRange'] as Map<String, dynamic>),
    rationale: json['rationale'] as String,
    elementRationale: json['elementRationale'] == null
        ? null
        : Element.fromJson(json['elementRationale'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RiskAssessment_PredictionToJson(
        RiskAssessment_Prediction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'outcome': instance.outcome?.toJson(),
      'probabilityDecimal': instance.probabilityDecimal,
      'elementProbabilityDecimal': instance.elementProbabilityDecimal?.toJson(),
      'probabilityRange': instance.probabilityRange?.toJson(),
      'qualitativeRisk': instance.qualitativeRisk?.toJson(),
      'relativeRisk': instance.relativeRisk,
      'elementRelativeRisk': instance.elementRelativeRisk?.toJson(),
      'whenPeriod': instance.whenPeriod?.toJson(),
      'whenRange': instance.whenRange?.toJson(),
      'rationale': instance.rationale,
      'elementRationale': instance.elementRationale?.toJson(),
    };
