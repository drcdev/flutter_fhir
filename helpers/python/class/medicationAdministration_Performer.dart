

part 'medicationAdministration_Performer.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Performer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;


MedicationAdministration_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor});

  factory MedicationAdministration_Performer.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_PerformerToJson(this);
}