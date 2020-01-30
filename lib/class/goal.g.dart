// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return Goal(
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
    lifecycleStatus: json['lifecycleStatus'] as String,
    element_lifecycleStatus: json['element_lifecycleStatus'] == null
        ? null
        : Element.fromJson(
            json['element_lifecycleStatus'] as Map<String, dynamic>),
    achievementStatus: json['achievementStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['achievementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    description: json['description'] == null
        ? null
        : CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    startDate: json['startDate'] as String,
    element_startDate: json['element_startDate'] == null
        ? null
        : Element.fromJson(json['element_startDate'] as Map<String, dynamic>),
    startCodeableConcept: json['startCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['startCodeableConcept'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Goal_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    statusDate: json['statusDate'] as String,
    element_statusDate: json['element_statusDate'] == null
        ? null
        : Element.fromJson(json['element_statusDate'] as Map<String, dynamic>),
    statusReason: json['statusReason'] as String,
    element_statusReason: json['element_statusReason'] == null
        ? null
        : Element.fromJson(
            json['element_statusReason'] as Map<String, dynamic>),
    expressedBy: json['expressedBy'] == null
        ? null
        : Reference.fromJson(json['expressedBy'] as Map<String, dynamic>),
    addresses: (json['addresses'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeCode: (json['outcomeCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeReference: (json['outcomeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
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
      'lifecycleStatus': instance.lifecycleStatus,
      'element_lifecycleStatus': instance.element_lifecycleStatus?.toJson(),
      'achievementStatus': instance.achievementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority?.toJson(),
      'description': instance.description?.toJson(),
      'subject': instance.subject?.toJson(),
      'startDate': instance.startDate,
      'element_startDate': instance.element_startDate?.toJson(),
      'startCodeableConcept': instance.startCodeableConcept?.toJson(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'statusDate': instance.statusDate,
      'element_statusDate': instance.element_statusDate?.toJson(),
      'statusReason': instance.statusReason,
      'element_statusReason': instance.element_statusReason?.toJson(),
      'expressedBy': instance.expressedBy?.toJson(),
      'addresses': instance.addresses?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'outcomeCode': instance.outcomeCode?.map((e) => e?.toJson())?.toList(),
      'outcomeReference':
          instance.outcomeReference?.map((e) => e?.toJson())?.toList(),
    };

Goal_Target _$Goal_TargetFromJson(Map<String, dynamic> json) {
  return Goal_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measure: json['measure'] == null
        ? null
        : CodeableConcept.fromJson(json['measure'] as Map<String, dynamic>),
    detailQuantity: json['detailQuantity'] == null
        ? null
        : Quantity.fromJson(json['detailQuantity'] as Map<String, dynamic>),
    detailRange: json['detailRange'] == null
        ? null
        : Range.fromJson(json['detailRange'] as Map<String, dynamic>),
    detailCodeableConcept: json['detailCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['detailCodeableConcept'] as Map<String, dynamic>),
    detailString: json['detailString'] as String,
    element_detailString: json['element_detailString'] == null
        ? null
        : Element.fromJson(
            json['element_detailString'] as Map<String, dynamic>),
    detailBoolean: json['detailBoolean'] as bool,
    element_detailBoolean: json['element_detailBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_detailBoolean'] as Map<String, dynamic>),
    detailInteger: json['detailInteger'] as int,
    element_detailInteger: json['element_detailInteger'] == null
        ? null
        : Element.fromJson(
            json['element_detailInteger'] as Map<String, dynamic>),
    detailRatio: json['detailRatio'] == null
        ? null
        : Ratio.fromJson(json['detailRatio'] as Map<String, dynamic>),
    dueDate: json['dueDate'] as String,
    element_dueDate: json['element_dueDate'] == null
        ? null
        : Element.fromJson(json['element_dueDate'] as Map<String, dynamic>),
    dueDuration: json['dueDuration'],
  );
}

Map<String, dynamic> _$Goal_TargetToJson(Goal_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'measure': instance.measure?.toJson(),
      'detailQuantity': instance.detailQuantity?.toJson(),
      'detailRange': instance.detailRange?.toJson(),
      'detailCodeableConcept': instance.detailCodeableConcept?.toJson(),
      'detailString': instance.detailString,
      'element_detailString': instance.element_detailString?.toJson(),
      'detailBoolean': instance.detailBoolean,
      'element_detailBoolean': instance.element_detailBoolean?.toJson(),
      'detailInteger': instance.detailInteger,
      'element_detailInteger': instance.element_detailInteger?.toJson(),
      'detailRatio': instance.detailRatio?.toJson(),
      'dueDate': instance.dueDate,
      'element_dueDate': instance.element_dueDate?.toJson(),
      'dueDuration': instance.dueDuration,
    };
