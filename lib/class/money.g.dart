// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return Money(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: (json['value'] as num)?.toDouble(),
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
    currency: json['currency'] as String,
    element_currency: json['element_currency'] == null
        ? null
        : Element.fromJson(json['element_currency'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MoneyToJson(Money instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
      'currency': instance.currency,
      'element_currency': instance.element_currency?.toJson(),
    };
