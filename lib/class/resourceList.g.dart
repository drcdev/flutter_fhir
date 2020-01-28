// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceList _$ResourceListFromJson(Map<String, dynamic> json) {
  return ResourceList(
    id: json['id'] as String,
    resourceType: json['resourceType'] as String,
  );
}

Map<String, dynamic> _$ResourceListToJson(ResourceList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resourceType': instance.resourceType,
    };
