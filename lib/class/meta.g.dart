// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    lastUpdated: json['lastUpdated'] as String,
    createdAt: json['createdAt'] as String,
    versionId: json['versionId'] as String,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'lastUpdated': instance.lastUpdated,
      'createdAt': instance.createdAt,
      'versionId': instance.versionId,
    };
