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
    elementVersionId: json['elementVersionId'] == null
        ? null
        : Element.fromJson(json['elementVersionId'] as Map<String, dynamic>),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
    elementLastUpdated: json['elementLastUpdated'] == null
        ? null
        : Element.fromJson(json['elementLastUpdated'] as Map<String, dynamic>),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
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
      'elementVersionId': instance.elementVersionId?.toJson(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'elementLastUpdated': instance.elementLastUpdated?.toJson(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'profile': instance.profile,
      'security': instance.security?.map((e) => e?.toJson())?.toList(),
      'tag': instance.tag?.map((e) => e?.toJson())?.toList(),
    };
