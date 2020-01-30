// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    element_use: json['element_use'] == null
        ? null
        : Element.fromJson(json['element_use'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
    line: (json['line'] as List)?.map((e) => e as String)?.toList(),
    element_line: (json['element_line'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    city: json['city'] as String,
    element_city: json['element_city'] == null
        ? null
        : Element.fromJson(json['element_city'] as Map<String, dynamic>),
    district: json['district'] as String,
    element_district: json['element_district'] == null
        ? null
        : Element.fromJson(json['element_district'] as Map<String, dynamic>),
    state: json['state'] as String,
    element_state: json['element_state'] == null
        ? null
        : Element.fromJson(json['element_state'] as Map<String, dynamic>),
    postalCode: json['postalCode'] as String,
    element_postalCode: json['element_postalCode'] == null
        ? null
        : Element.fromJson(json['element_postalCode'] as Map<String, dynamic>),
    country: json['country'] as String,
    element_country: json['element_country'] == null
        ? null
        : Element.fromJson(json['element_country'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'element_use': instance.element_use?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'line': instance.line,
      'element_line': instance.element_line?.map((e) => e?.toJson())?.toList(),
      'city': instance.city,
      'element_city': instance.element_city?.toJson(),
      'district': instance.district,
      'element_district': instance.element_district?.toJson(),
      'state': instance.state,
      'element_state': instance.element_state?.toJson(),
      'postalCode': instance.postalCode,
      'element_postalCode': instance.element_postalCode?.toJson(),
      'country': instance.country,
      'element_country': instance.element_country?.toJson(),
      'period': instance.period?.toJson(),
    };
