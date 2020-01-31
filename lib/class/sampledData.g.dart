// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sampledData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampledData _$SampledDataFromJson(Map<String, dynamic> json) {
  return SampledData(
    json['origin'] == null
        ? null
        : Quantity.fromJson(json['origin'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: (json['period'] as num)?.toDouble(),
    element_period: json['element_period'] == null
        ? null
        : Element.fromJson(json['element_period'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    element_factor: json['element_factor'] == null
        ? null
        : Element.fromJson(json['element_factor'] as Map<String, dynamic>),
    lowerLimit: (json['lowerLimit'] as num)?.toDouble(),
    element_lowerLimit: json['element_lowerLimit'] == null
        ? null
        : Element.fromJson(json['element_lowerLimit'] as Map<String, dynamic>),
    upperLimit: (json['upperLimit'] as num)?.toDouble(),
    element_upperLimit: json['element_upperLimit'] == null
        ? null
        : Element.fromJson(json['element_upperLimit'] as Map<String, dynamic>),
    dimensions: json['dimensions'] as int,
    element_dimensions: json['element_dimensions'] == null
        ? null
        : Element.fromJson(json['element_dimensions'] as Map<String, dynamic>),
    data: json['data'] as String,
    element_data: json['element_data'] == null
        ? null
        : Element.fromJson(json['element_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SampledDataToJson(SampledData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'origin': instance.origin?.toJson(),
      'period': instance.period,
      'element_period': instance.element_period?.toJson(),
      'factor': instance.factor,
      'element_factor': instance.element_factor?.toJson(),
      'lowerLimit': instance.lowerLimit,
      'element_lowerLimit': instance.element_lowerLimit?.toJson(),
      'upperLimit': instance.upperLimit,
      'element_upperLimit': instance.element_upperLimit?.toJson(),
      'dimensions': instance.dimensions,
      'element_dimensions': instance.element_dimensions?.toJson(),
      'data': instance.data,
      'element_data': instance.element_data?.toJson(),
    };
