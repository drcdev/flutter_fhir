// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return Goal(
    json['description'] == null
        ? null
        : CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    lifecycleStatus: json['lifecycleStatus'] as String,
    elementLifecycleStatus: json['elementLifecycleStatus'] == null
        ? null
        : Element.fromJson(
            json['elementLifecycleStatus'] as Map<String, dynamic>),
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
    startDate: json['startDate'] as String,
    elementStartDate: json['elementStartDate'] == null
        ? null
        : Element.fromJson(json['elementStartDate'] as Map<String, dynamic>),
    startCodeableConcept: json['startCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['startCodeableConcept'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Goal_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    statusDate: json['statusDate'] as String,
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    statusReason: json['statusReason'] as String,
    elementStatusReason: json['elementStatusReason'] == null
        ? null
        : Element.fromJson(json['elementStatusReason'] as Map<String, dynamic>),
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
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'lifecycleStatus': instance.lifecycleStatus,
      'elementLifecycleStatus': instance.elementLifecycleStatus?.toJson(),
      'achievementStatus': instance.achievementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority?.toJson(),
      'description': instance.description?.toJson(),
      'subject': instance.subject?.toJson(),
      'startDate': instance.startDate,
      'elementStartDate': instance.elementStartDate?.toJson(),
      'startCodeableConcept': instance.startCodeableConcept?.toJson(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'statusDate': instance.statusDate,
      'elementStatusDate': instance.elementStatusDate?.toJson(),
      'statusReason': instance.statusReason,
      'elementStatusReason': instance.elementStatusReason?.toJson(),
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
    elementDetailString: json['elementDetailString'] == null
        ? null
        : Element.fromJson(json['elementDetailString'] as Map<String, dynamic>),
    detailBoolean: json['detailBoolean'] as bool,
    elementDetailBoolean: json['elementDetailBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDetailBoolean'] as Map<String, dynamic>),
    detailInteger: json['detailInteger'] as int,
    elementDetailInteger: json['elementDetailInteger'] == null
        ? null
        : Element.fromJson(
            json['elementDetailInteger'] as Map<String, dynamic>),
    detailRatio: json['detailRatio'] == null
        ? null
        : Ratio.fromJson(json['detailRatio'] as Map<String, dynamic>),
    dueDate: json['dueDate'] as String,
    elementDueDate: json['elementDueDate'] == null
        ? null
        : Element.fromJson(json['elementDueDate'] as Map<String, dynamic>),
    dueDuration: json['dueDuration'] == null
        ? null
        : Duration.fromJson(json['dueDuration'] as Map<String, dynamic>),
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
      'elementDetailString': instance.elementDetailString?.toJson(),
      'detailBoolean': instance.detailBoolean,
      'elementDetailBoolean': instance.elementDetailBoolean?.toJson(),
      'detailInteger': instance.detailInteger,
      'elementDetailInteger': instance.elementDetailInteger?.toJson(),
      'detailRatio': instance.detailRatio?.toJson(),
      'dueDate': instance.dueDate,
      'elementDueDate': instance.elementDueDate?.toJson(),
      'dueDuration': instance.dueDuration?.toJson(),
    };
