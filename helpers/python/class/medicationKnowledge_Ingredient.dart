

part 'medicationKnowledge_Ingredient.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Ingredient {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Element _isActive;
  Ratio strength;


MedicationKnowledge_Ingredient(
      {this.id,
this.extension,
this.modifierExtension,
this.itemCodeableConcept,
this.itemReference,
this.isActive,
this._isActive,
this.strength});

  factory MedicationKnowledge_Ingredient.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_IngredientToJson(this);
}