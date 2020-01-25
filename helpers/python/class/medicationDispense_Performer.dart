

part 'medicationDispense_Performer.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Performer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;


MedicationDispense_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor});

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) => _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_PerformerToJson(this);
}