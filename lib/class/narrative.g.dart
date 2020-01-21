// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Narrative _$NarrativeFromJson(Map<String, dynamic> json) {
  return Narrative(
    status: json['status'] as String,
    div: json['div'] as String,
  );
}

Map<String, dynamic> _$NarrativeToJson(Narrative instance) => <String, dynamic>{
      'status': instance.status,
      'div': instance.div,
    };
