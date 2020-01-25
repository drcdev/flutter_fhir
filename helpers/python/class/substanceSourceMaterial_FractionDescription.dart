

part 'substanceSourceMaterial_FractionDescription.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_FractionDescription {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String fraction;
  Element _fraction;
  CodeableConcept materialType;


SubstanceSourceMaterial_FractionDescription(
      {this.id,
this.extension,
this.modifierExtension,
this.fraction,
this._fraction,
this.materialType});

  factory SubstanceSourceMaterial_FractionDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_FractionDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_FractionDescriptionToJson(this);
}