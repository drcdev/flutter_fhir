// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

meta _$metaFromJson(Map<String, dynamic> json) {
  return meta(
    lastUpdated: json['lastUpdated'] as String,
    createdAt: json['createdAt'] as String,
  )..versionId = json['versionId'] as String;
}

Map<String, dynamic> _$metaToJson(meta instance) => <String, dynamic>{
      'lastUpdated': instance.lastUpdated,
      'createdAt': instance.createdAt,
      'versionId': instance.versionId,
    };
