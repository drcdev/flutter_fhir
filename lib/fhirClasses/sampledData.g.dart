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
    elementPeriod: json['elementPeriod'] == null
        ? null
        : Element.fromJson(json['elementPeriod'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    lowerLimit: (json['lowerLimit'] as num)?.toDouble(),
    elementLowerLimit: json['elementLowerLimit'] == null
        ? null
        : Element.fromJson(json['elementLowerLimit'] as Map<String, dynamic>),
    upperLimit: (json['upperLimit'] as num)?.toDouble(),
    elementUpperLimit: json['elementUpperLimit'] == null
        ? null
        : Element.fromJson(json['elementUpperLimit'] as Map<String, dynamic>),
    dimensions: json['dimensions'] as int,
    elementDimensions: json['elementDimensions'] == null
        ? null
        : Element.fromJson(json['elementDimensions'] as Map<String, dynamic>),
    data: json['data'] as String,
    elementData: json['elementData'] == null
        ? null
        : Element.fromJson(json['elementData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SampledDataToJson(SampledData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'origin': instance.origin?.toJson(),
      'period': instance.period,
      'elementPeriod': instance.elementPeriod?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'lowerLimit': instance.lowerLimit,
      'elementLowerLimit': instance.elementLowerLimit?.toJson(),
      'upperLimit': instance.upperLimit,
      'elementUpperLimit': instance.elementUpperLimit?.toJson(),
      'dimensions': instance.dimensions,
      'elementDimensions': instance.elementDimensions?.toJson(),
      'data': instance.data,
      'elementData': instance.elementData?.toJson(),
    };
