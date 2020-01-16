// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Investigation _$InvestigationFromJson(Map<String, dynamic> json) {
  return Investigation(
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InvestigationToJson(Investigation instance) =>
    <String, dynamic>{
      'code': instance.code?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };
