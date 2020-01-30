// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactPoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactPoint _$ContactPointFromJson(Map<String, dynamic> json) {
  return ContactPoint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    element_system: json['element_system'] == null
        ? null
        : Element.fromJson(json['element_system'] as Map<String, dynamic>),
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
    use: json['use'] as String,
    element_use: json['element_use'] == null
        ? null
        : Element.fromJson(json['element_use'] as Map<String, dynamic>),
    rank: json['rank'] as int,
    element_rank: json['element_rank'] == null
        ? null
        : Element.fromJson(json['element_rank'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactPointToJson(ContactPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'element_system': instance.element_system?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
      'use': instance.use,
      'element_use': instance.element_use?.toJson(),
      'rank': instance.rank,
      'element_rank': instance.element_rank?.toJson(),
      'period': instance.period?.toJson(),
    };
