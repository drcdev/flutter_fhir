

part 'nutritionOrder_Nutrient.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Nutrient {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept modifier;
  Quantity amount;


NutritionOrder_Nutrient(
      {this.id,
this.extension,
this.modifierExtension,
this.modifier,
this.amount});

  factory NutritionOrder_Nutrient.fromJson(Map<String, dynamic> json) => _$NutritionOrder_NutrientFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_NutrientToJson(this);
}