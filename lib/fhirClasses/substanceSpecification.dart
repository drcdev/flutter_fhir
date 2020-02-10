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

part 'substanceSpecification.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification {

  //  This is a SubstanceSpecification resource
  final String resourceType= 'SubstanceSpecification';

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

  //  Identifier by which this substance is known.
  Identifier identifier;

  //  High level categorization, e.g. polymer or nucleic acid.
  CodeableConcept type;

  //  Status of substance within the catalogue e.g. approved.
  CodeableConcept status;

  //  If the substance applies to only human or veterinary use.
  CodeableConcept domain;

  //  Textual description of the substance.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Supporting literature.
  List<Reference> source;

  //  Textual comment about this record of a substance.
  String comment;

  //  Extensions for comment
  Element elementComment;

  //  Moiety, for structural modifications.
  List<SubstanceSpecification_Moiety> moiety;

  //  General specifications for this substance, including how it is related
  // to other substances.
  List<SubstanceSpecification_Property> property;

  //  General information detailing this substance.
  Reference referenceInformation;

  //  Structural information.
  SubstanceSpecification_Structure structure;

  //  Codes associated with the substance.
  List<SubstanceSpecification_Code> code;

  //  Names applicable to this substance.
  List<SubstanceSpecification_Name> name;

  //  The molecular weight or weight range (for proteins, polymers or
  // nucleic acids).
  List<SubstanceSpecification_MolecularWeight> molecularWeight;

  //  A link between this substance and another, with details of the
  // relationship.
  List<SubstanceSpecification_Relationship> relationship;

  //  Data items specific to nucleic acids.
  Reference nucleicAcid;

  //  Data items specific to polymers.
  Reference polymer;

  //  Data items specific to proteins.
  Reference protein;

  //  Material or taxonomic/anatomical source for the substance.
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

