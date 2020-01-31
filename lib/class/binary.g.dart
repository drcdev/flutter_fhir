// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'binary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Binary _$BinaryFromJson(Map<String, dynamic> json) {
  return Binary(
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
    contentType: json['contentType'] as String,
    element_contentType: json['element_contentType'] == null
        ? null
        : Element.fromJson(json['element_contentType'] as Map<String, dynamic>),
    securityContext: json['securityContext'] == null
        ? null
        : Reference.fromJson(json['securityContext'] as Map<String, dynamic>),
    data: json['data'] as String,
    element_data: json['element_data'] == null
        ? null
        : Element.fromJson(json['element_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BinaryToJson(Binary instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'contentType': instance.contentType,
      'element_contentType': instance.element_contentType?.toJson(),
      'securityContext': instance.securityContext?.toJson(),
      'data': instance.data,
      'element_data': instance.element_data?.toJson(),
    };
