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
    elementEvent: (json['elementEvent'] as List)
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
      'elementEvent': instance.elementEvent?.map((e) => e?.toJson())?.toList(),
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
    boundsDuration: json['boundsDuration'] == null
        ? null
        : Duration.fromJson(json['boundsDuration'] as Map<String, dynamic>),
    boundsRange: json['boundsRange'] == null
        ? null
        : Range.fromJson(json['boundsRange'] as Map<String, dynamic>),
    boundsPeriod: json['boundsPeriod'] == null
        ? null
        : Period.fromJson(json['boundsPeriod'] as Map<String, dynamic>),
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    countMax: json['countMax'] as int,
    elementCountMax: json['elementCountMax'] == null
        ? null
        : Element.fromJson(json['elementCountMax'] as Map<String, dynamic>),
    duration: (json['duration'] as num)?.toDouble(),
    elementDuration: json['elementDuration'] == null
        ? null
        : Element.fromJson(json['elementDuration'] as Map<String, dynamic>),
    durationMax: (json['durationMax'] as num)?.toDouble(),
    elementDurationMax: json['elementDurationMax'] == null
        ? null
        : Element.fromJson(json['elementDurationMax'] as Map<String, dynamic>),
    durationUnit: json['durationUnit'] as String,
    elementDurationUnit: json['elementDurationUnit'] == null
        ? null
        : Element.fromJson(json['elementDurationUnit'] as Map<String, dynamic>),
    frequency: json['frequency'] as int,
    elementFrequency: json['elementFrequency'] == null
        ? null
        : Element.fromJson(json['elementFrequency'] as Map<String, dynamic>),
    frequencyMax: json['frequencyMax'] as int,
    elementFrequencyMax: json['elementFrequencyMax'] == null
        ? null
        : Element.fromJson(json['elementFrequencyMax'] as Map<String, dynamic>),
    period: (json['period'] as num)?.toDouble(),
    elementPeriod: json['elementPeriod'] == null
        ? null
        : Element.fromJson(json['elementPeriod'] as Map<String, dynamic>),
    periodMax: (json['periodMax'] as num)?.toDouble(),
    elementPeriodMax: json['elementPeriodMax'] == null
        ? null
        : Element.fromJson(json['elementPeriodMax'] as Map<String, dynamic>),
    periodUnit: json['periodUnit'] as String,
    elementPeriodUnit: json['elementPeriodUnit'] == null
        ? null
        : Element.fromJson(json['elementPeriodUnit'] as Map<String, dynamic>),
    dayOfWeek: (json['dayOfWeek'] as List)?.map((e) => e as String)?.toList(),
    elementDayOfWeek: (json['elementDayOfWeek'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeOfDay: (json['timeOfDay'] as List)?.map((e) => e as String)?.toList(),
    elementTimeOfDay: (json['elementTimeOfDay'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    when: (json['when'] as List)?.map((e) => e as String)?.toList(),
    elementWhen: (json['elementWhen'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    offset: json['offset'] as int,
    elementOffset: json['elementOffset'] == null
        ? null
        : Element.fromJson(json['elementOffset'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Timing_RepeatToJson(Timing_Repeat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'boundsDuration': instance.boundsDuration?.toJson(),
      'boundsRange': instance.boundsRange?.toJson(),
      'boundsPeriod': instance.boundsPeriod?.toJson(),
      'count': instance.count,
      'elementCount': instance.elementCount?.toJson(),
      'countMax': instance.countMax,
      'elementCountMax': instance.elementCountMax?.toJson(),
      'duration': instance.duration,
      'elementDuration': instance.elementDuration?.toJson(),
      'durationMax': instance.durationMax,
      'elementDurationMax': instance.elementDurationMax?.toJson(),
      'durationUnit': instance.durationUnit,
      'elementDurationUnit': instance.elementDurationUnit?.toJson(),
      'frequency': instance.frequency,
      'elementFrequency': instance.elementFrequency?.toJson(),
      'frequencyMax': instance.frequencyMax,
      'elementFrequencyMax': instance.elementFrequencyMax?.toJson(),
      'period': instance.period,
      'elementPeriod': instance.elementPeriod?.toJson(),
      'periodMax': instance.periodMax,
      'elementPeriodMax': instance.elementPeriodMax?.toJson(),
      'periodUnit': instance.periodUnit,
      'elementPeriodUnit': instance.elementPeriodUnit?.toJson(),
      'dayOfWeek': instance.dayOfWeek,
      'elementDayOfWeek':
          instance.elementDayOfWeek?.map((e) => e?.toJson())?.toList(),
      'timeOfDay': instance.timeOfDay,
      'elementTimeOfDay':
          instance.elementTimeOfDay?.map((e) => e?.toJson())?.toList(),
      'when': instance.when,
      'elementWhen': instance.elementWhen?.map((e) => e?.toJson())?.toList(),
      'offset': instance.offset,
      'elementOffset': instance.elementOffset?.toJson(),
    };
