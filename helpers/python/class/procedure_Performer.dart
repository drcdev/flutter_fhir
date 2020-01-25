

part 'procedure_Performer.g.dart';

@JsonSerializable(explicitToJson: true)
class Procedure_Performer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;
  Reference onBehalfOf;


Procedure_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor,
this.onBehalfOf});

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) => _$Procedure_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_PerformerToJson(this);
}