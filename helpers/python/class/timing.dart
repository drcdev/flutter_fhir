

part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<StringTime> event;
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
this.code});

  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
  Map<String, dynamic> toJson() => _$TimingToJson(this);
}