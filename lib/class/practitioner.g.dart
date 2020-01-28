// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practitioner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Practitioner _$PractitionerFromJson(Map<String, dynamic> json) {
  return Practitioner(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: json['contained'],
    extension: json['extension'],
    modifierExtension: json['modifierExtension'],
    identifier: json['identifier'],
    active: json['active'] as bool,
    name: json['name'],
    telecom: json['telecom'],
    address: json['address'],
    gender: json['gender'] as String,
    birthDate: json['birthDate'] as String,
    photo: json['photo'],
    qualification: json['qualification'],
    communication: json['communication'],
  )
    ..addresses = json['addresses']
    ..not = json['not']
    ..entered = json['entered']
    ..as = json['as'];
}

Map<String, dynamic> _$PractitionerToJson(Practitioner instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension,
      'modifierExtension': instance.modifierExtension,
      'identifier': instance.identifier,
      'active': instance.active,
      'name': instance.name,
      'telecom': instance.telecom,
      'addresses': instance.addresses,
      'not': instance.not,
      'entered': instance.entered,
      'as': instance.as,
      'address': instance.address,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'photo': instance.photo,
      'qualification': instance.qualification,
      'communication': instance.communication,
    };

Practitioner_Qualification _$Practitioner_QualificationFromJson(
    Map<String, dynamic> json) {
  return Practitioner_Qualification(
    id: json['id'] as String,
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    issuer: json['issuer'] == null
        ? null
        : Reference.fromJson(json['issuer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Practitioner_QualificationToJson(
        Practitioner_Qualification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'period': instance.period?.toJson(),
      'issuer': instance.issuer?.toJson(),
    };
