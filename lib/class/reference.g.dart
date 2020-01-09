// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return Reference(
    reference: json['reference'] as String,
    type: json['type'] as String,
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    display: json['display'] as String,
  );
}

Map<String, dynamic> _$ReferenceToJson(Reference instance) => <String, dynamic>{
      'reference': instance.reference,
      'type': instance.type,
      'identifier': instance.identifier?.toJson(),
      'display': instance.display,
    };
