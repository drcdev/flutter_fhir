// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Qualification _$QualificationFromJson(Map<String, dynamic> json) {
  return Qualification(
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

Map<String, dynamic> _$QualificationToJson(Qualification instance) =>
    <String, dynamic>{
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'period': instance.period?.toJson(),
      'issuer': instance.issuer?.toJson(),
    };
