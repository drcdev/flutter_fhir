// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameterDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDefinition _$ParameterDefinitionFromJson(Map<String, dynamic> json) {
  return ParameterDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    use: json['use'] as String,
    min: json['min'] as int,
    max: json['max'] as String,
    documentation: json['documentation'] as String,
    type: json['type'] as String,
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$ParameterDefinitionToJson(
        ParameterDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'use': instance.use,
      'min': instance.min,
      'max': instance.max,
      'documentation': instance.documentation,
      'type': instance.type,
      'profile': instance.profile,
    };
