// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Count _$CountFromJson(Map<String, dynamic> json) {
  return Count(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: (json['value'] as num)?.toDouble(),
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
    comparator: json['comparator'] as String,
    element_comparator: json['element_comparator'] == null
        ? null
        : Element.fromJson(json['element_comparator'] as Map<String, dynamic>),
    unit: json['unit'] as String,
    element_unit: json['element_unit'] == null
        ? null
        : Element.fromJson(json['element_unit'] as Map<String, dynamic>),
    system: json['system'] as String,
    element_system: json['element_system'] == null
        ? null
        : Element.fromJson(json['element_system'] as Map<String, dynamic>),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CountToJson(Count instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
      'comparator': instance.comparator,
      'element_comparator': instance.element_comparator?.toJson(),
      'unit': instance.unit,
      'element_unit': instance.element_unit?.toJson(),
      'system': instance.system,
      'element_system': instance.element_system?.toJson(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
    };
