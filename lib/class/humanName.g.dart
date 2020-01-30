// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'humanName.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return HumanName(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    element_use: json['element_use'] == null
        ? null
        : Element.fromJson(json['element_use'] as Map<String, dynamic>),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
    family: json['family'] as String,
    element_family: json['element_family'] == null
        ? null
        : Element.fromJson(json['element_family'] as Map<String, dynamic>),
    given: (json['given'] as List)?.map((e) => e as String)?.toList(),
    element_given: (json['element_given'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: (json['prefix'] as List)?.map((e) => e as String)?.toList(),
    element_prefix: (json['element_prefix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    suffix: (json['suffix'] as List)?.map((e) => e as String)?.toList(),
    element_suffix: (json['element_suffix'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HumanNameToJson(HumanName instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'element_use': instance.element_use?.toJson(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
      'family': instance.family,
      'element_family': instance.element_family?.toJson(),
      'given': instance.given,
      'element_given':
          instance.element_given?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'element_prefix':
          instance.element_prefix?.map((e) => e?.toJson())?.toList(),
      'suffix': instance.suffix,
      'element_suffix':
          instance.element_suffix?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
    };
