import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {

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

  //  Identifies specific times when the event occurs.
  List<DateTime> event;

  //  Extensions for event
  List<Element> element_event;

  //  A set of rules that describe when the event is scheduled.
  Timing_Repeat repeat;

  //  A code for the timing schedule (or just text in code.text). Some codes
  // such as BID are ubiquitous, but many institutions define their own
  // additional codes. If a code is provided, the code is understood to be a
  // complete statement of whatever is specified in the structured timing
  // data, and either the code or the data may be used to interpret the
  // Timing, with the exception that .repeat.bounds still applies over the
  // code (and is not contained in the code).
  CodeableConcept code;

Timing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.event,
    this.element_event,
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
  Element element_count;

  //  If present, indicates that the count is a range - so to perform the
  // action between [count] and [countMax] times.
  int countMax;

  //  Extensions for countMax
  Element element_countMax;

  //  How long this thing happens for when it happens. If durationMax is
  // present, this element indicates the lower bound of the allowed range of
  // the duration.
  double duration;

  //  Extensions for duration
  Element element_duration;

  //  If present, indicates that the duration is a range - so to perform the
  // action between [duration] and [durationMax] time length.
  double durationMax;

  //  Extensions for durationMax
  Element element_durationMax;

  //  The units of time for the duration, in UCUM units.
  String durationUnit; // <code> enum: s/min/h/d/wk/mo/a;

  //  Extensions for durationUnit
  Element element_durationUnit;

  //  The number of times to repeat the action within the specified period.
  // If frequencyMax is present, this element indicates the lower bound of
  // the allowed range of the frequency.
  int frequency;

  //  Extensions for frequency
  Element element_frequency;

  //  If present, indicates that the frequency is a range - so to repeat
  // between [frequency] and [frequencyMax] times within the period or
  // period range.
  int frequencyMax;

  //  Extensions for frequencyMax
  Element element_frequencyMax;

  //  Indicates the duration of time over which repetitions are to occur;
  // e.g. to express "3 times per day", 3 would be the frequency and "1 day"
  // would be the period. If periodMax is present, this element indicates
  // the lower bound of the allowed range of the period length.
  double period;

  //  Extensions for period
  Element element_period;

  //  If present, indicates that the period is a range from [period] to
  // [periodMax], allowing expressing concepts such as "do this once every
  // 3-5 days.
  double periodMax;

  //  Extensions for periodMax
  Element element_periodMax;

  //  The units of time for the period in UCUM units.
  String periodUnit; // <code> enum: s/min/h/d/wk/mo/a;

  //  Extensions for periodUnit
  Element element_periodUnit;

  //  If one or more days of week is provided, then the action happens only
  // on the specified day(s).
  List<String> dayOfWeek;

  //  Extensions for dayOfWeek
  List<Element> element_dayOfWeek;

  //  Specified time of day for action to take place.
  List<String> timeOfDay;

  //  Extensions for timeOfDay
  List<Element> element_timeOfDay;

  //  An approximate time period during the day, potentially linked to an
  // event of daily living that indicates when the action should occur.
  List<String> when; // <code> enum: MORN/MORN.early/MORN.late/NOON/AFT/AFT.early/AFT.late/EVE/EVE.early/EVE.late/NIGHT/PHS/HS/WAKE/C/CM/CD/CV/AC/ACM/ACD/ACV/PC/PCM/PCD/PCV> when;

  //  Extensions for when
  List<Element> element_when;

  //  The number of minutes from the event. If the event code does not
  // indicate whether the minutes is before or after the event, then the
  // offset is assumed to be after the event.
  int offset;

  //  Extensions for offset
  Element element_offset;

Timing_Repeat(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.element_count,
    this.countMax,
    this.element_countMax,
    this.duration,
    this.element_duration,
    this.durationMax,
    this.element_durationMax,
    this.durationUnit,
    this.element_durationUnit,
    this.frequency,
    this.element_frequency,
    this.frequencyMax,
    this.element_frequencyMax,
    this.period,
    this.element_period,
    this.periodMax,
    this.element_periodMax,
    this.periodUnit,
    this.element_periodUnit,
    this.dayOfWeek,
    this.element_dayOfWeek,
    this.timeOfDay,
    this.element_timeOfDay,
    this.when,
    this.element_when,
    this.offset,
    this.element_offset
    });

  factory Timing_Repeat.fromJson(Map<String, dynamic> json) => _$Timing_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$Timing_RepeatToJson(this);
}

