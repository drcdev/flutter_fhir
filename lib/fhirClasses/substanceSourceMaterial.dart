import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'substanceSourceMaterial.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial {

  //  This is a SubstanceSourceMaterial resource
  final String resourceType= 'SubstanceSourceMaterial';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  List<Extension> modifierExtension;

  //  General high level classification of the source material specific to
  // the origin of the material.
  CodeableConcept sourceMaterialClass;

  //  The type of the source material shall be specified based on a
  // controlled vocabulary. For vaccines, this subclause refers to the class
  // of infectious agent.
  CodeableConcept sourceMaterialType;

  //  The state of the source material when extracted.
  CodeableConcept sourceMaterialState;

  //  The unique identifier associated with the source material parent
  // organism shall be specified.
  Identifier organismId;

  //  The organism accepted Scientific name shall be provided based on the
  // organism taxonomy.
  String organismName;

  //  Extensions for organismName
  Element elementOrganismName;

  //  The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID
  // of the substance (fresh) of Ginkgo biloba L. or Ginkgo biloba L. (Whole
  // plant).
  List<Identifier> parentSubstanceId;

  //  The parent substance of the Herbal Drug, or Herbal preparation.
  List<String> parentSubstanceName;

  //  Extensions for parentSubstanceName
  List<Element> elementParentSubstanceName;

  //  The country where the plant material is harvested or the countries
  // where the plasma is sourced from as laid down in accordance with the
  // Plasma Master File. For “Plasma-derived substances” the attribute
  // country of origin provides information about the countries used for the
  // manufacturing of the Cryopoor plama or Crioprecipitate.
  List<CodeableConcept> countryOfOrigin;

  //  The place/region where the plant is harvested or the places/regions
  // where the animal source material has its habitat.
  List<String> geographicalLocation;

  //  Extensions for geographicalLocation
  List<Element> elementGeographicalLocation;

  //  Stage of life for animals, plants, insects and microorganisms. This
  // information shall be provided only when the substance is significantly
  // different in these stages (e.g. foetal bovine serum).
  CodeableConcept developmentStage;

  //  Many complex materials are fractions of parts of plants, animals, or
  // minerals. Fraction elements are often necessary to define both
  // Substances and Specified Group 1 Substances. For substances derived
  // from Plants, fraction information will be captured at the Substance
  // information level ( . Oils, Juices and Exudates). Additional
  // information for Extracts, such as extraction solvent composition, will
  // be captured at the Specified Substance Group 1 information level. For
  // plasma-derived products fraction information will be captured at the
  // Substance and the Specified Substance Group 1 levels.
  List<SubstanceSourceMaterial_FractionDescription> fractionDescription;

  //  This subclause describes the organism which the substance is derived
  // from. For vaccines, the parent organism shall be specified based on
  // these subclause elements. As an example, full taxonomy will be
  // described for the Substance Name: ., Leaf.
  SubstanceSourceMaterial_Organism organism;

  //  To do.
  List<SubstanceSourceMaterial_PartDescription> partDescription;

SubstanceSourceMaterial(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.sourceMaterialClass,
    this.sourceMaterialType,
    this.sourceMaterialState,
    this.organismId,
    this.organismName,
    this.elementOrganismName,
    this.parentSubstanceId,
    this.parentSubstanceName,
    this.elementParentSubstanceName,
    this.countryOfOrigin,
    this.geographicalLocation,
    this.elementGeographicalLocation,
    this.developmentStage,
    this.fractionDescription,
    this.organism,
    this.partDescription
    });

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_FractionDescription {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  This element is capturing information about the fraction of a plant
  // part, or human plasma for fractionation.
  String fraction;

  //  Extensions for fraction
  Element elementFraction;

  //  The specific type of the material constituting the component. For
  // Herbal preparations the particulars of the extracts (liquid/dry) is
  // described in Specified Substance Group 1.
  CodeableConcept materialType;

SubstanceSourceMaterial_FractionDescription(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.fraction,
    this.elementFraction,
    this.materialType
    });

  factory SubstanceSourceMaterial_FractionDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_FractionDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_FractionDescriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Organism {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The family of an organism shall be specified.
  CodeableConcept family;

  //  The genus of an organism shall be specified; refers to the Latin
  // epithet of the genus element of the plant/animal scientific name; it is
  // present in names for genera, species and infraspecies.
  CodeableConcept genus;

  //  The species of an organism shall be specified; refers to the Latin
  // epithet of the species of the plant/animal; it is present in names for
  // species and infraspecies.
  CodeableConcept species;

  //  The Intraspecific type of an organism shall be specified.
  CodeableConcept intraspecificType;

  //  The intraspecific description of an organism shall be specified based
  // on a controlled vocabulary. For Influenza Vaccine, the intraspecific
  // description shall contain the syntax of the antigen in line with the
  // WHO convention.
  String intraspecificDescription;

  //  Extensions for intraspecificDescription
  Element elementIntraspecificDescription;

  //  4.9.13.6.1 Author type (Conditional).
  List<SubstanceSourceMaterial_Author> author;

  //  4.9.13.8.1 Hybrid species maternal organism ID (Optional).
  SubstanceSourceMaterial_Hybrid hybrid;

  //  4.9.13.7.1 Kingdom (Conditional).
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
    this.elementIntraspecificDescription,
    this.author,
    this.hybrid,
    this.organismGeneral
    });

  factory SubstanceSourceMaterial_Organism.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_OrganismToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Author {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The type of author of an organism species shall be specified. The
  // parenthetical author of an organism species refers to the first author
  // who published the plant/animal name (of any rank). The primary author
  // of an organism species refers to the first author(s), who validly
  // published the plant/animal name.
  CodeableConcept authorType;

  //  The author of an organism species shall be specified. The author year
  // of an organism shall also be specified when applicable; refers to the
  // year in which the first author(s) published the infraspecific
  // plant/animal name (of any rank).
  String authorDescription;

  //  Extensions for authorDescription
  Element elementAuthorDescription;

SubstanceSourceMaterial_Author(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.authorType,
    this.authorDescription,
    this.elementAuthorDescription
    });

  factory SubstanceSourceMaterial_Author.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Hybrid {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The identifier of the maternal species constituting the hybrid
  // organism shall be specified based on a controlled vocabulary. For
  // plants, the parents aren’t always known, and it is unlikely that it
  // will be known which is maternal and which is paternal.
  String maternalOrganismId;

  //  Extensions for maternalOrganismId
  Element elementMaternalOrganismId;

  //  The name of the maternal species constituting the hybrid organism
  // shall be specified. For plants, the parents aren’t always known, and it
  // is unlikely that it will be known which is maternal and which is
  // paternal.
  String maternalOrganismName;

  //  Extensions for maternalOrganismName
  Element elementMaternalOrganismName;

  //  The identifier of the paternal species constituting the hybrid
  // organism shall be specified based on a controlled vocabulary.
  String paternalOrganismId;

  //  Extensions for paternalOrganismId
  Element elementPaternalOrganismId;

  //  The name of the paternal species constituting the hybrid organism
  // shall be specified.
  String paternalOrganismName;

  //  Extensions for paternalOrganismName
  Element elementPaternalOrganismName;

  //  The hybrid type of an organism shall be specified.
  CodeableConcept hybridType;

SubstanceSourceMaterial_Hybrid(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.maternalOrganismId,
    this.elementMaternalOrganismId,
    this.maternalOrganismName,
    this.elementMaternalOrganismName,
    this.paternalOrganismId,
    this.elementPaternalOrganismId,
    this.paternalOrganismName,
    this.elementPaternalOrganismName,
    this.hybridType
    });

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_HybridFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_HybridToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_OrganismGeneral {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The kingdom of an organism shall be specified.
  CodeableConcept kingdom;

  //  The phylum of an organism shall be specified.
  CodeableConcept phylum;

  //  The class of an organism shall be specified.
  CodeableConcept classs;

  //  The order of an organism shall be specified,.
  CodeableConcept order;

SubstanceSourceMaterial_OrganismGeneral(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.kingdom,
    this.phylum,
    this.classs,
    this.order
    });

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_OrganismGeneralToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_PartDescription {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Entity of anatomical origin of source material within an organism.
  CodeableConcept part;

  //  The detailed anatomic location when the part can be extracted from
  // different anatomical locations of the organism. Multiple alternative
  // locations may apply.
  CodeableConcept partLocation;

SubstanceSourceMaterial_PartDescription(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.part,
    this.partLocation
    });

  factory SubstanceSourceMaterial_PartDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_PartDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_PartDescriptionToJson(this);
}

