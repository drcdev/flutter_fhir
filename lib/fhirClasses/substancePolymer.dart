import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/substanceAmount.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'substancePolymer.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer {

  //  This is a SubstancePolymer resource
  final String resourceType= 'SubstancePolymer';

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

  //  Todo.
  CodeableConcept classs;

  //  Todo.
  CodeableConcept geometry;

  //  Todo.
  List<CodeableConcept> copolymerConnectivity;

  //  Todo.
  List<String> modification;

  //  Extensions for modification
  List<Element> elementModification;

  //  Todo.
  List<SubstancePolymer_MonomerSet> monomerSet;

  //  Todo.
  List<SubstancePolymer_Repeat> repeat;

SubstancePolymer(
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
    this.classs,
    this.geometry,
    this.copolymerConnectivity,
    this.modification,
    this.elementModification,
    this.monomerSet,
    this.repeat
    });

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) => _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

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

  //  Todo.
  CodeableConcept ratioType;

  //  Todo.
  List<SubstancePolymer_StartingMaterial> startingMaterial;

SubstancePolymer_MonomerSet(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.ratioType,
    this.startingMaterial
    });

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_MonomerSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StartingMaterial {

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

  //  Todo.
  CodeableConcept material;

  //  Todo.
  CodeableConcept type;

  //  Todo.
  bool isDefining;

  //  Extensions for isDefining
  Element elementIsDefining;

  //  Todo.
  SubstanceAmount amount;

SubstancePolymer_StartingMaterial(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.isDefining,
    this.elementIsDefining,
    this.amount
    });

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StartingMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_Repeat {

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

  //  Todo.
  int numberOfUnits;

  //  Extensions for numberOfUnits
  Element elementNumberOfUnits;

  //  Todo.
  String averageMolecularFormula;

  //  Extensions for averageMolecularFormula
  Element elementAverageMolecularFormula;

  //  Todo.
  CodeableConcept repeatUnitAmountType;

  //  Todo.
  List<SubstancePolymer_RepeatUnit> repeatUnit;

SubstancePolymer_Repeat(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.numberOfUnits,
    this.elementNumberOfUnits,
    this.averageMolecularFormula,
    this.elementAverageMolecularFormula,
    this.repeatUnitAmountType,
    this.repeatUnit
    });

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_RepeatUnit {

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

  //  Todo.
  CodeableConcept orientationOfPolymerisation;

  //  Todo.
  String repeatUnit;

  //  Extensions for repeatUnit
  Element elementRepeatUnit;

  //  Todo.
  SubstanceAmount amount;

  //  Todo.
  List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;

  //  Todo.
  List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;

SubstancePolymer_RepeatUnit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.orientationOfPolymerisation,
    this.repeatUnit,
    this.elementRepeatUnit,
    this.amount,
    this.degreeOfPolymerisation,
    this.structuralRepresentation
    });

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatUnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

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

  //  Todo.
  CodeableConcept degree;

  //  Todo.
  SubstanceAmount amount;

SubstancePolymer_DegreeOfPolymerisation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.degree,
    this.amount
    });

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StructuralRepresentation {

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

  //  Todo.
  CodeableConcept type;

  //  Todo.
  String representation;

  //  Extensions for representation
  Element elementRepresentation;

  //  Todo.
  Attachment attachment;

SubstancePolymer_StructuralRepresentation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.elementRepresentation,
    this.attachment
    });

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StructuralRepresentationToJson(this);
}
