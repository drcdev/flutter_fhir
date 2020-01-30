import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProductIngredient.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient {

//  This is a MedicinalProductIngredient resource
String resourceType;

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
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

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
List<ResourceList> contained;

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

//  The identifier(s) of this Ingredient that are assigned by business
// processes and/or used to refer to it when a direct URL reference to the
// resource itself is not appropriate.
Identifier identifier;

//  Ingredient role e.g. Active ingredient, excipient.
CodeableConcept role;

//  If the ingredient is a known or suspected allergen.
bool allergenicIndicator;

//  Extensions for allergenicIndicator
Element element_allergenicIndicator;

//  Manufacturer of this Ingredient.
List<Reference> manufacturer;

//  A specified substance that comprises this ingredient.
List<MedicinalProductIngredient_SpecifiedSubstance> specifiedSubstance;

//  The ingredient substance.
MedicinalProductIngredient_Substance substance;

MedicinalProductIngredient(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.role,
    this.allergenicIndicator,
    this.element_allergenicIndicator,
    this.manufacturer,
    this.specifiedSubstance,
    this.substance
    });

  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_SpecifiedSubstance {

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

//  The specified substance.
CodeableConcept code;

//  The group of specified substance, e.g. group 1 to 4.
CodeableConcept group;

//  Confidentiality level of the specified substance as the ingredient.
CodeableConcept confidentiality;

//  Quantity of the substance or specified substance present in the
// manufactured item or pharmaceutical product.
List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_SpecifiedSubstance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.group,
    this.confidentiality,
    this.strength
    });

  factory MedicinalProductIngredient_SpecifiedSubstance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_SpecifiedSubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Strength {

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

//  The quantity of substance in the unit of presentation, or in the
// volume (or mass) of the single pharmaceutical product or manufactured
// item.
Ratio presentation;

//  A lower limit for the quantity of substance in the unit of
// presentation. For use when there is a range of strengths, this is the
// lower limit, with the presentation attribute becoming the upper limit.
Ratio presentationLowLimit;

//  The strength per unitary volume (or mass).
Ratio concentration;

//  A lower limit for the strength per unitary volume (or mass), for when
// there is a range. The concentration attribute then becomes the upper
// limit.
Ratio concentrationLowLimit;

//  For when strength is measured at a particular point or distance.
String measurementPoint;

//  Extensions for measurementPoint
Element element_measurementPoint;

//  The country or countries for which the strength range applies.
List<CodeableConcept> country;

//  Strength expressed in terms of a reference substance.
List<MedicinalProductIngredient_ReferenceStrength> referenceStrength;

MedicinalProductIngredient_Strength(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.presentation,
    this.presentationLowLimit,
    this.concentration,
    this.concentrationLowLimit,
    this.measurementPoint,
    this.element_measurementPoint,
    this.country,
    this.referenceStrength
    });

  factory MedicinalProductIngredient_Strength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_StrengthFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_StrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_ReferenceStrength {

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

//  Relevant reference substance.
CodeableConcept substance;

//  Strength expressed in terms of a reference substance.
Ratio strength;

//  Strength expressed in terms of a reference substance.
Ratio strengthLowLimit;

//  For when strength is measured at a particular point or distance.
String measurementPoint;

//  Extensions for measurementPoint
Element element_measurementPoint;

//  The country or countries for which the strength range applies.
List<CodeableConcept> country;

MedicinalProductIngredient_ReferenceStrength(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    this.strength,
    this.strengthLowLimit,
    this.measurementPoint,
    this.element_measurementPoint,
    this.country
    });

  factory MedicinalProductIngredient_ReferenceStrength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_ReferenceStrengthFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_ReferenceStrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Substance {

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

//  The ingredient substance.
CodeableConcept code;

//  Quantity of the substance or specified substance present in the
// manufactured item or pharmaceutical product.
List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_Substance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.strength
    });

  factory MedicinalProductIngredient_Substance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_SubstanceToJson(this);
}

