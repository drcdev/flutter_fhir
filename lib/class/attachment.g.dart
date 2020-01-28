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
    language: json['language'] as String,
    data: json['data'] as String,
    url: json['url'] as String,
    size: json['size'] as int,
    hash: json['hash'] as String,
    title: json['title'] as String,
    creation: json['creation'] == null
        ? null
        : DateTime.parse(json['creation'] as String),
  );
}

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'contentType': instance.contentType,
      'language': instance.language,
      'data': instance.data,
      'url': instance.url,
      'size': instance.size,
      'hash': instance.hash,
      'title': instance.title,
      'creation': instance.creation?.toIso8601String(),
    };
