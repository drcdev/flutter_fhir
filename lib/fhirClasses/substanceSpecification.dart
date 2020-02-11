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
@HiveType(typeId: 587)
class SubstanceSpecification_Moiety {

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

  //  Role that the moiety is playing.
  @HiveField(3)
  CodeableConcept role;

  //  Identifier by which this moiety substance is known.
  @HiveField(4)
  Identifier identifier;

  //  Textual name for this moiety substance.
  @HiveField(5)
  String name;

  //  Extensions for name
  @HiveField(6)
  Element elementName;

  //  Stereochemistry type.
  @HiveField(7)
  CodeableConcept stereochemistry;

  //  Optical activity type.
  @HiveField(8)
  CodeableConcept opticalActivity;

  //  Molecular formula.
  @HiveField(9)
  String molecularFormula;

  //  Extensions for molecularFormula
  @HiveField(10)
  Element elementMolecularFormula;

  //  Quantitative value for this moiety.
  @HiveField(11)
  Quantity amountQuantity;

  //  Quantitative value for this moiety.
  @HiveField(12)
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  @HiveField(13)
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
@HiveType(typeId: 588)
class SubstanceSpecification_Property {

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

  //  A category for this property, e.g. Physical, Chemical, Enzymatic.
  @HiveField(3)
  CodeableConcept category;

  //  Property type e.g. viscosity, pH, isoelectric point.
  @HiveField(4)
  CodeableConcept code;

  //  Parameters that were used in the measurement of a property (e.g. for
  // viscosity: measured at 20C with a pH of 7.1).
  @HiveField(5)
  String parameters;

  //  Extensions for parameters
  @HiveField(6)
  Element elementParameters;

  //  A substance upon which a defining property depends (e.g. for
  // solubility: in water, in alcohol).
  @HiveField(7)
  Reference definingSubstanceReference;

  //  A substance upon which a defining property depends (e.g. for
  // solubility: in water, in alcohol).
  @HiveField(8)
  CodeableConcept definingSubstanceCodeableConcept;

  //  Quantitative value for this property.
  @HiveField(9)
  Quantity amountQuantity;

  //  Quantitative value for this property.
  @HiveField(10)
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  @HiveField(11)
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
@HiveType(typeId: 589)
class SubstanceSpecification_Structure {

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

  //  Stereochemistry type.
  @HiveField(3)
  CodeableConcept stereochemistry;

  //  Optical activity type.
  @HiveField(4)
  CodeableConcept opticalActivity;

  //  Molecular formula.
  @HiveField(5)
  String molecularFormula;

  //  Extensions for molecularFormula
  @HiveField(6)
  Element elementMolecularFormula;

  //  Specified per moiety according to the Hill system, i.e. first C, then
  // H, then alphabetical, each moiety separated by a dot.
  @HiveField(7)
  String molecularFormulaByMoiety;

  //  Extensions for molecularFormulaByMoiety
  @HiveField(8)
  Element elementMolecularFormulaByMoiety;

  //  Applicable for single substances that contain a radionuclide or a
  // non-natural isotopic ratio.
  @HiveField(9)
  List<SubstanceSpecification_Isotope> isotope;

  //  The molecular weight or weight range (for proteins, polymers or
  // nucleic acids).
  @HiveField(10)
  SubstanceSpecification_MolecularWeight molecularWeight;

  //  Supporting literature.
  @HiveField(11)
  List<Reference> source;

  //  Molecular structural representation.
  @HiveField(12)
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
@HiveType(typeId: 590)
class SubstanceSpecification_Isotope {

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

  //  Substance identifier for each non-natural or radioisotope.
  @HiveField(3)
  Identifier identifier;

  //  Substance name for each non-natural or radioisotope.
  @HiveField(4)
  CodeableConcept name;

  //  The type of isotopic substitution present in a single substance.
  @HiveField(5)
  CodeableConcept substitution;

  //  Half life - for a non-natural nuclide.
  @HiveField(6)
  Quantity halfLife;

  //  The molecular weight or weight range (for proteins, polymers or
  // nucleic acids).
  @HiveField(7)
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
@HiveType(typeId: 591)
class SubstanceSpecification_MolecularWeight {

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

  //  The method by which the molecular weight was determined.
  @HiveField(3)
  CodeableConcept method;

  //  Type of molecular weight such as exact, average (also known as. number
  // average), weight average.
  @HiveField(4)
  CodeableConcept type;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  @HiveField(5)
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
@HiveType(typeId: 592)
class SubstanceSpecification_Representation {

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

  //  The type of structure (e.g. Full, Partial, Representative).
  @HiveField(3)
  CodeableConcept type;

  //  The structural representation as text string in a format e.g. InChI,
  // SMILES, MOLFILE, CDX.
  @HiveField(4)
  String representation;

  //  Extensions for representation
  @HiveField(5)
  Element elementRepresentation;

  //  An attached file with the structural representation.
  @HiveField(6)
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
@HiveType(typeId: 593)
class SubstanceSpecification_Code {

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

  //  The specific code.
  @HiveField(3)
  CodeableConcept code;

  //  Status of the code assignment.
  @HiveField(4)
  CodeableConcept status;

  //  The date at which the code status is changed as part of the
  // terminology maintenance.
  @HiveField(5)
  DateTime statusDate;

  //  Extensions for statusDate
  @HiveField(6)
  Element elementStatusDate;

  //  Any comment can be provided in this field, if necessary.
  @HiveField(7)
  String comment;

  //  Extensions for comment
  @HiveField(8)
  Element elementComment;

  //  Supporting literature.
  @HiveField(9)
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
@HiveType(typeId: 594)
class SubstanceSpecification_Name {

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

  //  The actual name.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  Name type.
  @HiveField(5)
  CodeableConcept type;

  //  The status of the name.
  @HiveField(6)
  CodeableConcept status;

  //  If this is the preferred name for this substance.
  @HiveField(7)
  bool preferred;

  //  Extensions for preferred
  @HiveField(8)
  Element elementPreferred;

  //  Language of the name.
  @HiveField(9)
  List<CodeableConcept> language;

  //  The use context of this name for example if there is a different name
  // a drug active ingredient as opposed to a food colour additive.
  @HiveField(10)
  List<CodeableConcept> domain;

  //  The jurisdiction where this name applies.
  @HiveField(11)
  List<CodeableConcept> jurisdiction;

  //  A synonym of this name.
  @HiveField(12)
  List<SubstanceSpecification_Name> synonym;

  //  A translation for this name.
  @HiveField(13)
  List<SubstanceSpecification_Name> translation;

  //  Details of the official nature of this name.
  @HiveField(14)
  List<SubstanceSpecification_Official> official;

  //  Supporting literature.
  @HiveField(15)
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
@HiveType(typeId: 595)
class SubstanceSpecification_Official {

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

  //  Which authority uses this official name.
  @HiveField(3)
  CodeableConcept authority;

  //  The status of the official name.
  @HiveField(4)
  CodeableConcept status;

  //  Date of official name change.
  @HiveField(5)
  DateTime date;

  //  Extensions for date
  @HiveField(6)
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
@HiveType(typeId: 596)
class SubstanceSpecification_Relationship {

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

  //  A pointer to another substance, as a resource or just a
  // representational code.
  @HiveField(3)
  Reference substanceReference;

  //  A pointer to another substance, as a resource or just a
  // representational code.
  @HiveField(4)
  CodeableConcept substanceCodeableConcept;

  //  For example "salt to parent", "active moiety", "starting material".
  @HiveField(5)
  CodeableConcept relationship;

  //  For example where an enzyme strongly bonds with a particular
  // substance, this is a defining relationship for that enzyme, out of
  // several possible substance relationships.
  @HiveField(6)
  bool isDefining;

  //  Extensions for isDefining
  @HiveField(7)
  Element elementIsDefining;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  @HiveField(8)
  Quantity amountQuantity;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  @HiveField(9)
  Range amountRange;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  @HiveField(10)
  Ratio amountRatio;

  //  A numeric factor for the relationship, for instance to express that
  // the salt of a substance has some percentage of the active substance in
  // relation to some other.
  @HiveField(11)
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  @HiveField(12)
  Element elementAmountString;

  //  For use when the numeric.
  @HiveField(13)
  Ratio amountRatioLowLimit;

  //  An operator for the amount, for example "average", "approximately",
  // "less than".
  @HiveField(14)
  CodeableConcept amountType;

  //  Supporting literature.
  @HiveField(15)
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

class SubstanceSpecification_MoietyAdapter
    extends TypeAdapter<SubstanceSpecification_Moiety> {
  @override
  final typeId = 587;

  @override
  SubstanceSpecification_Moiety read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Moiety(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      role: fields[3] as CodeableConcept,
      identifier: fields[4] as Identifier,
      name: fields[5] as String,
      elementName: fields[6] as Element,
      stereochemistry: fields[7] as CodeableConcept,
      opticalActivity: fields[8] as CodeableConcept,
      molecularFormula: fields[9] as String,
      elementMolecularFormula: fields[10] as Element,
      amountQuantity: fields[11] as Quantity,
      amountString: fields[12] as String,
      elementAmountString: fields[13] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Moiety obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.identifier)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.elementName)
      ..writeByte(7)
      ..write(obj.stereochemistry)
      ..writeByte(8)
      ..write(obj.opticalActivity)
      ..writeByte(9)
      ..write(obj.molecularFormula)
      ..writeByte(10)
      ..write(obj.elementMolecularFormula)
      ..writeByte(11)
      ..write(obj.amountQuantity)
      ..writeByte(12)
      ..write(obj.amountString)
      ..writeByte(13)
      ..write(obj.elementAmountString);
  }
}

class SubstanceSpecification_PropertyAdapter
    extends TypeAdapter<SubstanceSpecification_Property> {
  @override
  final typeId = 588;

  @override
  SubstanceSpecification_Property read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Property(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      code: fields[4] as CodeableConcept,
      parameters: fields[5] as String,
      elementParameters: fields[6] as Element,
      definingSubstanceReference: fields[7] as Reference,
      definingSubstanceCodeableConcept: fields[8] as CodeableConcept,
      amountQuantity: fields[9] as Quantity,
      amountString: fields[10] as String,
      elementAmountString: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Property obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.code)
      ..writeByte(5)
      ..write(obj.parameters)
      ..writeByte(6)
      ..write(obj.elementParameters)
      ..writeByte(7)
      ..write(obj.definingSubstanceReference)
      ..writeByte(8)
      ..write(obj.definingSubstanceCodeableConcept)
      ..writeByte(9)
      ..write(obj.amountQuantity)
      ..writeByte(10)
      ..write(obj.amountString)
      ..writeByte(11)
      ..write(obj.elementAmountString);
  }
}

class SubstanceSpecification_StructureAdapter
    extends TypeAdapter<SubstanceSpecification_Structure> {
  @override
  final typeId = 589;

  @override
  SubstanceSpecification_Structure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Structure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      stereochemistry: fields[3] as CodeableConcept,
      opticalActivity: fields[4] as CodeableConcept,
      molecularFormula: fields[5] as String,
      elementMolecularFormula: fields[6] as Element,
      molecularFormulaByMoiety: fields[7] as String,
      elementMolecularFormulaByMoiety: fields[8] as Element,
      isotope: (fields[9] as List)?.cast<SubstanceSpecification_Isotope>(),
      molecularWeight: fields[10] as SubstanceSpecification_MolecularWeight,
      source: (fields[11] as List)?.cast<Reference>(),
      representation:
          (fields[12] as List)?.cast<SubstanceSpecification_Representation>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Structure obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.stereochemistry)
      ..writeByte(4)
      ..write(obj.opticalActivity)
      ..writeByte(5)
      ..write(obj.molecularFormula)
      ..writeByte(6)
      ..write(obj.elementMolecularFormula)
      ..writeByte(7)
      ..write(obj.molecularFormulaByMoiety)
      ..writeByte(8)
      ..write(obj.elementMolecularFormulaByMoiety)
      ..writeByte(9)
      ..write(obj.isotope)
      ..writeByte(10)
      ..write(obj.molecularWeight)
      ..writeByte(11)
      ..write(obj.source)
      ..writeByte(12)
      ..write(obj.representation);
  }
}

class SubstanceSpecification_IsotopeAdapter
    extends TypeAdapter<SubstanceSpecification_Isotope> {
  @override
  final typeId = 590;

  @override
  SubstanceSpecification_Isotope read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Isotope(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      name: fields[4] as CodeableConcept,
      substitution: fields[5] as CodeableConcept,
      halfLife: fields[6] as Quantity,
      molecularWeight: fields[7] as SubstanceSpecification_MolecularWeight,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Isotope obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.substitution)
      ..writeByte(6)
      ..write(obj.halfLife)
      ..writeByte(7)
      ..write(obj.molecularWeight);
  }
}

class SubstanceSpecification_MolecularWeightAdapter
    extends TypeAdapter<SubstanceSpecification_MolecularWeight> {
  @override
  final typeId = 591;

  @override
  SubstanceSpecification_MolecularWeight read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_MolecularWeight(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      method: fields[3] as CodeableConcept,
      type: fields[4] as CodeableConcept,
      amount: fields[5] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_MolecularWeight obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.method)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.amount);
  }
}

class SubstanceSpecification_RepresentationAdapter
    extends TypeAdapter<SubstanceSpecification_Representation> {
  @override
  final typeId = 592;

  @override
  SubstanceSpecification_Representation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Representation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      representation: fields[4] as String,
      elementRepresentation: fields[5] as Element,
      attachment: fields[6] as Attachment,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Representation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.representation)
      ..writeByte(5)
      ..write(obj.elementRepresentation)
      ..writeByte(6)
      ..write(obj.attachment);
  }
}

class SubstanceSpecification_CodeAdapter
    extends TypeAdapter<SubstanceSpecification_Code> {
  @override
  final typeId = 593;

  @override
  SubstanceSpecification_Code read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Code(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      status: fields[4] as CodeableConcept,
      statusDate: fields[5] as DateTime,
      elementStatusDate: fields[6] as Element,
      comment: fields[7] as String,
      elementComment: fields[8] as Element,
      source: (fields[9] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Code obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.statusDate)
      ..writeByte(6)
      ..write(obj.elementStatusDate)
      ..writeByte(7)
      ..write(obj.comment)
      ..writeByte(8)
      ..write(obj.elementComment)
      ..writeByte(9)
      ..write(obj.source);
  }
}

class SubstanceSpecification_NameAdapter
    extends TypeAdapter<SubstanceSpecification_Name> {
  @override
  final typeId = 594;

  @override
  SubstanceSpecification_Name read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Name(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      status: fields[6] as CodeableConcept,
      preferred: fields[7] as bool,
      elementPreferred: fields[8] as Element,
      language: (fields[9] as List)?.cast<CodeableConcept>(),
      domain: (fields[10] as List)?.cast<CodeableConcept>(),
      jurisdiction: (fields[11] as List)?.cast<CodeableConcept>(),
      synonym: (fields[12] as List)?.cast<SubstanceSpecification_Name>(),
      translation: (fields[13] as List)?.cast<SubstanceSpecification_Name>(),
      official: (fields[14] as List)?.cast<SubstanceSpecification_Official>(),
      source: (fields[15] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Name obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.preferred)
      ..writeByte(8)
      ..write(obj.elementPreferred)
      ..writeByte(9)
      ..write(obj.language)
      ..writeByte(10)
      ..write(obj.domain)
      ..writeByte(11)
      ..write(obj.jurisdiction)
      ..writeByte(12)
      ..write(obj.synonym)
      ..writeByte(13)
      ..write(obj.translation)
      ..writeByte(14)
      ..write(obj.official)
      ..writeByte(15)
      ..write(obj.source);
  }
}

class SubstanceSpecification_OfficialAdapter
    extends TypeAdapter<SubstanceSpecification_Official> {
  @override
  final typeId = 595;

  @override
  SubstanceSpecification_Official read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Official(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      authority: fields[3] as CodeableConcept,
      status: fields[4] as CodeableConcept,
      date: fields[5] as DateTime,
      elementDate: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Official obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.authority)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.elementDate);
  }
}

class SubstanceSpecification_RelationshipAdapter
    extends TypeAdapter<SubstanceSpecification_Relationship> {
  @override
  final typeId = 596;

  @override
  SubstanceSpecification_Relationship read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Relationship(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      substanceReference: fields[3] as Reference,
      substanceCodeableConcept: fields[4] as CodeableConcept,
      relationship: fields[5] as CodeableConcept,
      isDefining: fields[6] as bool,
      elementIsDefining: fields[7] as Element,
      amountQuantity: fields[8] as Quantity,
      amountRange: fields[9] as Range,
      amountRatio: fields[10] as Ratio,
      amountString: fields[11] as String,
      elementAmountString: fields[12] as Element,
      amountRatioLowLimit: fields[13] as Ratio,
      amountType: fields[14] as CodeableConcept,
      source: (fields[15] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Relationship obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.substanceReference)
      ..writeByte(4)
      ..write(obj.substanceCodeableConcept)
      ..writeByte(5)
      ..write(obj.relationship)
      ..writeByte(6)
      ..write(obj.isDefining)
      ..writeByte(7)
      ..write(obj.elementIsDefining)
      ..writeByte(8)
      ..write(obj.amountQuantity)
      ..writeByte(9)
      ..write(obj.amountRange)
      ..writeByte(10)
      ..write(obj.amountRatio)
      ..writeByte(11)
      ..write(obj.amountString)
      ..writeByte(12)
      ..write(obj.elementAmountString)
      ..writeByte(13)
      ..write(obj.amountRatioLowLimit)
      ..writeByte(14)
      ..write(obj.amountType)
      ..writeByte(15)
      ..write(obj.source);
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
