

part 'medicinalProductIngredient_Strength.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Strength {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Ratio presentation;
  Ratio presentationLowLimit;
  Ratio concentration;
  Ratio concentrationLowLimit;
  String measurementPoint;
  Element _measurementPoint;
  List<CodeableConcept> country;
  List<MedicinalProductIngredient_ReferenceStrength> referenceStrength;


MedicinalProductIngredient_Strength(
      {this.id,
this.extension,
this.modifierExtension,
this.presentation,
this.presentationLowLimit,
this.concentration,
this.concentrationLowLimit,
this.measurementPoint,
this._measurementPoint,
this.country,
this.referenceStrength});

  factory MedicinalProductIngredient_Strength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_StrengthFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_StrengthToJson(this);
}