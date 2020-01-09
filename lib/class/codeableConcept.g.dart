// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codeableConcept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeableConcept _$CodeableConceptFromJson(Map<String, dynamic> json) {
  return CodeableConcept(
    coding: (json['coding'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$CodeableConceptToJson(CodeableConcept instance) =>
    <String, dynamic>{
      'coding': instance.coding?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
    };
