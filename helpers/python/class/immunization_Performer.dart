

part 'immunization_Performer.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;


Immunization_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor});

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) => _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_PerformerToJson(this);
}