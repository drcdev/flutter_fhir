import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
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

@JsonSerializable(explicitToJson: true)
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
	RiskAssessment newRiskAssessment = new RiskAssessment(
			id: await newId('RiskAssessment'),
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
	var riskAssessmentBox = await Hive.openBox<RiskAssessment>('RiskAssessmentBox');
	riskAssessmentBox.put(newRiskAssessment.id, newRiskAssessment);
	return newRiskAssessment;
}
  final String resourceType= 'RiskAssessment';
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
  Reference basedOn;
  Reference parent;
  String status;
  Element elementStatus;
  CodeableConcept method;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementOccurrenceDateTime;
  Period occurrencePeriod;
  Reference condition;
  Reference performer;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Reference> basis;
  List<RiskAssessment_Prediction> prediction;
  String mitigation;
  Element elementMitigation;
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
		int probabilityDecimal,
		Element elementProbabilityDecimal,
		Range probabilityRange,
		CodeableConcept qualitativeRisk,
		double relativeRisk,
		Element elementRelativeRisk,
		Period whenPeriod,
		Range whenRange,
		String rationale,
		Element elementRationale}) async {
	RiskAssessment_Prediction newRiskAssessment_Prediction = new RiskAssessment_Prediction(
			id: await newId('RiskAssessment_Prediction'),
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
	var riskAssessment_PredictionBox = await Hive.openBox<RiskAssessment_Prediction>('RiskAssessment_PredictionBox');
	riskAssessment_PredictionBox.put(newRiskAssessment_Prediction.id, newRiskAssessment_Prediction);
	return newRiskAssessment_Prediction;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept outcome;
  int probabilityDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
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
    probabilityDecimal: json['probabilityDecimal'] as int,
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
