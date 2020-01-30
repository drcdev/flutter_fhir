// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operationOutcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationOutcome _$OperationOutcomeFromJson(Map<String, dynamic> json) {
  return OperationOutcome(
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
    issue: (json['issue'] as List)
        ?.map((e) => e == null
            ? null
            : OperationOutcome_Issue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationOutcomeToJson(OperationOutcome instance) =>
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
      'issue': instance.issue?.map((e) => e?.toJson())?.toList(),
    };

OperationOutcome_Issue _$OperationOutcome_IssueFromJson(
    Map<String, dynamic> json) {
  return OperationOutcome_Issue(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    severity: json['severity'] as String,
    element_severity: json['element_severity'] == null
        ? null
        : Element.fromJson(json['element_severity'] as Map<String, dynamic>),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    details: json['details'] == null
        ? null
        : CodeableConcept.fromJson(json['details'] as Map<String, dynamic>),
    diagnostics: json['diagnostics'] as String,
    element_diagnostics: json['element_diagnostics'] == null
        ? null
        : Element.fromJson(json['element_diagnostics'] as Map<String, dynamic>),
    location: (json['location'] as List)?.map((e) => e as String)?.toList(),
    element_location: (json['element_location'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expression: (json['expression'] as List)?.map((e) => e as String)?.toList(),
    element_expression: (json['element_expression'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationOutcome_IssueToJson(
        OperationOutcome_Issue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'severity': instance.severity,
      'element_severity': instance.element_severity?.toJson(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'details': instance.details?.toJson(),
      'diagnostics': instance.diagnostics,
      'element_diagnostics': instance.element_diagnostics?.toJson(),
      'location': instance.location,
      'element_location':
          instance.element_location?.map((e) => e?.toJson())?.toList(),
      'expression': instance.expression,
      'element_expression':
          instance.element_expression?.map((e) => e?.toJson())?.toList(),
    };
