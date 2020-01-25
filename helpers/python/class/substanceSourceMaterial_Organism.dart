

part 'substanceSourceMaterial_Organism.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Organism {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept family;
  CodeableConcept genus;
  CodeableConcept species;
  CodeableConcept intraspecificType;
  String intraspecificDescription;
  Element _intraspecificDescription;
  List<SubstanceSourceMaterial_Author> author;
  SubstanceSourceMaterial_Hybrid hybrid;
  SubstanceSourceMaterial_OrganismGeneral organismGeneral;


SubstanceSourceMaterial_Organism(
      {this.id,
this.extension,
this.modifierExtension,
this.family,
this.genus,
this.species,
this.intraspecificType,
this.intraspecificDescription,
this._intraspecificDescription,
this.author,
this.hybrid,
this.organismGeneral});

  factory SubstanceSourceMaterial_Organism.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_OrganismToJson(this);
}