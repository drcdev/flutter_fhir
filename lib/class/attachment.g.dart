// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return Attachment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentType: json['contentType'] as String,
    element_contentType: json['element_contentType'] == null
        ? null
        : Element.fromJson(json['element_contentType'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    data: json['data'] as String,
    element_data: json['element_data'] == null
        ? null
        : Element.fromJson(json['element_data'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    size: json['size'] as int,
    element_size: json['element_size'] == null
        ? null
        : Element.fromJson(json['element_size'] as Map<String, dynamic>),
    hash: json['hash'] as String,
    element_hash: json['element_hash'] == null
        ? null
        : Element.fromJson(json['element_hash'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    creation: json['creation'] == null
        ? null
        : DateTime.parse(json['creation'] as String),
    element_creation: json['element_creation'] == null
        ? null
        : Element.fromJson(json['element_creation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'contentType': instance.contentType,
      'element_contentType': instance.element_contentType?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'data': instance.data,
      'element_data': instance.element_data?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'size': instance.size,
      'element_size': instance.element_size?.toJson(),
      'hash': instance.hash,
      'element_hash': instance.element_hash?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'creation': instance.creation?.toIso8601String(),
      'element_creation': instance.element_creation?.toJson(),
    };
