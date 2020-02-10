// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'researchSubject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchSubject _$ResearchSubjectFromJson(Map<String, dynamic> json) {
  return ResearchSubject(
    json['study'] == null
        ? null
        : Reference.fromJson(json['study'] as Map<String, dynamic>),
    json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    assignedArm: json['assignedArm'] as String,
    elementAssignedArm: json['elementAssignedArm'] == null
        ? null
        : Element.fromJson(json['elementAssignedArm'] as Map<String, dynamic>),
    actualArm: json['actualArm'] as String,
    elementActualArm: json['elementActualArm'] == null
        ? null
        : Element.fromJson(json['elementActualArm'] as Map<String, dynamic>),
    consent: json['consent'] == null
        ? null
        : Reference.fromJson(json['consent'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResearchSubjectToJson(ResearchSubject instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
      'study': instance.study?.toJson(),
      'individual': instance.individual?.toJson(),
      'assignedArm': instance.assignedArm,
      'elementAssignedArm': instance.elementAssignedArm?.toJson(),
      'actualArm': instance.actualArm,
      'elementActualArm': instance.elementActualArm?.toJson(),
      'consent': instance.consent?.toJson(),
    };
