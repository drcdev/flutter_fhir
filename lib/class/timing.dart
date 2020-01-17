import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:json_annotation/json_annotation.dart';
part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {
  List<DateTime> event;
  Repeat repeat;
  CodeableConcept code;

  Timing({this.event, this.repeat, this.code});

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() => _$TimingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Repeat {
  Duration boundsDuration; //ToDo: need to define duration
  Range boundsRange;
  Period boundsPeriod;
  int count;
  int countMax;
  double duration;
  double durationMax;
  String durationUnit;
  int frequency;
  int frequencyMax;
  double period;
  double periodMax;
  String periodUnit;
  List<String> dayOfWeek;
  List<String> timeOfDay;
  List<String> when;
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