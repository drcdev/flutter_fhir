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
    countMax: json['countMax'] as int,
    duration: (json['duration'] as num)?.toDouble(),
    durationMax: (json['durationMax'] as num)?.toDouble(),
    durationUnit: json['durationUnit'] as String,
    frequency: json['frequency'] as int,
    frequencyMax: json['frequencyMax'] as int,
    period: (json['period'] as num)?.toDouble(),
    periodMax: (json['periodMax'] as num)?.toDouble(),
    periodUnit: json['periodUnit'] as String,
    dayOfWeek: (json['dayOfWeek'] as List)?.map((e) => e as String)?.toList(),
    timeOfDay: (json['timeOfDay'] as List)?.map((e) => e as String)?.toList(),
    when: (json['when'] as List)?.map((e) => e as String)?.toList(),
    offset: json['offset'] as int,
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
      'countMax': instance.countMax,
      'duration': instance.duration,
      'durationMax': instance.durationMax,
      'durationUnit': instance.durationUnit,
      'frequency': instance.frequency,
      'frequencyMax': instance.frequencyMax,
      'period': instance.period,
      'periodMax': instance.periodMax,
      'periodUnit': instance.periodUnit,
      'dayOfWeek': instance.dayOfWeek,
      'timeOfDay': instance.timeOfDay,
      'when': instance.when,
      'offset': instance.offset,
    };
