

part 'medication_Ingredient.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication_Ingredient {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Element _isActive;
  Ratio strength;


Medication_Ingredient(
      {this.id,
this.extension,
this.modifierExtension,
this.itemCodeableConcept,
this.itemReference,
this.isActive,
this._isActive,
this.strength});

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) => _$Medication_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_IngredientToJson(this);
}