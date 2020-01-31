// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allergyIntolerance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllergyIntolerance _$AllergyIntoleranceFromJson(Map<String, dynamic> json) {
  return AllergyIntolerance(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
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
    clinicalStatus: json['clinicalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['clinicalStatus'] as Map<String, dynamic>),
    verificationStatus: json['verificationStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['verificationStatus'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    category: (json['category'] as List)?.map((e) => e as String)?.toList(),
    element_category: (json['element_category'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criticality: json['criticality'] as String,
    element_criticality: json['element_criticality'] == null
        ? null
        : Element.fromJson(json['element_criticality'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    onsetDateTime: json['onsetDateTime'] as String,
    element_onsetDateTime: json['element_onsetDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_onsetDateTime'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    element_onsetString: json['element_onsetString'] == null
        ? null
        : Element.fromJson(json['element_onsetString'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    element_recordedDate: json['element_recordedDate'] == null
        ? null
        : Element.fromJson(
            json['element_recordedDate'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    lastOccurrence: json['lastOccurrence'] == null
        ? null
        : DateTime.parse(json['lastOccurrence'] as String),
    element_lastOccurrence: json['element_lastOccurrence'] == null
        ? null
        : Element.fromJson(
            json['element_lastOccurrence'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : AllergyIntolerance_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntoleranceToJson(AllergyIntolerance instance) =>
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
      'clinicalStatus': instance.clinicalStatus?.toJson(),
      'verificationStatus': instance.verificationStatus?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'category': instance.category,
      'element_category':
          instance.element_category?.map((e) => e?.toJson())?.toList(),
      'criticality': instance.criticality,
      'element_criticality': instance.element_criticality?.toJson(),
      'code': instance.code?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'onsetDateTime': instance.onsetDateTime,
      'element_onsetDateTime': instance.element_onsetDateTime?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetString': instance.onsetString,
      'element_onsetString': instance.element_onsetString?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'element_recordedDate': instance.element_recordedDate?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'lastOccurrence': instance.lastOccurrence?.toIso8601String(),
      'element_lastOccurrence': instance.element_lastOccurrence?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'reaction': instance.reaction?.map((e) => e?.toJson())?.toList(),
    };

AllergyIntolerance_Reaction _$AllergyIntolerance_ReactionFromJson(
    Map<String, dynamic> json) {
  return AllergyIntolerance_Reaction(
    (json['manifestation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    onset:
        json['onset'] == null ? null : DateTime.parse(json['onset'] as String),
    element_onset: json['element_onset'] == null
        ? null
        : Element.fromJson(json['element_onset'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    element_severity: json['element_severity'] == null
        ? null
        : Element.fromJson(json['element_severity'] as Map<String, dynamic>),
    exposureRoute: json['exposureRoute'] == null
        ? null
        : CodeableConcept.fromJson(
            json['exposureRoute'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllergyIntolerance_ReactionToJson(
        AllergyIntolerance_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'manifestation':
          instance.manifestation?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'onset': instance.onset?.toIso8601String(),
      'element_onset': instance.element_onset?.toJson(),
      'severity': instance.severity,
      'element_severity': instance.element_severity?.toJson(),
      'exposureRoute': instance.exposureRoute?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
