import 'package:json_annotation/json_annotation.dart';
part 'ingredients.g.dart';

@JsonSerializable(explicitToJson: true)
class ingredients {
  
      "itemCodeableConcept" : { CodeableConcept },
    "itemReference" : { Reference(Substance|Medication) },
    "isActive" : <boolean>, // Active ingredient indicator
    "strength" : { Ratio } // Quantity of ingredient present

  Medication({this.ingredient});

  factory ingredient.fromJson(Map<String, dynamic> json) => _$ingredientFromJson(json);
  Map<String, dynamic> toJson() => _$ingredientToJson(this);
}