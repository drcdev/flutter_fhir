// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Duration _$DurationFromJson(Map<String, dynamic> json) {
  return Duration(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: (json['value'] as num)?.toDouble(),
    comparator: json['comparator'] as String,
    unit: json['unit'] as String,
    system: json['system'] as String,
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$DurationToJson(Duration instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'comparator': instance.comparator,
      'unit': instance.unit,
      'system': instance.system,
      'code': instance.code,
    };
