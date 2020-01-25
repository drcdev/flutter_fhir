

part 'composition_Event.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition_Event {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  Period period;
  List<Reference> detail;


Composition_Event(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.period,
this.detail});

  factory Composition_Event.fromJson(Map<String, dynamic> json) => _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_EventToJson(this);
}