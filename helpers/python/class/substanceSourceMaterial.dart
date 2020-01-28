part 'substanceSourceMaterial.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial {

SubstanceSourceMaterial resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept sourceMaterialClass;
CodeableConcept sourceMaterialType;
CodeableConcept sourceMaterialState;
Identifier organismId;
String organismName;
Element _organismName;
List<Identifier> parentSubstanceId;
List<String> parentSubstanceName;
List<Element> _parentSubstanceName;
List<CodeableConcept> countryOfOrigin;
List<String> geographicalLocation;
List<Element> _geographicalLocation;
CodeableConcept developmentStage;
List<SubstanceSourceMaterial_FractionDescription> fractionDescription;
SubstanceSourceMaterial_Organism organism;
List<SubstanceSourceMaterial_PartDescription> partDescription;

SubstanceSourceMaterial(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.sourceMaterialClass,
      this.sourceMaterialType,
      this.sourceMaterialState,
      this.organismId,
      this.organismName,
      this._organismName,
      this.parentSubstanceId,
      this.parentSubstanceName,
      this._parentSubstanceName,
      this.countryOfOrigin,
      this.geographicalLocation,
      this._geographicalLocation,
      this.developmentStage,
      this.fractionDescription,
      this.organism,
      this.partDescription,
      });

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterialFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterialToJson(this);
}

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
      this.materialType,
      });

  factory SubstanceSourceMaterial_FractionDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_FractionDescriptionFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_FractionDescriptionToJson(this);
}

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
      this.organismGeneral,
      });

  factory SubstanceSourceMaterial_Organism.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_OrganismToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Author {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept authorType;
String authorDescription;
Element _authorDescription;

SubstanceSourceMaterial_Author(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.authorType,
      this.authorDescription,
      this._authorDescription,
      });

  factory SubstanceSourceMaterial_Author.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_AuthorFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Hybrid {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String maternalOrganismId;
Element _maternalOrganismId;
String maternalOrganismName;
Element _maternalOrganismName;
String paternalOrganismId;
Element _paternalOrganismId;
String paternalOrganismName;
Element _paternalOrganismName;
CodeableConcept hybridType;

SubstanceSourceMaterial_Hybrid(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.maternalOrganismId,
      this._maternalOrganismId,
      this.maternalOrganismName,
      this._maternalOrganismName,
      this.paternalOrganismId,
      this._paternalOrganismId,
      this.paternalOrganismName,
      this._paternalOrganismName,
      this.hybridType,
      });

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_HybridFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_HybridToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_OrganismGeneral {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept kingdom;
CodeableConcept phylum;
CodeableConcept class;
CodeableConcept order;

SubstanceSourceMaterial_OrganismGeneral(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kingdom,
      this.phylum,
      this.class,
      this.order,
      });

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_OrganismGeneralToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_PartDescription {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept part;
CodeableConcept partLocation;

SubstanceSourceMaterial_PartDescription(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.part,
      this.partLocation,
      });

  factory SubstanceSourceMaterial_PartDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_PartDescriptionFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSourceMaterial_PartDescriptionToJson(this);
}

