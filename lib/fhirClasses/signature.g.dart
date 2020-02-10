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
    elementWhen: json['elementWhen'] == null
        ? null
        : Element.fromJson(json['elementWhen'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
    targetFormat: json['targetFormat'] as String,
    elementTargetFormat: json['elementTargetFormat'] == null
        ? null
        : Element.fromJson(json['elementTargetFormat'] as Map<String, dynamic>),
    sigFormat: json['sigFormat'] as String,
    elementSigFormat: json['elementSigFormat'] == null
        ? null
        : Element.fromJson(json['elementSigFormat'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignatureToJson(Signature instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'when': instance.when?.toIso8601String(),
      'elementWhen': instance.elementWhen?.toJson(),
      'who': instance.who?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
      'targetFormat': instance.targetFormat,
      'elementTargetFormat': instance.elementTargetFormat?.toJson(),
      'sigFormat': instance.sigFormat,
      'elementSigFormat': instance.elementSigFormat?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
