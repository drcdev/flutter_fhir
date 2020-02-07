import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'substance.g.dart';

@JsonSerializable(explicitToJson: true)
class Substance {

  //  This is a Substance resource
  final String resourceType= 'Substance';

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

  //  Unique identifier for the substance.
  List<Identifier> identifier;

  //  A code to indicate if the substance is actively used.
  String status; // <code> enum: active/inactive/entered-in-error;

  //  Extensions for status
  Element elementStatus;

  //  A code that classifies the general type of substance.  This is used 
  // for searching, sorting and display purposes.
  List<CodeableConcept> category;

  //  A code (or set of codes) that identify this substance.
  CodeableConcept code;

  //  A description of the substance - its appearance, handling
  // requirements, and other usage notes.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Substance may be used to describe a kind of substance, or a specific
  // package/container of the substance: an instance.
  List<Substance_Instance> instance;

  //  A substance can be composed of other substances.
  List<Substance_Ingredient> ingredient;

Substance(
  this.code,
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
    this.status,
    this.elementStatus,
    this.category,
    this.description,
    this.elementDescription,
    this.instance,
    this.ingredient
    });

  factory Substance.fromJson(Map<String, dynamic> json) => _$SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Instance {

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

  //  Identifier associated with the package/container (usually a label
  // affixed directly).
  Identifier identifier;

  //  When the substance is no longer valid to use. For some substances, a
  // single arbitrary date is used for expiry.
  DateTime expiry;

  //  Extensions for expiry
  Element elementExpiry;

  //  The amount of the substance.
  Quantity quantity;

Substance_Instance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.expiry,
    this.elementExpiry,
    this.quantity
    });

  factory Substance_Instance.fromJson(Map<String, dynamic> json) => _$Substance_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Ingredient {

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

  //  The amount of the ingredient in the substance - a concentration ratio.
  Ratio quantity;

  //  Another substance that is a component of this substance.
  CodeableConcept substanceCodeableConcept;

  //  Another substance that is a component of this substance.
  Reference substanceReference;

Substance_Ingredient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.substanceCodeableConcept,
    this.substanceReference
    });

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) => _$Substance_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_IngredientToJson(this);
}

