import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class Timing {
  static Future<Timing> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<DateTime> event,
    List<Element> elementEvent,
    Timing_Repeat repeat,
    CodeableConcept code,
  }) async {
    var fhirDb = new DatabaseHelper();
    Timing newTiming = new Timing(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      event: event,
      elementEvent: elementEvent,
      repeat: repeat,
      code: code,
    );
    return newTiming;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<DateTime> event;
  List<Element> elementEvent;
  Timing_Repeat repeat;
  CodeableConcept code;

  Timing({
    this.id,
    this.extension,
    this.modifierExtension,
    this.event,
    this.elementEvent,
    this.repeat,
    this.code,
  });

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() => _$TimingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Timing_Repeat {
  static Future<Timing_Repeat> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Duration boundsDuration,
    Range boundsRange,
    Period boundsPeriod,
    int count,
    Element elementCount,
    int countMax,
    Element elementCountMax,
    double duration,
    Element elementDuration,
    double durationMax,
    Element elementDurationMax,
    String durationUnit,
    Element elementDurationUnit,
    int frequency,
    Element elementFrequency,
    int frequencyMax,
    Element elementFrequencyMax,
    double period,
    Element elementPeriod,
    double periodMax,
    Element elementPeriodMax,
    String periodUnit,
    Element elementPeriodUnit,
    List<String> dayOfWeek,
    List<Element> elementDayOfWeek,
    List<String> timeOfDay,
    List<Element> elementTimeOfDay,
    String when,
    List<Element> elementWhen,
    int offset,
    Element elementOffset,
  }) async {
    var fhirDb = new DatabaseHelper();
    Timing_Repeat newTiming_Repeat = new Timing_Repeat(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      boundsDuration: boundsDuration,
      boundsRange: boundsRange,
      boundsPeriod: boundsPeriod,
      count: count,
      elementCount: elementCount,
      countMax: countMax,
      elementCountMax: elementCountMax,
      duration: duration,
      elementDuration: elementDuration,
      durationMax: durationMax,
      elementDurationMax: elementDurationMax,
      durationUnit: durationUnit,
      elementDurationUnit: elementDurationUnit,
      frequency: frequency,
      elementFrequency: elementFrequency,
      frequencyMax: frequencyMax,
      elementFrequencyMax: elementFrequencyMax,
      period: period,
      elementPeriod: elementPeriod,
      periodMax: periodMax,
      elementPeriodMax: elementPeriodMax,
      periodUnit: periodUnit,
      elementPeriodUnit: elementPeriodUnit,
      dayOfWeek: dayOfWeek,
      elementDayOfWeek: elementDayOfWeek,
      timeOfDay: timeOfDay,
      elementTimeOfDay: elementTimeOfDay,
      when: when,
      elementWhen: elementWhen,
      offset: offset,
      elementOffset: elementOffset,
    );
    return newTiming_Repeat;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Duration boundsDuration;
  Range boundsRange;
  Period boundsPeriod;
  int count;
  Element elementCount;
  int countMax;
  Element elementCountMax;
  double duration;
  Element elementDuration;
  double durationMax;
  Element elementDurationMax;
  String durationUnit;
  Element elementDurationUnit;
  int frequency;
  Element elementFrequency;
  int frequencyMax;
  Element elementFrequencyMax;
  double period;
  Element elementPeriod;
  double periodMax;
  Element elementPeriodMax;
  String periodUnit;
  Element elementPeriodUnit;
  List<String> dayOfWeek;
  List<Element> elementDayOfWeek;
  List<String> timeOfDay;
  List<Element> elementTimeOfDay;
  String when;
  List<Element> elementWhen;
  int offset;
  Element elementOffset;

  Timing_Repeat({
    this.id,
    this.extension,
    this.modifierExtension,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.elementCount,
    this.countMax,
    this.elementCountMax,
    this.duration,
    this.elementDuration,
    this.durationMax,
    this.elementDurationMax,
    this.durationUnit,
    this.elementDurationUnit,
    this.frequency,
    this.elementFrequency,
    this.frequencyMax,
    this.elementFrequencyMax,
    this.period,
    this.elementPeriod,
    this.periodMax,
    this.elementPeriodMax,
    this.periodUnit,
    this.elementPeriodUnit,
    this.dayOfWeek,
    this.elementDayOfWeek,
    this.timeOfDay,
    this.elementTimeOfDay,
    this.when,
    this.elementWhen,
    this.offset,
    this.elementOffset,
  });

  factory Timing_Repeat.fromJson(Map<String, dynamic> json) =>
      _$Timing_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$Timing_RepeatToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
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
    when: json['when'] as String,
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
