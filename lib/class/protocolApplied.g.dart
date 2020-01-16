// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocolApplied.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProtocolApplied _$ProtocolAppliedFromJson(Map<String, dynamic> json) {
  return ProtocolApplied(
    series: json['series'] as String,
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
    targetDisease: (json['targetDisease'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    doseNumberPositiveInt: json['doseNumberPositiveInt'] as int,
    doseNumberString: json['doseNumberString'] as String,
    seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int,
    seriesDosesString: json['seriesDosesString'] as String,
  );
}

Map<String, dynamic> _$ProtocolAppliedToJson(ProtocolApplied instance) =>
    <String, dynamic>{
      'series': instance.series,
      'authority': instance.authority?.toJson(),
      'targetDisease':
          instance.targetDisease?.map((e) => e?.toJson())?.toList(),
      'doseNumberPositiveInt': instance.doseNumberPositiveInt,
      'doseNumberString': instance.doseNumberString,
      'seriesDosesPositiveInt': instance.seriesDosesPositiveInt,
      'seriesDosesString': instance.seriesDosesString,
    };
