// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return Signature(
    (json['type'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    when: json['when'] == null ? null : DateTime.parse(json['when'] as String),
    element_when: json['element_when'] == null
        ? null
        : Element.fromJson(json['element_when'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
    targetFormat: json['targetFormat'] as String,
    element_targetFormat: json['element_targetFormat'] == null
        ? null
        : Element.fromJson(
            json['element_targetFormat'] as Map<String, dynamic>),
    sigFormat: json['sigFormat'] as String,
    element_sigFormat: json['element_sigFormat'] == null
        ? null
        : Element.fromJson(json['element_sigFormat'] as Map<String, dynamic>),
    data: json['data'] as String,
    element_data: json['element_data'] == null
        ? null
        : Element.fromJson(json['element_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignatureToJson(Signature instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'when': instance.when?.toIso8601String(),
      'element_when': instance.element_when?.toJson(),
      'who': instance.who?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
      'targetFormat': instance.targetFormat,
      'element_targetFormat': instance.element_targetFormat?.toJson(),
      'sigFormat': instance.sigFormat,
      'element_sigFormat': instance.element_sigFormat?.toJson(),
      'data': instance.data,
      'element_data': instance.element_data?.toJson(),
    };
