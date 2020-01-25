

part 'nutritionOrder_OralDiet.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder_OralDiet {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> type;
  List<Timing> schedule;
  List<NutritionOrder_Nutrient> nutrient;
  List<NutritionOrder_Texture> texture;
  List<CodeableConcept> fluidConsistencyType;
  String instruction;
  Element _instruction;


NutritionOrder_OralDiet(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.schedule,
this.nutrient,
this.texture,
this.fluidConsistencyType,
this.instruction,
this._instruction});

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) => _$NutritionOrder_OralDietFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_OralDietToJson(this);
}