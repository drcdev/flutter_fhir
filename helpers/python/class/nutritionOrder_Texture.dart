

part 'nutritionOrder_Texture.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Texture {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept modifier;
  CodeableConcept foodType;


NutritionOrder_Texture(
      {this.id,
this.extension,
this.modifierExtension,
this.modifier,
this.foodType});

  factory NutritionOrder_Texture.fromJson(Map<String, dynamic> json) => _$NutritionOrder_TextureFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_TextureToJson(this);
}