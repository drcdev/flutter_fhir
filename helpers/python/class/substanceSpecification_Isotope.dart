

part 'substanceSpecification_Isotope.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Isotope {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept name;
  CodeableConcept substitution;
  Quantity halfLife;
  SubstanceSpecification_MolecularWeight molecularWeight;


SubstanceSpecification_Isotope(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.name,
this.substitution,
this.halfLife,
this.molecularWeight});

  factory SubstanceSpecification_Isotope.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_IsotopeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_IsotopeToJson(this);
}