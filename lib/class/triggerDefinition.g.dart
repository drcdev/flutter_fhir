// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triggerDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriggerDefinition _$TriggerDefinitionFromJson(Map<String, dynamic> json) {
  return TriggerDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    timingReference: json['timingReference'] == null
        ? null
        : Reference.fromJson(json['timingReference'] as Map<String, dynamic>),
    timingDate: json['timingDate'] as String,
    element_timingDate: json['element_timingDate'] == null
        ? null
        : Element.fromJson(json['element_timingDate'] as Map<String, dynamic>),
    timingDateTime: json['timingDateTime'] as String,
    element_timingDateTime: json['element_timingDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_timingDateTime'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] == null
        ? null
        : Expression.fromJson(json['condition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TriggerDefinitionToJson(TriggerDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'timingTiming': instance.timingTiming?.toJson(),
      'timingReference': instance.timingReference?.toJson(),
      'timingDate': instance.timingDate,
      'element_timingDate': instance.element_timingDate?.toJson(),
      'timingDateTime': instance.timingDateTime,
      'element_timingDateTime': instance.element_timingDateTime?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.toJson(),
    };
