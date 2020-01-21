import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/range.dart';

part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {

  // When the event occurs
  List<DateTime> event;

  // When the event is to occur
  Repeat repeat;

  // BID | TID | QID | AM | PM | QD | QOD | +
  CodeableConcept code;

  Timing({this.event, this.repeat, this.code});

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() => _$TimingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Repeat {

  // bounds[x]: Length/Range of lengths, or (Start and/or end) limits.
  // One of these 3:
  Duration boundsDuration; //ToDo: need to define duration
  Range boundsRange;
  Period boundsPeriod;

  // Number of times to repeat
  int count;

  // Maximum number of times to repeat
  int countMax;

  // How long when it happens
  double duration;

  // How long when it happens (Max)
  double durationMax;

  // s | min | h | d | wk | mo | a - unit of time (UCUM)
  String durationUnit;

  // Event occurs frequency times per period
  int frequency;

  // Event occurs up to frequencyMax times per period
  int frequencyMax;

  // Event occurs frequency times per period
  double period;

  // Upper limit of period (3-4 hours)
  double periodMax;

  // s | min | h | d | wk | mo | a - unit of time (UCUM)
  String periodUnit;

  // mon | tue | wed | thu | fri | sat | sun
  List<String> dayOfWeek;

  // Time of day for action
  List<String> timeOfDay;

  // Code for time period of occurrence
  List<String> when;

  // Minutes from event (before or after)
  int offset;

  Repeat(
      {this.boundsDuration,
        this.boundsRange,
        this.boundsPeriod,
        this.count,
        this.countMax,
        this.duration,
        this.durationMax,
        this.durationUnit,
        this.frequency,
        this.frequencyMax,
        this.period,
        this.periodMax,
        this.periodUnit,
        this.dayOfWeek,
        this.timeOfDay,
        this.when,
        this.offset});

  factory Repeat.fromJson(Map<String, dynamic> json) => _$RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$RepeatToJson(this);
}