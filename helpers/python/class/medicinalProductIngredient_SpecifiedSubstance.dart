

part 'medicinalProductIngredient_SpecifiedSubstance.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_SpecifiedSubstance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept group;
  CodeableConcept confidentiality;
  List<MedicinalProductIngredient_Strength> strength;


MedicinalProductIngredient_SpecifiedSubstance(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.group,
this.confidentiality,
this.strength});

  factory MedicinalProductIngredient_SpecifiedSubstance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_SpecifiedSubstanceToJson(this);
}