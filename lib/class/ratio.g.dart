// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return Ratio(
    numerator: json['numerator'] == null
        ? null
        : Quantity.fromJson(json['numerator'] as Map<String, dynamic>),
    denominator: json['denominator'] == null
        ? null
        : Quantity.fromJson(json['denominator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RatioToJson(Ratio instance) => <String, dynamic>{
      'numerator': instance.numerator?.toJson(),
      'denominator': instance.denominator?.toJson(),
    };
