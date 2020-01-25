

part 'substance_Ingredient.g.dart';

@JsonSerializable(explicitToJson: true)
class Substance_Ingredient {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Ratio quantity;
  CodeableConcept substanceCodeableConcept;
  Reference substanceReference;


Substance_Ingredient(
      {this.id,
this.extension,
this.modifierExtension,
this.quantity,
this.substanceCodeableConcept,
this.substanceReference});

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) => _$Substance_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_IngredientToJson(this);
}