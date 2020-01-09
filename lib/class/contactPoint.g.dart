// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactPoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactPoint _$ContactPointFromJson(Map<String, dynamic> json) {
  return ContactPoint(
    system: json['system'] as String,
    value: json['value'] as String,
    use: json['use'] as String,
    rank: json['rank'] as String,
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContactPointToJson(ContactPoint instance) =>
    <String, dynamic>{
      'system': instance.system,
      'value': instance.value,
      'use': instance.use,
      'rank': instance.rank,
      'period': instance.period?.toJson(),
    };
