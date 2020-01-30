// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guidanceResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuidanceResponse _$GuidanceResponseFromJson(Map<String, dynamic> json) {
  return GuidanceResponse(
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
    requestIdentifier: json['requestIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['requestIdentifier'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    moduleUri: json['moduleUri'] as String,
    element_moduleUri: json['element_moduleUri'] == null
        ? null
        : Element.fromJson(json['element_moduleUri'] as Map<String, dynamic>),
    moduleCanonical: json['moduleCanonical'] as String,
    element_moduleCanonical: json['element_moduleCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_moduleCanonical'] as Map<String, dynamic>),
    moduleCodeableConcept: json['moduleCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['moduleCodeableConcept'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] == null
        ? null
        : DateTime.parse(json['occurrenceDateTime'] as String),
    element_occurrenceDateTime: json['element_occurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_occurrenceDateTime'] as Map<String, dynamic>),
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
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluationMessage: (json['evaluationMessage'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outputParameters: json['outputParameters'] == null
        ? null
        : Reference.fromJson(json['outputParameters'] as Map<String, dynamic>),
    result: json['result'] == null
        ? null
        : Reference.fromJson(json['result'] as Map<String, dynamic>),
    dataRequirement: (json['dataRequirement'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GuidanceResponseToJson(GuidanceResponse instance) =>
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
      'requestIdentifier': instance.requestIdentifier?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'moduleUri': instance.moduleUri,
      'element_moduleUri': instance.element_moduleUri?.toJson(),
      'moduleCanonical': instance.moduleCanonical,
      'element_moduleCanonical': instance.element_moduleCanonical?.toJson(),
      'moduleCodeableConcept': instance.moduleCodeableConcept?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime?.toIso8601String(),
      'element_occurrenceDateTime':
          instance.element_occurrenceDateTime?.toJson(),
      'performer': instance.performer?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'evaluationMessage':
          instance.evaluationMessage?.map((e) => e?.toJson())?.toList(),
      'outputParameters': instance.outputParameters?.toJson(),
      'result': instance.result?.toJson(),
      'dataRequirement':
          instance.dataRequirement?.map((e) => e?.toJson())?.toList(),
    };
