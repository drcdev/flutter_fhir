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
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    line: (json['line'] as List)?.map((e) => e as String)?.toList(),
    elementLine: (json['elementLine'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    city: json['city'] as String,
    elementCity: json['elementCity'] == null
        ? null
        : Element.fromJson(json['elementCity'] as Map<String, dynamic>),
    district: json['district'] as String,
    elementDistrict: json['elementDistrict'] == null
        ? null
        : Element.fromJson(json['elementDistrict'] as Map<String, dynamic>),
    state: json['state'] as String,
    elementState: json['elementState'] == null
        ? null
        : Element.fromJson(json['elementState'] as Map<String, dynamic>),
    postalCode: json['postalCode'] as String,
    elementPostalCode: json['elementPostalCode'] == null
        ? null
        : Element.fromJson(json['elementPostalCode'] as Map<String, dynamic>),
    country: json['country'] as String,
    elementCountry: json['elementCountry'] == null
        ? null
        : Element.fromJson(json['elementCountry'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'line': instance.line,
      'elementLine': instance.elementLine?.map((e) => e?.toJson())?.toList(),
      'city': instance.city,
      'elementCity': instance.elementCity?.toJson(),
      'district': instance.district,
      'elementDistrict': instance.elementDistrict?.toJson(),
      'state': instance.state,
      'elementState': instance.elementState?.toJson(),
      'postalCode': instance.postalCode,
      'elementPostalCode': instance.elementPostalCode?.toJson(),
      'country': instance.country,
      'elementCountry': instance.elementCountry?.toJson(),
      'period': instance.period?.toJson(),
    };