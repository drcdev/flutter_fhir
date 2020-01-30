// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versionId: json['versionId'] as String,
    element_versionId: json['element_versionId'] == null
        ? null
        : Element.fromJson(json['element_versionId'] as Map<String, dynamic>),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
    element_lastUpdated: json['element_lastUpdated'] == null
        ? null
        : Element.fromJson(json['element_lastUpdated'] as Map<String, dynamic>),
    source: json['source'] as String,
    element_source: json['element_source'] == null
        ? null
        : Element.fromJson(json['element_source'] as Map<String, dynamic>),
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    security: (json['security'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tag: (json['tag'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'versionId': instance.versionId,
      'element_versionId': instance.element_versionId?.toJson(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'element_lastUpdated': instance.element_lastUpdated?.toJson(),
      'source': instance.source,
      'element_source': instance.element_source?.toJson(),
      'profile': instance.profile,
      'security': instance.security?.map((e) => e?.toJson())?.toList(),
      'tag': instance.tag?.map((e) => e?.toJson())?.toList(),
    };
