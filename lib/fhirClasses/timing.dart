import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 39)
class Timing {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Identifies specific times when the event occurs.
  @HiveField(3)
  List<DateTime> event;

  //  Extensions for event
  @HiveField(4)
  List<Element> elementEvent;

  //  A set of rules that describe when the event is scheduled.
  @HiveField(5)
  Timing_Repeat repeat;

  //  A code for the timing schedule (or just text in code.text). Some codes
  // such as BID are ubiquitous, but many institutions define their own
  // additional codes. If a code is provided, the code is understood to be a
  // complete statement of whatever is specified in the structured timing
  // data, and either the code or the data may be used to interpret the
  // Timing, with the exception that .repeat.bounds still applies over the
  // code (and is not contained in the code).
  @HiveField(6)
  CodeableConcept code;

Timing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.event,
    this.elementEvent,
    this.repeat,
    this.code
    });

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() => _$TimingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Timing_Repeat {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Either a duration for the length of the timing schedule, a range of
  // possible length, or outer bounds for start and/or end limits of the
  // timing schedule.
  Duration boundsDuration;

  //  Either a duration for the length of the timing schedule, a range of
  // possible length, or outer bounds for start and/or end limits of the
  // timing schedule.
  Range boundsRange;

  //  Either a duration for the length of the timing schedule, a range of
  // possible length, or outer bounds for start and/or end limits of the
  // timing schedule.
  Period boundsPeriod;

  //  A total count of the desired number of repetitions across the duration
  // of the entire timing specification. If countMax is present, this
  // element indicates the lower bound of the allowed range of count values.
  int count;

  //  Extensions for count
  Element elementCount;

  //  If present, indicates that the count is a range - so to perform the
  // action between [count] and [countMax] times.
  int countMax;

  //  Extensions for countMax
  Element elementCountMax;

  //  How long this thing happens for when it happens. If durationMax is
  // present, this element indicates the lower bound of the allowed range of
  // the duration.
  double duration;

  //  Extensions for duration
  Element elementDuration;

  //  If present, indicates that the duration is a range - so to perform the
  // action between [duration] and [durationMax] time length.
  double durationMax;

  //  Extensions for durationMax
  Element elementDurationMax;

  //  The units of time for the duration, in UCUM units.
  String durationUnit; // <code> enum: s/min/h/d/wk/mo/a;

  //  Extensions for durationUnit
  Element elementDurationUnit;

  //  The number of times to repeat the action within the specified period.
  // If frequencyMax is present, this element indicates the lower bound of
  // the allowed range of the frequency.
  int frequency;

  //  Extensions for frequency
  Element elementFrequency;

  //  If present, indicates that the frequency is a range - so to repeat
  // between [frequency] and [frequencyMax] times within the period or
  // period range.
  int frequencyMax;

  //  Extensions for frequencyMax
  Element elementFrequencyMax;

  //  Indicates the duration of time over which repetitions are to occur;
  // e.g. to express "3 times per day", 3 would be the frequency and "1 day"
  // would be the period. If periodMax is present, this element indicates
  // the lower bound of the allowed range of the period length.
  double period;

  //  Extensions for period
  Element elementPeriod;

  //  If present, indicates that the period is a range from [period] to
  // [periodMax], allowing expressing concepts such as "do this once every
  // 3-5 days.
  double periodMax;

  //  Extensions for periodMax
  Element elementPeriodMax;

  //  The units of time for the period in UCUM units.
  String periodUnit; // <code> enum: s/min/h/d/wk/mo/a;

  //  Extensions for periodUnit
  Element elementPeriodUnit;

  //  If one or more days of week is provided, then the action happens only
  // on the specified day(s).
  List<String> dayOfWeek;

  //  Extensions for dayOfWeek
  List<Element> elementDayOfWeek;

  //  Specified time of day for action to take place.
  List<String> timeOfDay;

  //  Extensions for timeOfDay
  List<Element> elementTimeOfDay;

  //  An approximate time period during the day, potentially linked to an
  // event of daily living that indicates when the action should occur.
  List<String> when; // <code> enum: MORN/MORN.early/MORN.late/NOON/AFT/AFT.early/AFT.late/EVE/EVE.early/EVE.late/NIGHT/PHS/HS/WAKE/C/CM/CD/CV/AC/ACM/ACD/ACV/PC/PCM/PCD/PCV> when;

  //  Extensions for when
  List<Element> elementWhen;

  //  The number of minutes from the event. If the event code does not
  // indicate whether the minutes is before or after the event, then the
  // offset is assumed to be after the event.
  int offset;

  //  Extensions for offset
  Element elementOffset;

Timing_Repeat(
  {this.id,
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
    this.elementOffset
    });

  factory Timing_Repeat.fromJson(Map<String, dynamic> json) => _$Timing_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$Timing_RepeatToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimingAdapter extends TypeAdapter<Timing> {
  @override
  final typeId = 39;

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
