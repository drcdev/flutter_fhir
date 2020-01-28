// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Age _$AgeFromJson(Map<String, dynamic> json) {
  return Age(
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

Map<String, dynamic> _$AgeToJson(Age instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'comparator': instance.comparator,
      'unit': instance.unit,
      'system': instance.system,
      'code': instance.code,
    };
