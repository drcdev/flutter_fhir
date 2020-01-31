// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunizationEvaluation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImmunizationEvaluation _$ImmunizationEvaluationFromJson(
    Map<String, dynamic> json) {
  return ImmunizationEvaluation(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['targetDisease'] == null
        ? null
        : CodeableConcept.fromJson(
            json['targetDisease'] as Map<String, dynamic>),
    json['immunizationEvent'] == null
        ? null
        : Reference.fromJson(json['immunizationEvent'] as Map<String, dynamic>),
    json['doseStatus'] == null
        ? null
        : CodeableConcept.fromJson(json['doseStatus'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
    doseStatusReason: (json['doseStatusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    series: json['series'] as String,
    element_series: json['element_series'] == null
        ? null
        : Element.fromJson(json['element_series'] as Map<String, dynamic>),
    doseNumberPositiveInt: json['doseNumberPositiveInt'] as int,
    element_doseNumberPositiveInt: json['element_doseNumberPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_doseNumberPositiveInt'] as Map<String, dynamic>),
    doseNumberString: json['doseNumberString'] as String,
    element_doseNumberString: json['element_doseNumberString'] == null
        ? null
        : Element.fromJson(
            json['element_doseNumberString'] as Map<String, dynamic>),
    seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int,
    element_seriesDosesPositiveInt:
        json['element_seriesDosesPositiveInt'] == null
            ? null
            : Element.fromJson(
                json['element_seriesDosesPositiveInt'] as Map<String, dynamic>),
    seriesDosesString: json['seriesDosesString'] as String,
    element_seriesDosesString: json['element_seriesDosesString'] == null
        ? null
        : Element.fromJson(
            json['element_seriesDosesString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImmunizationEvaluationToJson(
        ImmunizationEvaluation instance) =>
    <String, dynamic>{
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
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'authority': instance.authority?.toJson(),
      'targetDisease': instance.targetDisease?.toJson(),
      'immunizationEvent': instance.immunizationEvent?.toJson(),
      'doseStatus': instance.doseStatus?.toJson(),
      'doseStatusReason':
          instance.doseStatusReason?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'series': instance.series,
      'element_series': instance.element_series?.toJson(),
      'doseNumberPositiveInt': instance.doseNumberPositiveInt,
      'element_doseNumberPositiveInt':
          instance.element_doseNumberPositiveInt?.toJson(),
      'doseNumberString': instance.doseNumberString,
      'element_doseNumberString': instance.element_doseNumberString?.toJson(),
      'seriesDosesPositiveInt': instance.seriesDosesPositiveInt,
      'element_seriesDosesPositiveInt':
          instance.element_seriesDosesPositiveInt?.toJson(),
      'seriesDosesString': instance.seriesDosesString,
      'element_seriesDosesString': instance.element_seriesDosesString?.toJson(),
    };
