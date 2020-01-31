// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Narrative _$NarrativeFromJson(Map<String, dynamic> json) {
  return Narrative(
    json['div'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NarrativeToJson(Narrative instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'div': instance.div,
    };
