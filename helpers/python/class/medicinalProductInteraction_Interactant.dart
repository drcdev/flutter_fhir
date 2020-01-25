

part 'medicinalProductInteraction_Interactant.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction_Interactant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference itemReference;
  CodeableConcept itemCodeableConcept;


MedicinalProductInteraction_Interactant(
      {this.id,
this.extension,
this.modifierExtension,
this.itemReference,
this.itemCodeableConcept});

  factory MedicinalProductInteraction_Interactant.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteraction_InteractantFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductInteraction_InteractantToJson(this);
}