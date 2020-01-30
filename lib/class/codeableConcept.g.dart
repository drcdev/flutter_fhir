// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codeableConcept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeableConcept _$CodeableConceptFromJson(Map<String, dynamic> json) {
  return CodeableConcept(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coding: (json['coding'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    element_text: json['element_text'] == null
        ? null
        : Element.fromJson(json['element_text'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeableConceptToJson(CodeableConcept instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'coding': instance.coding?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'element_text': instance.element_text?.toJson(),
    };
