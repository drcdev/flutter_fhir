// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return Bundle(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    type: json['type'] as String,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    total: json['total'] as int,
    link: (json['link'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entry: (json['entry'] as List)
        ?.map(
            (e) => e == null ? null : Entry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BundleToJson(Bundle instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'id': instance.id,
      'timestamp': instance.timestamp?.toIso8601String(),
      'total': instance.total,
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };
