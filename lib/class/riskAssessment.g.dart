// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riskAssessment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiskAssessment _$RiskAssessmentFromJson(Map<String, dynamic> json) {
  return RiskAssessment(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
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
    element_occurrenceDateTime: json['element_occurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_occurrenceDateTime'] as Map<String, dynamic>),
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
    element_mitigation: json['element_mitigation'] == null
        ? null
        : Element.fromJson(json['element_mitigation'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RiskAssessmentToJson(RiskAssessment instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.toJson(),
      'parent': instance.parent?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'method': instance.method?.toJson(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'element_occurrenceDateTime':
          instance.element_occurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'condition': instance.condition?.toJson(),
      'performer': instance.performer?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'basis': instance.basis?.map((e) => e?.toJson())?.toList(),
      'prediction': instance.prediction?.map((e) => e?.toJson())?.toList(),
      'mitigation': instance.mitigation,
      'element_mitigation': instance.element_mitigation?.toJson(),
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
    element_probabilityDecimal: json['element_probabilityDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_probabilityDecimal'] as Map<String, dynamic>),
    probabilityRange: json['probabilityRange'] == null
        ? null
        : Range.fromJson(json['probabilityRange'] as Map<String, dynamic>),
    qualitativeRisk: json['qualitativeRisk'] == null
        ? null
        : CodeableConcept.fromJson(
            json['qualitativeRisk'] as Map<String, dynamic>),
    relativeRisk: (json['relativeRisk'] as num)?.toDouble(),
    element_relativeRisk: json['element_relativeRisk'] == null
        ? null
        : Element.fromJson(
            json['element_relativeRisk'] as Map<String, dynamic>),
    whenPeriod: json['whenPeriod'] == null
        ? null
        : Period.fromJson(json['whenPeriod'] as Map<String, dynamic>),
    whenRange: json['whenRange'] == null
        ? null
        : Range.fromJson(json['whenRange'] as Map<String, dynamic>),
    rationale: json['rationale'] as String,
    element_rationale: json['element_rationale'] == null
        ? null
        : Element.fromJson(json['element_rationale'] as Map<String, dynamic>),
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
      'element_probabilityDecimal':
          instance.element_probabilityDecimal?.toJson(),
      'probabilityRange': instance.probabilityRange?.toJson(),
      'qualitativeRisk': instance.qualitativeRisk?.toJson(),
      'relativeRisk': instance.relativeRisk,
      'element_relativeRisk': instance.element_relativeRisk?.toJson(),
      'whenPeriod': instance.whenPeriod?.toJson(),
      'whenRange': instance.whenRange?.toJson(),
      'rationale': instance.rationale,
      'element_rationale': instance.element_rationale?.toJson(),
    };
