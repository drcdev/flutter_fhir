

part 'substanceSpecification_Structure.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Structure {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept stereochemistry;
  CodeableConcept opticalActivity;
  String molecularFormula;
  Element _molecularFormula;
  String molecularFormulaByMoiety;
  Element _molecularFormulaByMoiety;
  List<SubstanceSpecification_Isotope> isotope;
  SubstanceSpecification_MolecularWeight molecularWeight;
  List<Reference> source;
  List<SubstanceSpecification_Representation> representation;


SubstanceSpecification_Structure(
      {this.id,
this.extension,
this.modifierExtension,
this.stereochemistry,
this.opticalActivity,
this.molecularFormula,
this._molecularFormula,
this.molecularFormulaByMoiety,
this._molecularFormulaByMoiety,
this.isotope,
this.molecularWeight,
this.source,
this.representation});

  factory SubstanceSpecification_Structure.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_StructureFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_StructureToJson(this);
}