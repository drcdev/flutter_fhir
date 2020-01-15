import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ingredient.g.dart';

@JsonSerializable(explicitToJson: true)
class Ingredient {
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Ratio strength;

  Ingredient({this.itemCodeableConcept, this.itemReference, this.isActive,
        this.strength});

  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}