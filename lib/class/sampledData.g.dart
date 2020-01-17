// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sampledData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampledData _$SampledDataFromJson(Map<String, dynamic> json) {
  return SampledData(
    origin: json['origin'] == null
        ? null
        : Quantity.fromJson(json['origin'] as Map<String, dynamic>),
    period: (json['period'] as num)?.toDouble(),
    factor: (json['factor'] as num)?.toDouble(),
    lowerLimit: (json['lowerLimit'] as num)?.toDouble(),
    upperLimit: (json['upperLimit'] as num)?.toDouble(),
    dimensions: json['dimensions'] as int,
    data: json['data'] as String,
  );
}

Map<String, dynamic> _$SampledDataToJson(SampledData instance) =>
    <String, dynamic>{
      'origin': instance.origin?.toJson(),
      'period': instance.period,
      'factor': instance.factor,
      'lowerLimit': instance.lowerLimit,
      'upperLimit': instance.upperLimit,
      'dimensions': instance.dimensions,
      'data': instance.data,
    };
