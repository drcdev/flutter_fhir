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
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    use: json['use'] as String,
    element_use: json['element_use'] == null
        ? null
        : Element.fromJson(json['element_use'] as Map<String, dynamic>),
    min: json['min'] as int,
    element_min: json['element_min'] == null
        ? null
        : Element.fromJson(json['element_min'] as Map<String, dynamic>),
    max: json['max'] as String,
    element_max: json['element_max'] == null
        ? null
        : Element.fromJson(json['element_max'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    element_documentation: json['element_documentation'] == null
        ? null
        : Element.fromJson(
            json['element_documentation'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$ParameterDefinitionToJson(
        ParameterDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'use': instance.use,
      'element_use': instance.element_use?.toJson(),
      'min': instance.min,
      'element_min': instance.element_min?.toJson(),
      'max': instance.max,
      'element_max': instance.element_max?.toJson(),
      'documentation': instance.documentation,
      'element_documentation': instance.element_documentation?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'profile': instance.profile,
    };
