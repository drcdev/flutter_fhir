import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 579)
class SubstanceSourceMaterial {

  //  This is a SubstanceSourceMaterial resource
  @HiveField(0)
  final String resourceType= 'SubstanceSourceMaterial';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  General high level classification of the source material specific to
  // the origin of the material.
  @HiveField(11)
  CodeableConcept sourceMaterialClass;

  //  The type of the source material shall be specified based on a
  // controlled vocabulary. For vaccines, this subclause refers to the class
  // of infectious agent.
  @HiveField(12)
  CodeableConcept sourceMaterialType;

  //  The state of the source material when extracted.
  @HiveField(13)
  CodeableConcept sourceMaterialState;

  //  The unique identifier associated with the source material parent
  // organism shall be specified.
  @HiveField(14)
  Identifier organismId;

  //  The organism accepted Scientific name shall be provided based on the
  // organism taxonomy.
  @HiveField(15)
  String organismName;

  //  Extensions for organismName
  @HiveField(16)
  Element elementOrganismName;

  //  The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID
  // of the substance (fresh) of Ginkgo biloba L. or Ginkgo biloba L. (Whole
  // plant).
  @HiveField(17)
  List<Identifier> parentSubstanceId;

  //  The parent substance of the Herbal Drug, or Herbal preparation.
  @HiveField(18)
  List<String> parentSubstanceName;

  //  Extensions for parentSubstanceName
  @HiveField(19)
  List<Element> elementParentSubstanceName;

  //  The country where the plant material is harvested or the countries
  // where the plasma is sourced from as laid down in accordance with the
  // Plasma Master File. For “Plasma-derived substances” the attribute
  // country of origin provides information about the countries used for the
  // manufacturing of the Cryopoor plama or Crioprecipitate.
  @HiveField(20)
  List<CodeableConcept> countryOfOrigin;

  //  The place/region where the plant is harvested or the places/regions
  // where the animal source material has its habitat.
  @HiveField(21)
  List<String> geographicalLocation;

  //  Extensions for geographicalLocation
  @HiveField(22)
  List<Element> elementGeographicalLocation;

  //  Stage of life for animals, plants, insects and microorganisms. This
  // information shall be provided only when the substance is significantly
  // different in these stages (e.g. foetal bovine serum).
  @HiveField(23)
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
  @HiveField(24)
  List<SubstanceSourceMaterial_FractionDescription> fractionDescription;

  //  This subclause describes the organism which the substance is derived
  // from. For vaccines, the parent organism shall be specified based on
  // these subclause elements. As an example, full taxonomy will be
  // described for the Substance Name: ., Leaf.
  @HiveField(25)
  SubstanceSourceMaterial_Organism organism;

  //  To do.
  @HiveField(26)
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
@HiveType(typeId: 580)
class SubstanceSourceMaterial_FractionDescription {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  This element is capturing information about the fraction of a plant
  // part, or human plasma for fractionation.
  @HiveField(3)
  String fraction;

  //  Extensions for fraction
  @HiveField(4)
  Element elementFraction;

  //  The specific type of the material constituting the component. For
  // Herbal preparations the particulars of the extracts (liquid/dry) is
  // described in Specified Substance Group 1.
  @HiveField(5)
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
@HiveType(typeId: 581)
class SubstanceSourceMaterial_Organism {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The family of an organism shall be specified.
  @HiveField(3)
  CodeableConcept family;

  //  The genus of an organism shall be specified; refers to the Latin
  // epithet of the genus element of the plant/animal scientific name; it is
  // present in names for genera, species and infraspecies.
  @HiveField(4)
  CodeableConcept genus;

  //  The species of an organism shall be specified; refers to the Latin
  // epithet of the species of the plant/animal; it is present in names for
  // species and infraspecies.
  @HiveField(5)
  CodeableConcept species;

  //  The Intraspecific type of an organism shall be specified.
  @HiveField(6)
  CodeableConcept intraspecificType;

  //  The intraspecific description of an organism shall be specified based
  // on a controlled vocabulary. For Influenza Vaccine, the intraspecific
  // description shall contain the syntax of the antigen in line with the
  // WHO convention.
  @HiveField(7)
  String intraspecificDescription;

  //  Extensions for intraspecificDescription
  @HiveField(8)
  Element elementIntraspecificDescription;

  //  4.9.13.6.1 Author type (Conditional).
  @HiveField(9)
  List<SubstanceSourceMaterial_Author> author;

  //  4.9.13.8.1 Hybrid species maternal organism ID (Optional).
  @HiveField(10)
  SubstanceSourceMaterial_Hybrid hybrid;

  //  4.9.13.7.1 Kingdom (Conditional).
  @HiveField(11)
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
@HiveType(typeId: 582)
class SubstanceSourceMaterial_Author {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of author of an organism species shall be specified. The
  // parenthetical author of an organism species refers to the first author
  // who published the plant/animal name (of any rank). The primary author
  // of an organism species refers to the first author(s), who validly
  // published the plant/animal name.
  @HiveField(3)
  CodeableConcept authorType;

  //  The author of an organism species shall be specified. The author year
  // of an organism shall also be specified when applicable; refers to the
  // year in which the first author(s) published the infraspecific
  // plant/animal name (of any rank).
  @HiveField(4)
  String authorDescription;

  //  Extensions for authorDescription
  @HiveField(5)
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
@HiveType(typeId: 583)
class SubstanceSourceMaterial_Hybrid {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The identifier of the maternal species constituting the hybrid
  // organism shall be specified based on a controlled vocabulary. For
  // plants, the parents aren’t always known, and it is unlikely that it
  // will be known which is maternal and which is paternal.
  @HiveField(3)
  String maternalOrganismId;

  //  Extensions for maternalOrganismId
  @HiveField(4)
  Element elementMaternalOrganismId;

  //  The name of the maternal species constituting the hybrid organism
  // shall be specified. For plants, the parents aren’t always known, and it
  // is unlikely that it will be known which is maternal and which is
  // paternal.
  @HiveField(5)
  String maternalOrganismName;

  //  Extensions for maternalOrganismName
  @HiveField(6)
  Element elementMaternalOrganismName;

  //  The identifier of the paternal species constituting the hybrid
  // organism shall be specified based on a controlled vocabulary.
  @HiveField(7)
  String paternalOrganismId;

  //  Extensions for paternalOrganismId
  @HiveField(8)
  Element elementPaternalOrganismId;

  //  The name of the paternal species constituting the hybrid organism
  // shall be specified.
  @HiveField(9)
  String paternalOrganismName;

  //  Extensions for paternalOrganismName
  @HiveField(10)
  Element elementPaternalOrganismName;

  //  The hybrid type of an organism shall be specified.
  @HiveField(11)
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
@HiveType(typeId: 584)
class SubstanceSourceMaterial_OrganismGeneral {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The kingdom of an organism shall be specified.
  @HiveField(3)
  CodeableConcept kingdom;

  //  The phylum of an organism shall be specified.
  @HiveField(4)
  CodeableConcept phylum;

  //  The class of an organism shall be specified.
  @HiveField(5)
  CodeableConcept classs;

  //  The order of an organism shall be specified,.
  @HiveField(6)
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
@HiveType(typeId: 585)
class SubstanceSourceMaterial_PartDescription {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Entity of anatomical origin of source material within an organism.
  @HiveField(3)
  CodeableConcept part;

  //  The detailed anatomic location when the part can be extracted from
  // different anatomical locations of the organism. Multiple alternative
  // locations may apply.
  @HiveField(4)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceSourceMaterialAdapter
    extends TypeAdapter<SubstanceSourceMaterial> {
  @override
  final typeId = 579;

  @override
  SubstanceSourceMaterial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      sourceMaterialClass: fields[11] as CodeableConcept,
      sourceMaterialType: fields[12] as CodeableConcept,
      sourceMaterialState: fields[13] as CodeableConcept,
      organismId: fields[14] as Identifier,
      organismName: fields[15] as String,
      elementOrganismName: fields[16] as Element,
      parentSubstanceId: (fields[17] as List)?.cast<Identifier>(),
      parentSubstanceName: (fields[18] as List)?.cast<String>(),
      elementParentSubstanceName: (fields[19] as List)?.cast<Element>(),
      countryOfOrigin: (fields[20] as List)?.cast<CodeableConcept>(),
      geographicalLocation: (fields[21] as List)?.cast<String>(),
      elementGeographicalLocation: (fields[22] as List)?.cast<Element>(),
      developmentStage: fields[23] as CodeableConcept,
      fractionDescription: (fields[24] as List)
          ?.cast<SubstanceSourceMaterial_FractionDescription>(),
      organism: fields[25] as SubstanceSourceMaterial_Organism,
      partDescription:
          (fields[26] as List)?.cast<SubstanceSourceMaterial_PartDescription>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial obj) {
    writer
      ..writeByte(27)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.sourceMaterialClass)
      ..writeByte(12)
      ..write(obj.sourceMaterialType)
      ..writeByte(13)
      ..write(obj.sourceMaterialState)
      ..writeByte(14)
      ..write(obj.organismId)
      ..writeByte(15)
      ..write(obj.organismName)
      ..writeByte(16)
      ..write(obj.elementOrganismName)
      ..writeByte(17)
      ..write(obj.parentSubstanceId)
      ..writeByte(18)
      ..write(obj.parentSubstanceName)
      ..writeByte(19)
      ..write(obj.elementParentSubstanceName)
      ..writeByte(20)
      ..write(obj.countryOfOrigin)
      ..writeByte(21)
      ..write(obj.geographicalLocation)
      ..writeByte(22)
      ..write(obj.elementGeographicalLocation)
      ..writeByte(23)
      ..write(obj.developmentStage)
      ..writeByte(24)
      ..write(obj.fractionDescription)
      ..writeByte(25)
      ..write(obj.organism)
      ..writeByte(26)
      ..write(obj.partDescription);
  }
}

class SubstanceSourceMaterial_FractionDescriptionAdapter
    extends TypeAdapter<SubstanceSourceMaterial_FractionDescription> {
  @override
  final typeId = 580;

  @override
  SubstanceSourceMaterial_FractionDescription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_FractionDescription(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      fraction: fields[3] as String,
      elementFraction: fields[4] as Element,
      materialType: fields[5] as CodeableConcept,
    );
  }

  @override
  void write(
      BinaryWriter writer, SubstanceSourceMaterial_FractionDescription obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.fraction)
      ..writeByte(4)
      ..write(obj.elementFraction)
      ..writeByte(5)
      ..write(obj.materialType);
  }
}

class SubstanceSourceMaterial_OrganismAdapter
    extends TypeAdapter<SubstanceSourceMaterial_Organism> {
  @override
  final typeId = 581;

  @override
  SubstanceSourceMaterial_Organism read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_Organism(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      family: fields[3] as CodeableConcept,
      genus: fields[4] as CodeableConcept,
      species: fields[5] as CodeableConcept,
      intraspecificType: fields[6] as CodeableConcept,
      intraspecificDescription: fields[7] as String,
      elementIntraspecificDescription: fields[8] as Element,
      author: (fields[9] as List)?.cast<SubstanceSourceMaterial_Author>(),
      hybrid: fields[10] as SubstanceSourceMaterial_Hybrid,
      organismGeneral: fields[11] as SubstanceSourceMaterial_OrganismGeneral,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_Organism obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.family)
      ..writeByte(4)
      ..write(obj.genus)
      ..writeByte(5)
      ..write(obj.species)
      ..writeByte(6)
      ..write(obj.intraspecificType)
      ..writeByte(7)
      ..write(obj.intraspecificDescription)
      ..writeByte(8)
      ..write(obj.elementIntraspecificDescription)
      ..writeByte(9)
      ..write(obj.author)
      ..writeByte(10)
      ..write(obj.hybrid)
      ..writeByte(11)
      ..write(obj.organismGeneral);
  }
}

class SubstanceSourceMaterial_AuthorAdapter
    extends TypeAdapter<SubstanceSourceMaterial_Author> {
  @override
  final typeId = 582;

  @override
  SubstanceSourceMaterial_Author read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_Author(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      authorType: fields[3] as CodeableConcept,
      authorDescription: fields[4] as String,
      elementAuthorDescription: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_Author obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.authorType)
      ..writeByte(4)
      ..write(obj.authorDescription)
      ..writeByte(5)
      ..write(obj.elementAuthorDescription);
  }
}

class SubstanceSourceMaterial_HybridAdapter
    extends TypeAdapter<SubstanceSourceMaterial_Hybrid> {
  @override
  final typeId = 583;

  @override
  SubstanceSourceMaterial_Hybrid read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_Hybrid(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      maternalOrganismId: fields[3] as String,
      elementMaternalOrganismId: fields[4] as Element,
      maternalOrganismName: fields[5] as String,
      elementMaternalOrganismName: fields[6] as Element,
      paternalOrganismId: fields[7] as String,
      elementPaternalOrganismId: fields[8] as Element,
      paternalOrganismName: fields[9] as String,
      elementPaternalOrganismName: fields[10] as Element,
      hybridType: fields[11] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_Hybrid obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.maternalOrganismId)
      ..writeByte(4)
      ..write(obj.elementMaternalOrganismId)
      ..writeByte(5)
      ..write(obj.maternalOrganismName)
      ..writeByte(6)
      ..write(obj.elementMaternalOrganismName)
      ..writeByte(7)
      ..write(obj.paternalOrganismId)
      ..writeByte(8)
      ..write(obj.elementPaternalOrganismId)
      ..writeByte(9)
      ..write(obj.paternalOrganismName)
      ..writeByte(10)
      ..write(obj.elementPaternalOrganismName)
      ..writeByte(11)
      ..write(obj.hybridType);
  }
}

class SubstanceSourceMaterial_OrganismGeneralAdapter
    extends TypeAdapter<SubstanceSourceMaterial_OrganismGeneral> {
  @override
  final typeId = 584;

  @override
  SubstanceSourceMaterial_OrganismGeneral read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_OrganismGeneral(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      kingdom: fields[3] as CodeableConcept,
      phylum: fields[4] as CodeableConcept,
      classs: fields[5] as CodeableConcept,
      order: fields[6] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_OrganismGeneral obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.kingdom)
      ..writeByte(4)
      ..write(obj.phylum)
      ..writeByte(5)
      ..write(obj.classs)
      ..writeByte(6)
      ..write(obj.order);
  }
}

class SubstanceSourceMaterial_PartDescriptionAdapter
    extends TypeAdapter<SubstanceSourceMaterial_PartDescription> {
  @override
  final typeId = 585;

  @override
  SubstanceSourceMaterial_PartDescription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_PartDescription(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      part: fields[3] as CodeableConcept,
      partLocation: fields[4] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_PartDescription obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.part)
      ..writeByte(4)
      ..write(obj.partLocation);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceSourceMaterial _$SubstanceSourceMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sourceMaterialClass: json['sourceMaterialClass'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialClass'] as Map<String, dynamic>),
    sourceMaterialType: json['sourceMaterialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialType'] as Map<String, dynamic>),
    sourceMaterialState: json['sourceMaterialState'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialState'] as Map<String, dynamic>),
    organismId: json['organismId'] == null
        ? null
        : Identifier.fromJson(json['organismId'] as Map<String, dynamic>),
    organismName: json['organismName'] as String,
    elementOrganismName: json['elementOrganismName'] == null
        ? null
        : Element.fromJson(json['elementOrganismName'] as Map<String, dynamic>),
    parentSubstanceId: (json['parentSubstanceId'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parentSubstanceName: (json['parentSubstanceName'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementParentSubstanceName: (json['elementParentSubstanceName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countryOfOrigin: (json['countryOfOrigin'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    geographicalLocation: (json['geographicalLocation'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementGeographicalLocation: (json['elementGeographicalLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    developmentStage: json['developmentStage'] == null
        ? null
        : CodeableConcept.fromJson(
            json['developmentStage'] as Map<String, dynamic>),
    fractionDescription: (json['fractionDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_FractionDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    organism: json['organism'] == null
        ? null
        : SubstanceSourceMaterial_Organism.fromJson(
            json['organism'] as Map<String, dynamic>),
    partDescription: (json['partDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_PartDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterialToJson(
        SubstanceSourceMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sourceMaterialClass': instance.sourceMaterialClass?.toJson(),
      'sourceMaterialType': instance.sourceMaterialType?.toJson(),
      'sourceMaterialState': instance.sourceMaterialState?.toJson(),
      'organismId': instance.organismId?.toJson(),
      'organismName': instance.organismName,
      'elementOrganismName': instance.elementOrganismName?.toJson(),
      'parentSubstanceId':
          instance.parentSubstanceId?.map((e) => e?.toJson())?.toList(),
      'parentSubstanceName': instance.parentSubstanceName,
      'elementParentSubstanceName': instance.elementParentSubstanceName
          ?.map((e) => e?.toJson())
          ?.toList(),
      'countryOfOrigin':
          instance.countryOfOrigin?.map((e) => e?.toJson())?.toList(),
      'geographicalLocation': instance.geographicalLocation,
      'elementGeographicalLocation': instance.elementGeographicalLocation
          ?.map((e) => e?.toJson())
          ?.toList(),
      'developmentStage': instance.developmentStage?.toJson(),
      'fractionDescription':
          instance.fractionDescription?.map((e) => e?.toJson())?.toList(),
      'organism': instance.organism?.toJson(),
      'partDescription':
          instance.partDescription?.map((e) => e?.toJson())?.toList(),
    };

SubstanceSourceMaterial_FractionDescription
    _$SubstanceSourceMaterial_FractionDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_FractionDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fraction: json['fraction'] as String,
    elementFraction: json['elementFraction'] == null
        ? null
        : Element.fromJson(json['elementFraction'] as Map<String, dynamic>),
    materialType: json['materialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['materialType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_FractionDescriptionToJson(
        SubstanceSourceMaterial_FractionDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'fraction': instance.fraction,
      'elementFraction': instance.elementFraction?.toJson(),
      'materialType': instance.materialType?.toJson(),
    };

SubstanceSourceMaterial_Organism _$SubstanceSourceMaterial_OrganismFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Organism(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    family: json['family'] == null
        ? null
        : CodeableConcept.fromJson(json['family'] as Map<String, dynamic>),
    genus: json['genus'] == null
        ? null
        : CodeableConcept.fromJson(json['genus'] as Map<String, dynamic>),
    species: json['species'] == null
        ? null
        : CodeableConcept.fromJson(json['species'] as Map<String, dynamic>),
    intraspecificType: json['intraspecificType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intraspecificType'] as Map<String, dynamic>),
    intraspecificDescription: json['intraspecificDescription'] as String,
    elementIntraspecificDescription: json['elementIntraspecificDescription'] ==
            null
        ? null
        : Element.fromJson(
            json['elementIntraspecificDescription'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_Author.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    hybrid: json['hybrid'] == null
        ? null
        : SubstanceSourceMaterial_Hybrid.fromJson(
            json['hybrid'] as Map<String, dynamic>),
    organismGeneral: json['organismGeneral'] == null
        ? null
        : SubstanceSourceMaterial_OrganismGeneral.fromJson(
            json['organismGeneral'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismToJson(
        SubstanceSourceMaterial_Organism instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'family': instance.family?.toJson(),
      'genus': instance.genus?.toJson(),
      'species': instance.species?.toJson(),
      'intraspecificType': instance.intraspecificType?.toJson(),
      'intraspecificDescription': instance.intraspecificDescription,
      'elementIntraspecificDescription':
          instance.elementIntraspecificDescription?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'hybrid': instance.hybrid?.toJson(),
      'organismGeneral': instance.organismGeneral?.toJson(),
    };

SubstanceSourceMaterial_Author _$SubstanceSourceMaterial_AuthorFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Author(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorType: json['authorType'] == null
        ? null
        : CodeableConcept.fromJson(json['authorType'] as Map<String, dynamic>),
    authorDescription: json['authorDescription'] as String,
    elementAuthorDescription: json['elementAuthorDescription'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_AuthorToJson(
        SubstanceSourceMaterial_Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'authorType': instance.authorType?.toJson(),
      'authorDescription': instance.authorDescription,
      'elementAuthorDescription': instance.elementAuthorDescription?.toJson(),
    };

SubstanceSourceMaterial_Hybrid _$SubstanceSourceMaterial_HybridFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Hybrid(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maternalOrganismId: json['maternalOrganismId'] as String,
    elementMaternalOrganismId: json['elementMaternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['elementMaternalOrganismId'] as Map<String, dynamic>),
    maternalOrganismName: json['maternalOrganismName'] as String,
    elementMaternalOrganismName: json['elementMaternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['elementMaternalOrganismName'] as Map<String, dynamic>),
    paternalOrganismId: json['paternalOrganismId'] as String,
    elementPaternalOrganismId: json['elementPaternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['elementPaternalOrganismId'] as Map<String, dynamic>),
    paternalOrganismName: json['paternalOrganismName'] as String,
    elementPaternalOrganismName: json['elementPaternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['elementPaternalOrganismName'] as Map<String, dynamic>),
    hybridType: json['hybridType'] == null
        ? null
        : CodeableConcept.fromJson(json['hybridType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_HybridToJson(
        SubstanceSourceMaterial_Hybrid instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'maternalOrganismId': instance.maternalOrganismId,
      'elementMaternalOrganismId': instance.elementMaternalOrganismId?.toJson(),
      'maternalOrganismName': instance.maternalOrganismName,
      'elementMaternalOrganismName':
          instance.elementMaternalOrganismName?.toJson(),
      'paternalOrganismId': instance.paternalOrganismId,
      'elementPaternalOrganismId': instance.elementPaternalOrganismId?.toJson(),
      'paternalOrganismName': instance.paternalOrganismName,
      'elementPaternalOrganismName':
          instance.elementPaternalOrganismName?.toJson(),
      'hybridType': instance.hybridType?.toJson(),
    };

SubstanceSourceMaterial_OrganismGeneral
    _$SubstanceSourceMaterial_OrganismGeneralFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_OrganismGeneral(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kingdom: json['kingdom'] == null
        ? null
        : CodeableConcept.fromJson(json['kingdom'] as Map<String, dynamic>),
    phylum: json['phylum'] == null
        ? null
        : CodeableConcept.fromJson(json['phylum'] as Map<String, dynamic>),
    classs: json['classs'] == null
        ? null
        : CodeableConcept.fromJson(json['classs'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : CodeableConcept.fromJson(json['order'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismGeneralToJson(
        SubstanceSourceMaterial_OrganismGeneral instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kingdom': instance.kingdom?.toJson(),
      'phylum': instance.phylum?.toJson(),
      'classs': instance.classs?.toJson(),
      'order': instance.order?.toJson(),
    };

SubstanceSourceMaterial_PartDescription
    _$SubstanceSourceMaterial_PartDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_PartDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    part: json['part'] == null
        ? null
        : CodeableConcept.fromJson(json['part'] as Map<String, dynamic>),
    partLocation: json['partLocation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['partLocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_PartDescriptionToJson(
        SubstanceSourceMaterial_PartDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'part': instance.part?.toJson(),
      'partLocation': instance.partLocation?.toJson(),
    };
