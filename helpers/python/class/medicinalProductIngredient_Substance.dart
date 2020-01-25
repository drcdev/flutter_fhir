

part 'medicinalProductIngredient_Substance.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Substance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<MedicinalProductIngredient_Strength> strength;


MedicinalProductIngredient_Substance(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.strength});

  factory MedicinalProductIngredient_Substance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_SubstanceToJson(this);
}