// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adverseEvent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdverseEvent _$AdverseEventFromJson(Map<String, dynamic> json) {
  return AdverseEvent(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    actuality: json['actuality'] as String,
    element_actuality: json['element_actuality'] == null
        ? null
        : Element.fromJson(json['element_actuality'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: json['event'] == null
        ? null
        : CodeableConcept.fromJson(json['event'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    detected: json['detected'] == null
        ? null
        : DateTime.parse(json['detected'] as String),
    element_detected: json['element_detected'] == null
        ? null
        : Element.fromJson(json['element_detected'] as Map<String, dynamic>),
    recordedDate: json['recordedDate'] == null
        ? null
        : DateTime.parse(json['recordedDate'] as String),
    element_recordedDate: json['element_recordedDate'] == null
        ? null
        : Element.fromJson(
            json['element_recordedDate'] as Map<String, dynamic>),
    resultingCondition: (json['resultingCondition'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    seriousness: json['seriousness'] == null
        ? null
        : CodeableConcept.fromJson(json['seriousness'] as Map<String, dynamic>),
    severity: json['severity'] == null
        ? null
        : CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    contributor: (json['contributor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suspectEntity: (json['suspectEntity'] as List)
        ?.map((e) => e == null
            ? null
            : AdverseEvent_SuspectEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subjectMedicalHistory: (json['subjectMedicalHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceDocument: (json['referenceDocument'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    study: (json['study'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AdverseEventToJson(AdverseEvent instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'actuality': instance.actuality,
      'element_actuality': instance.element_actuality?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'detected': instance.detected?.toIso8601String(),
      'element_detected': instance.element_detected?.toJson(),
      'recordedDate': instance.recordedDate?.toIso8601String(),
      'element_recordedDate': instance.element_recordedDate?.toJson(),
      'resultingCondition':
          instance.resultingCondition?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'seriousness': instance.seriousness?.toJson(),
      'severity': instance.severity?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'contributor': instance.contributor?.map((e) => e?.toJson())?.toList(),
      'suspectEntity':
          instance.suspectEntity?.map((e) => e?.toJson())?.toList(),
      'subjectMedicalHistory':
          instance.subjectMedicalHistory?.map((e) => e?.toJson())?.toList(),
      'referenceDocument':
          instance.referenceDocument?.map((e) => e?.toJson())?.toList(),
      'study': instance.study?.map((e) => e?.toJson())?.toList(),
    };

AdverseEvent_SuspectEntity _$AdverseEvent_SuspectEntityFromJson(
    Map<String, dynamic> json) {
  return AdverseEvent_SuspectEntity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: json['instance'] == null
        ? null
        : Reference.fromJson(json['instance'] as Map<String, dynamic>),
    causality: (json['causality'] as List)
        ?.map((e) => e == null
            ? null
            : AdverseEvent_Causality.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AdverseEvent_SuspectEntityToJson(
        AdverseEvent_SuspectEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'instance': instance.instance?.toJson(),
      'causality': instance.causality?.map((e) => e?.toJson())?.toList(),
    };

AdverseEvent_Causality _$AdverseEvent_CausalityFromJson(
    Map<String, dynamic> json) {
  return AdverseEvent_Causality(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    assessment: json['assessment'] == null
        ? null
        : CodeableConcept.fromJson(json['assessment'] as Map<String, dynamic>),
    productRelatedness: json['productRelatedness'] as String,
    element_productRelatedness: json['element_productRelatedness'] == null
        ? null
        : Element.fromJson(
            json['element_productRelatedness'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AdverseEvent_CausalityToJson(
        AdverseEvent_Causality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'assessment': instance.assessment?.toJson(),
      'productRelatedness': instance.productRelatedness,
      'element_productRelatedness':
          instance.element_productRelatedness?.toJson(),
      'author': instance.author?.toJson(),
      'method': instance.method?.toJson(),
    };
