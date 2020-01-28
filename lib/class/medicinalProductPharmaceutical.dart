import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProductPharmaceutical.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical {


// This is a MedicinalProductPharmaceutical resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// An identifier for the pharmaceutical medicinal product.
List<Identifier> identifier;

// The administrable dose form, after necessary reconstitution.
CodeableConcept administrableDoseForm;

// Todo.
CodeableConcept unitOfPresentation;

// Ingredient.
List<Reference> ingredient;

// Accompanying device.
List<Reference> device;

// Characteristics e.g. a products onset of action.
List<MedicinalProductPharmaceutical_Characteristics> characteristics;

// The path by which the pharmaceutical product is taken into or makes contact with
//  the body.
List<MedicinalProductPharmaceutical_RouteOfAdministration> routeOfAdministration;

MedicinalProductPharmaceutical(
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
    this.identifier,
    this.administrableDoseForm,
    this.unitOfPresentation,
    this.ingredient,
    this.device,
    this.characteristics,
    this.routeOfAdministration
    });

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceuticalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_Characteristics {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A coded characteristic.
CodeableConcept code;

// The status of characteristic e.g. assigned or pending.
CodeableConcept status;

MedicinalProductPharmaceutical_Characteristics(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.status
    });

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_RouteOfAdministration {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Coded expression for the route.
CodeableConcept code;

// The first dose (dose quantity) administered in humans can be specified, for a
//  product under investigation, using a numerical value and its unit of measurement.
Quantity firstDose;

// The maximum single dose that can be administered as per the protocol of a
//  clinical trial can be specified using a numerical value and its unit of measurement.
Quantity maxSingleDose;

// The maximum dose per day (maximum dose quantity to be administered in any one
//  24-h period) that can be administered as per the protocol referenced in the
//  clinical trial authorisation.
Quantity maxDosePerDay;

// The maximum dose per treatment period that can be administered as per the
//  protocol referenced in the clinical trial authorisation.
Ratio maxDosePerTreatmentPeriod;

// The maximum treatment period during which an Investigational Medicinal Product
//  can be administered as per the protocol referenced in the clinical trial
//  authorisation.
Duration maxTreatmentPeriod;

// A species for which this route applies.
List<MedicinalProductPharmaceutical_TargetSpecies> targetSpecies;

MedicinalProductPharmaceutical_RouteOfAdministration(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies
    });

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Coded expression for the species.
CodeableConcept code;

// A species specific time during which consumption of animal product is not
//  appropriate.
List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

MedicinalProductPharmaceutical_TargetSpecies(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.withdrawalPeriod
    });

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_WithdrawalPeriod {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Coded expression for the type of tissue for which the withdrawal period applues,
//  e.g. meat, milk.
CodeableConcept tissue;

// A value for the time.
Quantity value;

// Extra information about the withdrawal period.
String supportingInformation;

// Extensions for supportingInformation
Element _supportingInformation;

MedicinalProductPharmaceutical_WithdrawalPeriod(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.tissue,
    this.value,
    this.supportingInformation,
    this._supportingInformation
    });

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
}

