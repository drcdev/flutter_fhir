// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinalProductInteraction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductInteraction _$MedicinalProductInteractionFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductInteraction(
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
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    interactant: (json['interactant'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductInteraction_Interactant.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    effect: json['effect'] == null
        ? null
        : CodeableConcept.fromJson(json['effect'] as Map<String, dynamic>),
    incidence: json['incidence'] == null
        ? null
        : CodeableConcept.fromJson(json['incidence'] as Map<String, dynamic>),
    management: json['management'] == null
        ? null
        : CodeableConcept.fromJson(json['management'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductInteractionToJson(
        MedicinalProductInteraction instance) =>
    <String, dynamic>{
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
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'interactant': instance.interactant?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'effect': instance.effect?.toJson(),
      'incidence': instance.incidence?.toJson(),
      'management': instance.management?.toJson(),
    };

MedicinalProductInteraction_Interactant
    _$MedicinalProductInteraction_InteractantFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductInteraction_Interactant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductInteraction_InteractantToJson(
        MedicinalProductInteraction_Interactant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemReference': instance.itemReference?.toJson(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
    };
