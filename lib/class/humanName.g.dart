// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'humanName.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return HumanName(
    json['text'] as String,
    json['family'] as String,
    (json['given'] as List)?.map((e) => e as String)?.toList(),
    (json['prefix'] as List)?.map((e) => e as String)?.toList(),
    (json['suffix'] as List)?.map((e) => e as String)?.toList(),
    json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HumanNameToJson(HumanName instance) => <String, dynamic>{
      'text': instance.text,
      'family': instance.family,
      'given': instance.given,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'period': instance.period,
    };
