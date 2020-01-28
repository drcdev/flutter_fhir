// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expression _$ExpressionFromJson(Map<String, dynamic> json) {
  return Expression(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    name: json['name'] as String,
    language: json['language'] as String,
    expression: json['expression'] as String,
    reference: json['reference'] as String,
  );
}

Map<String, dynamic> _$ExpressionToJson(Expression instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'name': instance.name,
      'language': instance.language,
      'expression': instance.expression,
      'reference': instance.reference,
    };
