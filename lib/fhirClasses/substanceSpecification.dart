import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 586)
class SubstanceSpecification {

  //  This is a SubstanceSpecification resource
  @HiveField(0)
  final String resourceType= 'SubstanceSpecification';

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

  //  Identifier by which this substance is known.
  @HiveField(11)
  Identifier identifier;

  //  High level categorization, e.g. polymer or nucleic acid.
  @HiveField(12)
  CodeableConcept type;

  //  Status of substance within the catalogue e.g. approved.
  @HiveField(13)
  CodeableConcept status;

  //  If the substance applies to only human or veterinary use.
  @HiveField(14)
  CodeableConcept domain;

  //  Textual description of the substance.
  @HiveField(15)
  String description;

  //  Extensions for description
  @HiveField(16)
  Element elementDescription;

  //  Supporting literature.
  @HiveField(17)
  List<Reference> source;

  //  Textual comment about this record of a substance.
  @HiveField(18)
  String comment;

  //  Extensions for comment
  @HiveField(19)
  Element elementComment;

  //  Moiety, for structural modifications.
  @HiveField(20)
  List<SubstanceSpecification_Moiety> moiety;

  //  General specifications for this substance, including how it is related
  // to other substances.
  @HiveField(21)
  List<SubstanceSpecification_Property> property;

  //  General information detailing this substance.
  @HiveField(22)
  Reference referenceInformation;

  //  Structural information.
  @HiveField(23)
  SubstanceSpecification_Structure structure;

  //  Codes associated with the substance.
  @HiveField(24)
  List<SubstanceSpecification_Code> code;

  //  Names applicable to this substance.
  @HiveField(25)
  List<SubstanceSpecification_Name> name;

  //  The molecular weight or weight range (for proteins, polymers or
  // nucleic acids).
  @HiveField(26)
  List<SubstanceSpecification_MolecularWeight> molecularWeight;

  //  A link between this substance and another, with details of the
  // relationship.
  @HiveField(27)
  List<SubstanceSpecification_Relationship> relationship;

  //  Data items specific to nucleic acids.
  @HiveField(28)
  Reference nucleicAcid;

  //  Data items specific to polymers.
  @HiveField(29)
  Reference polymer;

  //  Data items specific to proteins.
  @HiveField(30)
  Reference protein;

  //  Material or taxonomic/anatomical source for the substance.
  @HiveField(31)
  Reference sourceMaterial;

SubstanceSpecification(
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
    this.identifier,
    this.type,
    this.status,
    this.domain,
    this.description,
    this.elementDescription,
    this.source,
    this.comment,
    this.elementComment,
    this.moiety,
    this.property,
    this.referenceInformation,
    this.structure,
    this.code,
    this.name,
    this.molecularWeight,
    this.relationship,
    this.nucleicAcid,
    this.polymer,
    this.protein,
    this.sourceMaterial
    });

  factory SubstanceSpecification.fromJson(Map<String, dynamic> json) => _$SubstanceSpecificationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Moiety {

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

  //  Role that the moiety is playing.
  CodeableConcept role;

  //  Identifier by which this moiety substance is known.
  Identifier identifier;

  //  Textual name for this moiety substance.
  String name;

  //  Extensions for name
  Element elementName;

  //  Stereochemistry type.
  CodeableConcept stereochemistry;

  //  Optical activity type.
  CodeableConcept opticalActivity;

  //  Molecular formula.
  String molecularFormula;

  //  Extensions for molecularFormula
  Element elementMolecularFormula;

  //  Quantitative value for this moiety.
  Quantity amountQuantity;

  //  Quantitative value for this moiety.
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  Element elementAmountString;

SubstanceSpecification_Moiety(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.elementName,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.elementMolecularFormula,
    this.amountQuantity,
    this.amountString,
    this.elementAmountString
    });

  factory SubstanceSpecification_Moiety.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MoietyFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_MoietyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Property {

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

  //  A category for this property, e.g. Physical, Chemical, Enzymatic.
  CodeableConcept category;

  //  Property type e.g. viscosity, pH, isoelectric point.
  CodeableConcept code;

  //  Parameters that were used in the measurement of a property (e.g. for
  // viscosity: measured at 20C with a pH of 7.1).
  String parameters;

  //  Extensions for parameters
  Element elementParameters;

  //  A substance upon which a defining property depends (e.g. for
  // solubility: in water, in alcohol).
  Reference definingSubstanceReference;

  //  A substance upon which a defining property depends (e.g. for
  // solubility: in water, in alcohol).
  CodeableConcept definingSubstanceCodeableConcept;

  //  Quantitative value for this property.
  Quantity amountQuantity;

  //  Quantitative value for this property.
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  Element elementAmountString;

SubstanceSpecification_Property(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.code,
    this.parameters,
    this.elementParameters,
    this.definingSubstanceReference,
    this.definingSubstanceCodeableConcept,
    this.amountQuantity,
    this.amountString,
    this.elementAmountString
    });

  factory SubstanceSpecification_Property.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Structure {

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

  //  Stereochemistry type.
  CodeableConcept stereochemistry;

  //  Optical activity type.
  CodeableConcept opticalActivity;

  //  Molecular formula.
  String molecularFormula;

  //  Extensions for molecularFormula
  Element elementMolecularFormula;

  //  Specified per moiety according to the Hill system, i.e. first C, then
  // H, then alphabetical, each moiety separated by a dot.
  String molecularFormulaByMoiety;

  //  Extensions for molecularFormulaByMoiety
  Element elementMolecularFormulaByMoiety;

  //  Applicable for single substances that contain a radionuclide or a
  // non-natural isotopic ratio.
  List<SubstanceSpecification_Isotope> isotope;

  //  The molecular weight or weight range (for proteins, polymers or
  // nucleic acids).
  SubstanceSpecification_MolecularWeight molecularWeight;

  //  Supporting literature.
  List<Reference> source;

  //  Molecular structural representation.
  List<SubstanceSpecification_Representation> representation;

SubstanceSpecification_Structure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.elementMolecularFormula,
    this.molecularFormulaByMoiety,
    this.elementMolecularFormulaByMoiety,
    this.isotope,
    this.molecularWeight,
    this.source,
    this.representation
    });

  factory SubstanceSpecification_Structure.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_StructureFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_StructureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Isotope {

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

  //  Substance identifier for each non-natural or radioisotope.
  Identifier identifier;

  //  Substance name for each non-natural or radioisotope.
  CodeableConcept name;

  //  The type of isotopic substitution present in a single substance.
  CodeableConcept substitution;

  //  Half life - for a non-natural nuclide.
  Quantity halfLife;

  //  The molecular weight or weight range (for proteins, polymers or
  // nucleic acids).
  SubstanceSpecification_MolecularWeight molecularWeight;

SubstanceSpecification_Isotope(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.substitution,
    this.halfLife,
    this.molecularWeight
    });

  factory SubstanceSpecification_Isotope.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_IsotopeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_IsotopeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_MolecularWeight {

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

  //  The method by which the molecular weight was determined.
  CodeableConcept method;

  //  Type of molecular weight such as exact, average (also known as. number
  // average), weight average.
  CodeableConcept type;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  Quantity amount;

SubstanceSpecification_MolecularWeight(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.method,
    this.type,
    this.amount
    });

  factory SubstanceSpecification_MolecularWeight.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MolecularWeightFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_MolecularWeightToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Representation {

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

  //  The type of structure (e.g. Full, Partial, Representative).
  CodeableConcept type;

  //  The structural representation as text string in a format e.g. InChI,
  // SMILES, MOLFILE, CDX.
  String representation;

  //  Extensions for representation
  Element elementRepresentation;

  //  An attached file with the structural representation.
  Attachment attachment;

SubstanceSpecification_Representation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.elementRepresentation,
    this.attachment
    });

  factory SubstanceSpecification_Representation.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RepresentationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_RepresentationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Code {

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

  //  The specific code.
  CodeableConcept code;

  //  Status of the code assignment.
  CodeableConcept status;

  //  The date at which the code status is changed as part of the
  // terminology maintenance.
  DateTime statusDate;

  //  Extensions for statusDate
  Element elementStatusDate;

  //  Any comment can be provided in this field, if necessary.
  String comment;

  //  Extensions for comment
  Element elementComment;

  //  Supporting literature.
  List<Reference> source;

SubstanceSpecification_Code(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.elementStatusDate,
    this.comment,
    this.elementComment,
    this.source
    });

  factory SubstanceSpecification_Code.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_CodeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_CodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Name {

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

  //  The actual name.
  String name;

  //  Extensions for name
  Element elementName;

  //  Name type.
  CodeableConcept type;

  //  The status of the name.
  CodeableConcept status;

  //  If this is the preferred name for this substance.
  bool preferred;

  //  Extensions for preferred
  Element elementPreferred;

  //  Language of the name.
  List<CodeableConcept> language;

  //  The use context of this name for example if there is a different name
  // a drug active ingredient as opposed to a food colour additive.
  List<CodeableConcept> domain;

  //  The jurisdiction where this name applies.
  List<CodeableConcept> jurisdiction;

  //  A synonym of this name.
  List<SubstanceSpecification_Name> synonym;

  //  A translation for this name.
  List<SubstanceSpecification_Name> translation;

  //  Details of the official nature of this name.
  List<SubstanceSpecification_Official> official;

  //  Supporting literature.
  List<Reference> source;

SubstanceSpecification_Name(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.status,
    this.preferred,
    this.elementPreferred,
    this.language,
    this.domain,
    this.jurisdiction,
    this.synonym,
    this.translation,
    this.official,
    this.source
    });

  factory SubstanceSpecification_Name.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_NameFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Official {

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

  //  Which authority uses this official name.
  CodeableConcept authority;

  //  The status of the official name.
  CodeableConcept status;

  //  Date of official name change.
  DateTime date;

  //  Extensions for date
  Element elementDate;

SubstanceSpecification_Official(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.elementDate
    });

  factory SubstanceSpecification_Official.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_OfficialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_OfficialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Relationship {

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

  //  A pointer to another substance, as a resource or just a
  // representational code.
  Reference substanceReference;

  //  A pointer to another substance, as a resource or just a
  // representational code.
  CodeableConcept substanceCodeableConcept;

  //  For example "salt to parent", "active moiety", "starting material".
  CodeableConcept relationship;

  //  For example where an enzyme strongly bonds with a particular
  // substance, this is a defining relationship for that enzyme, out of
  // several possible substance relationships.
  bool isDefining;

  //  Extensions for isDefining
  Element elementIsDefining;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  Quantity amountQuantity;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  Range amountRange;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  Ratio amountRatio;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  Element elementAmountString;

  //  For use when the numeric.
  Ratio amountRatioLowLimit;

  //  An operator for the amount, for example "average", "approximately",
  // "less than".
  CodeableConcept amountType;

  //  Supporting literature.
  List<Reference> source;

SubstanceSpecification_Relationship(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.substanceReference,
    this.substanceCodeableConcept,
    this.relationship,
    this.isDefining,
    this.elementIsDefining,
    this.amountQuantity,
    this.amountRange,
    this.amountRatio,
    this.amountString,
    this.elementAmountString,
    this.amountRatioLowLimit,
    this.amountType,
    this.source
    });

  factory SubstanceSpecification_Relationship.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RelationshipFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_RelationshipToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceSpecificationAdapter
    extends TypeAdapter<SubstanceSpecification> {
  @override
  final typeId = 586;

  @override
  SubstanceSpecification read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification(
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
      identifier: fields[11] as Identifier,
      type: fields[12] as CodeableConcept,
      status: fields[13] as CodeableConcept,
      domain: fields[14] as CodeableConcept,
      description: fields[15] as String,
      elementDescription: fields[16] as Element,
      source: (fields[17] as List)?.cast<Reference>(),
      comment: fields[18] as String,
      elementComment: fields[19] as Element,
      moiety: (fields[20] as List)?.cast<SubstanceSpecification_Moiety>(),
      property: (fields[21] as List)?.cast<SubstanceSpecification_Property>(),
      referenceInformation: fields[22] as Reference,
      structure: fields[23] as SubstanceSpecification_Structure,
      code: (fields[24] as List)?.cast<SubstanceSpecification_Code>(),
      name: (fields[25] as List)?.cast<SubstanceSpecification_Name>(),
      molecularWeight:
          (fields[26] as List)?.cast<SubstanceSpecification_MolecularWeight>(),
      relationship:
          (fields[27] as List)?.cast<SubstanceSpecification_Relationship>(),
      nucleicAcid: fields[28] as Reference,
      polymer: fields[29] as Reference,
      protein: fields[30] as Reference,
      sourceMaterial: fields[31] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.domain)
      ..writeByte(15)
      ..write(obj.description)
      ..writeByte(16)
      ..write(obj.elementDescription)
      ..writeByte(17)
      ..write(obj.source)
      ..writeByte(18)
      ..write(obj.comment)
      ..writeByte(19)
      ..write(obj.elementComment)
      ..writeByte(20)
      ..write(obj.moiety)
      ..writeByte(21)
      ..write(obj.property)
      ..writeByte(22)
      ..write(obj.referenceInformation)
      ..writeByte(23)
      ..write(obj.structure)
      ..writeByte(24)
      ..write(obj.code)
      ..writeByte(25)
      ..write(obj.name)
      ..writeByte(26)
      ..write(obj.molecularWeight)
      ..writeByte(27)
      ..write(obj.relationship)
      ..writeByte(28)
      ..write(obj.nucleicAcid)
      ..writeByte(29)
      ..write(obj.polymer)
      ..writeByte(30)
      ..write(obj.protein)
      ..writeByte(31)
      ..write(obj.sourceMaterial);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceSpecification _$SubstanceSpecificationFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    domain: json['domain'] == null
        ? null
        : CodeableConcept.fromJson(json['domain'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    moiety: (json['moiety'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Moiety.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Property.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    referenceInformation: json['referenceInformation'] == null
        ? null
        : Reference.fromJson(
            json['referenceInformation'] as Map<String, dynamic>),
    structure: json['structure'] == null
        ? null
        : SubstanceSpecification_Structure.fromJson(
            json['structure'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Code.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: (json['name'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    molecularWeight: (json['molecularWeight'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_MolecularWeight.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    relationship: (json['relationship'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Relationship.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    nucleicAcid: json['nucleicAcid'] == null
        ? null
        : Reference.fromJson(json['nucleicAcid'] as Map<String, dynamic>),
    polymer: json['polymer'] == null
        ? null
        : Reference.fromJson(json['polymer'] as Map<String, dynamic>),
    protein: json['protein'] == null
        ? null
        : Reference.fromJson(json['protein'] as Map<String, dynamic>),
    sourceMaterial: json['sourceMaterial'] == null
        ? null
        : Reference.fromJson(json['sourceMaterial'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecificationToJson(
        SubstanceSpecification instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'type': instance.type?.toJson(),
      'status': instance.status?.toJson(),
      'domain': instance.domain?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'moiety': instance.moiety?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'referenceInformation': instance.referenceInformation?.toJson(),
      'structure': instance.structure?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'molecularWeight':
          instance.molecularWeight?.map((e) => e?.toJson())?.toList(),
      'relationship': instance.relationship?.map((e) => e?.toJson())?.toList(),
      'nucleicAcid': instance.nucleicAcid?.toJson(),
      'polymer': instance.polymer?.toJson(),
      'protein': instance.protein?.toJson(),
      'sourceMaterial': instance.sourceMaterial?.toJson(),
    };

SubstanceSpecification_Moiety _$SubstanceSpecification_MoietyFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Moiety(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    stereochemistry: json['stereochemistry'] == null
        ? null
        : CodeableConcept.fromJson(
            json['stereochemistry'] as Map<String, dynamic>),
    opticalActivity: json['opticalActivity'] == null
        ? null
        : CodeableConcept.fromJson(
            json['opticalActivity'] as Map<String, dynamic>),
    molecularFormula: json['molecularFormula'] as String,
    elementMolecularFormula: json['elementMolecularFormula'] == null
        ? null
        : Element.fromJson(
            json['elementMolecularFormula'] as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_MoietyToJson(
        SubstanceSpecification_Moiety instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'stereochemistry': instance.stereochemistry?.toJson(),
      'opticalActivity': instance.opticalActivity?.toJson(),
      'molecularFormula': instance.molecularFormula,
      'elementMolecularFormula': instance.elementMolecularFormula?.toJson(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
    };

SubstanceSpecification_Property _$SubstanceSpecification_PropertyFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Property(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    parameters: json['parameters'] as String,
    elementParameters: json['elementParameters'] == null
        ? null
        : Element.fromJson(json['elementParameters'] as Map<String, dynamic>),
    definingSubstanceReference: json['definingSubstanceReference'] == null
        ? null
        : Reference.fromJson(
            json['definingSubstanceReference'] as Map<String, dynamic>),
    definingSubstanceCodeableConcept:
        json['definingSubstanceCodeableConcept'] == null
            ? null
            : CodeableConcept.fromJson(json['definingSubstanceCodeableConcept']
                as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_PropertyToJson(
        SubstanceSpecification_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'code': instance.code?.toJson(),
      'parameters': instance.parameters,
      'elementParameters': instance.elementParameters?.toJson(),
      'definingSubstanceReference':
          instance.definingSubstanceReference?.toJson(),
      'definingSubstanceCodeableConcept':
          instance.definingSubstanceCodeableConcept?.toJson(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
    };

SubstanceSpecification_Structure _$SubstanceSpecification_StructureFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Structure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stereochemistry: json['stereochemistry'] == null
        ? null
        : CodeableConcept.fromJson(
            json['stereochemistry'] as Map<String, dynamic>),
    opticalActivity: json['opticalActivity'] == null
        ? null
        : CodeableConcept.fromJson(
            json['opticalActivity'] as Map<String, dynamic>),
    molecularFormula: json['molecularFormula'] as String,
    elementMolecularFormula: json['elementMolecularFormula'] == null
        ? null
        : Element.fromJson(
            json['elementMolecularFormula'] as Map<String, dynamic>),
    molecularFormulaByMoiety: json['molecularFormulaByMoiety'] as String,
    elementMolecularFormulaByMoiety: json['elementMolecularFormulaByMoiety'] ==
            null
        ? null
        : Element.fromJson(
            json['elementMolecularFormulaByMoiety'] as Map<String, dynamic>),
    isotope: (json['isotope'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Isotope.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    molecularWeight: json['molecularWeight'] == null
        ? null
        : SubstanceSpecification_MolecularWeight.fromJson(
            json['molecularWeight'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    representation: (json['representation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Representation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_StructureToJson(
        SubstanceSpecification_Structure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'stereochemistry': instance.stereochemistry?.toJson(),
      'opticalActivity': instance.opticalActivity?.toJson(),
      'molecularFormula': instance.molecularFormula,
      'elementMolecularFormula': instance.elementMolecularFormula?.toJson(),
      'molecularFormulaByMoiety': instance.molecularFormulaByMoiety,
      'elementMolecularFormulaByMoiety':
          instance.elementMolecularFormulaByMoiety?.toJson(),
      'isotope': instance.isotope?.map((e) => e?.toJson())?.toList(),
      'molecularWeight': instance.molecularWeight?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
      'representation':
          instance.representation?.map((e) => e?.toJson())?.toList(),
    };

SubstanceSpecification_Isotope _$SubstanceSpecification_IsotopeFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Isotope(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] == null
        ? null
        : CodeableConcept.fromJson(json['name'] as Map<String, dynamic>),
    substitution: json['substitution'] == null
        ? null
        : CodeableConcept.fromJson(
            json['substitution'] as Map<String, dynamic>),
    halfLife: json['halfLife'] == null
        ? null
        : Quantity.fromJson(json['halfLife'] as Map<String, dynamic>),
    molecularWeight: json['molecularWeight'] == null
        ? null
        : SubstanceSpecification_MolecularWeight.fromJson(
            json['molecularWeight'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_IsotopeToJson(
        SubstanceSpecification_Isotope instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name?.toJson(),
      'substitution': instance.substitution?.toJson(),
      'halfLife': instance.halfLife?.toJson(),
      'molecularWeight': instance.molecularWeight?.toJson(),
    };

SubstanceSpecification_MolecularWeight
    _$SubstanceSpecification_MolecularWeightFromJson(
        Map<String, dynamic> json) {
  return SubstanceSpecification_MolecularWeight(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_MolecularWeightToJson(
        SubstanceSpecification_MolecularWeight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'method': instance.method?.toJson(),
      'type': instance.type?.toJson(),
      'amount': instance.amount?.toJson(),
    };

SubstanceSpecification_Representation
    _$SubstanceSpecification_RepresentationFromJson(Map<String, dynamic> json) {
  return SubstanceSpecification_Representation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    representation: json['representation'] as String,
    elementRepresentation: json['elementRepresentation'] == null
        ? null
        : Element.fromJson(
            json['elementRepresentation'] as Map<String, dynamic>),
    attachment: json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_RepresentationToJson(
        SubstanceSpecification_Representation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'representation': instance.representation,
      'elementRepresentation': instance.elementRepresentation?.toJson(),
      'attachment': instance.attachment?.toJson(),
    };

SubstanceSpecification_Code _$SubstanceSpecification_CodeFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Code(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    statusDate: json['statusDate'] == null
        ? null
        : DateTime.parse(json['statusDate'] as String),
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_CodeToJson(
        SubstanceSpecification_Code instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'status': instance.status?.toJson(),
      'statusDate': instance.statusDate?.toIso8601String(),
      'elementStatusDate': instance.elementStatusDate?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

SubstanceSpecification_Name _$SubstanceSpecification_NameFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Name(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    preferred: json['preferred'] as bool,
    elementPreferred: json['elementPreferred'] == null
        ? null
        : Element.fromJson(json['elementPreferred'] as Map<String, dynamic>),
    language: (json['language'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: (json['domain'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    synonym: (json['synonym'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translation: (json['translation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    official: (json['official'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Official.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_NameToJson(
        SubstanceSpecification_Name instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'type': instance.type?.toJson(),
      'status': instance.status?.toJson(),
      'preferred': instance.preferred,
      'elementPreferred': instance.elementPreferred?.toJson(),
      'language': instance.language?.map((e) => e?.toJson())?.toList(),
      'domain': instance.domain?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'synonym': instance.synonym?.map((e) => e?.toJson())?.toList(),
      'translation': instance.translation?.map((e) => e?.toJson())?.toList(),
      'official': instance.official?.map((e) => e?.toJson())?.toList(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

SubstanceSpecification_Official _$SubstanceSpecification_OfficialFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Official(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: json['authority'] == null
        ? null
        : CodeableConcept.fromJson(json['authority'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_OfficialToJson(
        SubstanceSpecification_Official instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'authority': instance.authority?.toJson(),
      'status': instance.status?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
    };

SubstanceSpecification_Relationship
    _$SubstanceSpecification_RelationshipFromJson(Map<String, dynamic> json) {
  return SubstanceSpecification_Relationship(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substanceReference: json['substanceReference'] == null
        ? null
        : Reference.fromJson(
            json['substanceReference'] as Map<String, dynamic>),
    substanceCodeableConcept: json['substanceCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['substanceCodeableConcept'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    isDefining: json['isDefining'] as bool,
    elementIsDefining: json['elementIsDefining'] == null
        ? null
        : Element.fromJson(json['elementIsDefining'] as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountRange: json['amountRange'] == null
        ? null
        : Range.fromJson(json['amountRange'] as Map<String, dynamic>),
    amountRatio: json['amountRatio'] == null
        ? null
        : Ratio.fromJson(json['amountRatio'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
    amountRatioLowLimit: json['amountRatioLowLimit'] == null
        ? null
        : Ratio.fromJson(json['amountRatioLowLimit'] as Map<String, dynamic>),
    amountType: json['amountType'] == null
        ? null
        : CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_RelationshipToJson(
        SubstanceSpecification_Relationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substanceReference': instance.substanceReference?.toJson(),
      'substanceCodeableConcept': instance.substanceCodeableConcept?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'isDefining': instance.isDefining,
      'elementIsDefining': instance.elementIsDefining?.toJson(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountRange': instance.amountRange?.toJson(),
      'amountRatio': instance.amountRatio?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
      'amountRatioLowLimit': instance.amountRatioLowLimit?.toJson(),
      'amountType': instance.amountType?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };
