

part 'medicinalProductIngredient_ReferenceStrength.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_ReferenceStrength {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept substance;
  Ratio strength;
  Ratio strengthLowLimit;
  String measurementPoint;
  Element _measurementPoint;
  List<CodeableConcept> country;


MedicinalProductIngredient_ReferenceStrength(
      {this.id,
this.extension,
this.modifierExtension,
this.substance,
this.strength,
this.strengthLowLimit,
this.measurementPoint,
this._measurementPoint,
this.country});

  factory MedicinalProductIngredient_ReferenceStrength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_ReferenceStrengthFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_ReferenceStrengthToJson(this);
}