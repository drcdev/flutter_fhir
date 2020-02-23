import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<DateTime> event;
  @HiveField(4)
  List<Element> elementEvent;
  @HiveField(5)
  Timing_Repeat repeat;
  @HiveField(6)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Duration boundsDuration;
  @HiveField(4)
  Range boundsRange;
  @HiveField(5)
  Period boundsPeriod;
  @HiveField(6)
  int count;
  @HiveField(7)
  Element elementCount;
  @HiveField(8)
  int countMax;
  @HiveField(9)
  Element elementCountMax;
  @HiveField(10)
  double duration;
  @HiveField(11)
  Element elementDuration;
  @HiveField(12)
  double durationMax;
  @HiveField(13)
  Element elementDurationMax;
  @HiveField(14)
  String durationUnit;
  @HiveField(15)
  Element elementDurationUnit;
  @HiveField(16)
  int frequency;
  @HiveField(17)
  Element elementFrequency;
  @HiveField(18)
  int frequencyMax;
  @HiveField(19)
  Element elementFrequencyMax;
  @HiveField(20)
  double period;
  @HiveField(21)
  Element elementPeriod;
  @HiveField(22)
  double periodMax;
  @HiveField(23)
  Element elementPeriodMax;
  @HiveField(24)
  String periodUnit;
  @HiveField(25)
  Element elementPeriodUnit;
  @HiveField(26)
  List<String> dayOfWeek;
  @HiveField(27)
  List<Element> elementDayOfWeek;
  @HiveField(28)
  List<String> timeOfDay;
  @HiveField(29)
  List<Element> elementTimeOfDay;
  @HiveField(30)
  String when;
  @HiveField(31)
  List<Element> elementWhen;
  @HiveField(32)
  int offset;
  @HiveField(33)
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

Map<String, dynamic> _$TimingToJson(Timing instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'event', instance.event?.map((e) => e?.toIso8601String())?.toList());
  writeNotNull(
      'elementEvent', instance.elementEvent?.map((e) => e?.toJson())?.toList());
  writeNotNull('repeat', instance.repeat?.toJson());
  writeNotNull('code', instance.code?.toJson());
  return val;
}

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

Map<String, dynamic> _$Timing_RepeatToJson(Timing_Repeat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('boundsDuration', instance.boundsDuration?.toJson());
  writeNotNull('boundsRange', instance.boundsRange?.toJson());
  writeNotNull('boundsPeriod', instance.boundsPeriod?.toJson());
  writeNotNull('count', instance.count);
  writeNotNull('elementCount', instance.elementCount?.toJson());
  writeNotNull('countMax', instance.countMax);
  writeNotNull('elementCountMax', instance.elementCountMax?.toJson());
  writeNotNull('duration', instance.duration);
  writeNotNull('elementDuration', instance.elementDuration?.toJson());
  writeNotNull('durationMax', instance.durationMax);
  writeNotNull('elementDurationMax', instance.elementDurationMax?.toJson());
  writeNotNull('durationUnit', instance.durationUnit);
  writeNotNull('elementDurationUnit', instance.elementDurationUnit?.toJson());
  writeNotNull('frequency', instance.frequency);
  writeNotNull('elementFrequency', instance.elementFrequency?.toJson());
  writeNotNull('frequencyMax', instance.frequencyMax);
  writeNotNull('elementFrequencyMax', instance.elementFrequencyMax?.toJson());
  writeNotNull('period', instance.period);
  writeNotNull('elementPeriod', instance.elementPeriod?.toJson());
  writeNotNull('periodMax', instance.periodMax);
  writeNotNull('elementPeriodMax', instance.elementPeriodMax?.toJson());
  writeNotNull('periodUnit', instance.periodUnit);
  writeNotNull('elementPeriodUnit', instance.elementPeriodUnit?.toJson());
  writeNotNull('dayOfWeek', instance.dayOfWeek);
  writeNotNull('elementDayOfWeek',
      instance.elementDayOfWeek?.map((e) => e?.toJson())?.toList());
  writeNotNull('timeOfDay', instance.timeOfDay);
  writeNotNull('elementTimeOfDay',
      instance.elementTimeOfDay?.map((e) => e?.toJson())?.toList());
  writeNotNull('when', instance.when);
  writeNotNull(
      'elementWhen', instance.elementWhen?.map((e) => e?.toJson())?.toList());
  writeNotNull('offset', instance.offset);
  writeNotNull('elementOffset', instance.elementOffset?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimingAdapter extends TypeAdapter<Timing> {
  @override
  Timing read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Timing(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      event: (fields[3] as List)?.cast<DateTime>(),
      elementEvent: (fields[4] as List)?.cast<Element>(),
      repeat: fields[5] as Timing_Repeat,
      code: fields[6] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Timing obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.event)
      ..writeByte(4)
      ..write(obj.elementEvent)
      ..writeByte(5)
      ..write(obj.repeat)
      ..writeByte(6)
      ..write(obj.code);
  }
}

class Timing_RepeatAdapter extends TypeAdapter<Timing_Repeat> {
  @override
  Timing_Repeat read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Timing_Repeat(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      boundsDuration: fields[3] as Duration,
      boundsRange: fields[4] as Range,
      boundsPeriod: fields[5] as Period,
      count: fields[6] as int,
      elementCount: fields[7] as Element,
      countMax: fields[8] as int,
      elementCountMax: fields[9] as Element,
      duration: fields[10] as double,
      elementDuration: fields[11] as Element,
      durationMax: fields[12] as double,
      elementDurationMax: fields[13] as Element,
      durationUnit: fields[14] as String,
      elementDurationUnit: fields[15] as Element,
      frequency: fields[16] as int,
      elementFrequency: fields[17] as Element,
      frequencyMax: fields[18] as int,
      elementFrequencyMax: fields[19] as Element,
      period: fields[20] as double,
      elementPeriod: fields[21] as Element,
      periodMax: fields[22] as double,
      elementPeriodMax: fields[23] as Element,
      periodUnit: fields[24] as String,
      elementPeriodUnit: fields[25] as Element,
      dayOfWeek: (fields[26] as List)?.cast<String>(),
      elementDayOfWeek: (fields[27] as List)?.cast<Element>(),
      timeOfDay: (fields[28] as List)?.cast<String>(),
      elementTimeOfDay: (fields[29] as List)?.cast<Element>(),
      when: fields[30] as String,
      elementWhen: (fields[31] as List)?.cast<Element>(),
      offset: fields[32] as int,
      elementOffset: fields[33] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Timing_Repeat obj) {
    writer
      ..writeByte(34)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.boundsDuration)
      ..writeByte(4)
      ..write(obj.boundsRange)
      ..writeByte(5)
      ..write(obj.boundsPeriod)
      ..writeByte(6)
      ..write(obj.count)
      ..writeByte(7)
      ..write(obj.elementCount)
      ..writeByte(8)
      ..write(obj.countMax)
      ..writeByte(9)
      ..write(obj.elementCountMax)
      ..writeByte(10)
      ..write(obj.duration)
      ..writeByte(11)
      ..write(obj.elementDuration)
      ..writeByte(12)
      ..write(obj.durationMax)
      ..writeByte(13)
      ..write(obj.elementDurationMax)
      ..writeByte(14)
      ..write(obj.durationUnit)
      ..writeByte(15)
      ..write(obj.elementDurationUnit)
      ..writeByte(16)
      ..write(obj.frequency)
      ..writeByte(17)
      ..write(obj.elementFrequency)
      ..writeByte(18)
      ..write(obj.frequencyMax)
      ..writeByte(19)
      ..write(obj.elementFrequencyMax)
      ..writeByte(20)
      ..write(obj.period)
      ..writeByte(21)
      ..write(obj.elementPeriod)
      ..writeByte(22)
      ..write(obj.periodMax)
      ..writeByte(23)
      ..write(obj.elementPeriodMax)
      ..writeByte(24)
      ..write(obj.periodUnit)
      ..writeByte(25)
      ..write(obj.elementPeriodUnit)
      ..writeByte(26)
      ..write(obj.dayOfWeek)
      ..writeByte(27)
      ..write(obj.elementDayOfWeek)
      ..writeByte(28)
      ..write(obj.timeOfDay)
      ..writeByte(29)
      ..write(obj.elementTimeOfDay)
      ..writeByte(30)
      ..write(obj.when)
      ..writeByte(31)
      ..write(obj.elementWhen)
      ..writeByte(32)
      ..write(obj.offset)
      ..writeByte(33)
      ..write(obj.elementOffset);
  }
}
