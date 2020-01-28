part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<DateTime> event;
List<Element> _event;
Timing_Repeat repeat;
CodeableConcept code;

Timing(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.event,
      this._event,
      this.repeat,
      this.code,
      });

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() _$TimingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Timing_Repeat {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Duration boundsDuration;
Range boundsRange;
Period boundsPeriod;
int count;
Element _count;
int countMax;
Element _countMax;
double duration;
Element _duration;
double durationMax;
Element _durationMax;
String durationUnit; // <code> enum: s/min/h/d/wk/mo/a;
Element _durationUnit;
int frequency;
Element _frequency;
int frequencyMax;
Element _frequencyMax;
double period;
Element _period;
double periodMax;
Element _periodMax;
String periodUnit; // <code> enum: s/min/h/d/wk/mo/a;
Element _periodUnit;
List<String> dayOfWeek;
List<Element> _dayOfWeek;
List<String> timeOfDay;
List<Element> _timeOfDay;
List<Element> _when;
int offset;
Element _offset;

Timing_Repeat(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.boundsDuration,
      this.boundsRange,
      this.boundsPeriod,
      this.count,
      this._count,
      this.countMax,
      this._countMax,
      this.duration,
      this._duration,
      this.durationMax,
      this._durationMax,
      this.durationUnit,
      this._durationUnit,
      this.frequency,
      this._frequency,
      this.frequencyMax,
      this._frequencyMax,
      this.period,
      this._period,
      this.periodMax,
      this._periodMax,
      this.periodUnit,
      this._periodUnit,
      this.dayOfWeek,
      this._dayOfWeek,
      this.timeOfDay,
      this._timeOfDay,
      this.when,
      this._when,
      this.offset,
      this._offset,
      });

  factory Timing_Repeat.fromJson(Map<String, dynamic> json) => _$Timing_RepeatFromJson(json);
  Map<String, dynamic> toJson() _$Timing_RepeatToJson(this);
}

