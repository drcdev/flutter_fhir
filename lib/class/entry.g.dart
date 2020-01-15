// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry(
    resource: json['resource'] == null
        ? null
        : Patient.fromJson(json['resource'] as Map<String, dynamic>),
    fullUrl: json['fullUrl'] as String,
  );
}

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'resource': instance.resource?.toJson(),
      'fullUrl': instance.fullUrl,
    };
