// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timing _$TimingFromJson(Map<String, dynamic> json) {
  return Timing(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        ?.toList(),
    element_event: (json['element_event'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    repeat: json['repeat'] == null
        ? null
        : Timing_Repeat.fromJson(json['repeat'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TimingToJson(Timing instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.map((e) => e?.toIso8601String())?.toList(),
      'element_event':
          instance.element_event?.map((e) => e?.toJson())?.toList(),
      'repeat': instance.repeat?.toJson(),
      'code': instance.code?.toJson(),
    };

Timing_Repeat _$Timing_RepeatFromJson(Map<String, dynamic> json) {
  return Timing_Repeat(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    boundsDuration: json['boundsDuration'],
    boundsRange: json['boundsRange'] == null
        ? null
        : Range.fromJson(json['boundsRange'] as Map<String, dynamic>),
    boundsPeriod: json['boundsPeriod'] == null
        ? null
        : Period.fromJson(json['boundsPeriod'] as Map<String, dynamic>),
    count: json['count'] as int,
    element_count: json['element_count'] == null
        ? null
        : Element.fromJson(json['element_count'] as Map<String, dynamic>),
    countMax: json['countMax'] as int,
    element_countMax: json['element_countMax'] == null
        ? null
        : Element.fromJson(json['element_countMax'] as Map<String, dynamic>),
    duration: (json['duration'] as num)?.toDouble(),
    element_duration: json['element_duration'] == null
        ? null
        : Element.fromJson(json['element_duration'] as Map<String, dynamic>),
    durationMax: (json['durationMax'] as num)?.toDouble(),
    element_durationMax: json['element_durationMax'] == null
        ? null
        : Element.fromJson(json['element_durationMax'] as Map<String, dynamic>),
    durationUnit: json['durationUnit'] as String,
    element_durationUnit: json['element_durationUnit'] == null
        ? null
        : Element.fromJson(
            json['element_durationUnit'] as Map<String, dynamic>),
    frequency: json['frequency'] as int,
    element_frequency: json['element_frequency'] == null
        ? null
        : Element.fromJson(json['element_frequency'] as Map<String, dynamic>),
    frequencyMax: json['frequencyMax'] as int,
    element_frequencyMax: json['element_frequencyMax'] == null
        ? null
        : Element.fromJson(
            json['element_frequencyMax'] as Map<String, dynamic>),
    period: (json['period'] as num)?.toDouble(),
    element_period: json['element_period'] == null
        ? null
        : Element.fromJson(json['element_period'] as Map<String, dynamic>),
    periodMax: (json['periodMax'] as num)?.toDouble(),
    element_periodMax: json['element_periodMax'] == null
        ? null
        : Element.fromJson(json['element_periodMax'] as Map<String, dynamic>),
    periodUnit: json['periodUnit'] as String,
    element_periodUnit: json['element_periodUnit'] == null
        ? null
        : Element.fromJson(json['element_periodUnit'] as Map<String, dynamic>),
    dayOfWeek: (json['dayOfWeek'] as List)?.map((e) => e as String)?.toList(),
    element_dayOfWeek: (json['element_dayOfWeek'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeOfDay: (json['timeOfDay'] as List)?.map((e) => e as String)?.toList(),
    element_timeOfDay: (json['element_timeOfDay'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    when: (json['when'] as List)?.map((e) => e as String)?.toList(),
    element_when: (json['element_when'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    offset: json['offset'] as int,
    element_offset: json['element_offset'] == null
        ? null
        : Element.fromJson(json['element_offset'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Timing_RepeatToJson(Timing_Repeat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'boundsDuration': instance.boundsDuration,
      'boundsRange': instance.boundsRange?.toJson(),
      'boundsPeriod': instance.boundsPeriod?.toJson(),
      'count': instance.count,
      'element_count': instance.element_count?.toJson(),
      'countMax': instance.countMax,
      'element_countMax': instance.element_countMax?.toJson(),
      'duration': instance.duration,
      'element_duration': instance.element_duration?.toJson(),
      'durationMax': instance.durationMax,
      'element_durationMax': instance.element_durationMax?.toJson(),
      'durationUnit': instance.durationUnit,
      'element_durationUnit': instance.element_durationUnit?.toJson(),
      'frequency': instance.frequency,
      'element_frequency': instance.element_frequency?.toJson(),
      'frequencyMax': instance.frequencyMax,
      'element_frequencyMax': instance.element_frequencyMax?.toJson(),
      'period': instance.period,
      'element_period': instance.element_period?.toJson(),
      'periodMax': instance.periodMax,
      'element_periodMax': instance.element_periodMax?.toJson(),
      'periodUnit': instance.periodUnit,
      'element_periodUnit': instance.element_periodUnit?.toJson(),
      'dayOfWeek': instance.dayOfWeek,
      'element_dayOfWeek':
          instance.element_dayOfWeek?.map((e) => e?.toJson())?.toList(),
      'timeOfDay': instance.timeOfDay,
      'element_timeOfDay':
          instance.element_timeOfDay?.map((e) => e?.toJson())?.toList(),
      'when': instance.when,
      'element_when': instance.element_when?.map((e) => e?.toJson())?.toList(),
      'offset': instance.offset,
      'element_offset': instance.element_offset?.toJson(),
    };
