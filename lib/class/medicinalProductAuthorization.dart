import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProductAuthorization.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization {


// This is a MedicinalProductAuthorization resource
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

// Business identifier for the marketing authorization, as assigned by a regulator.
List<Identifier> identifier;

// The medicinal product that is being authorized.
Reference subject;

// The country in which the marketing authorization has been granted.
List<CodeableConcept> country;

// Jurisdiction within a country.
List<CodeableConcept> jurisdiction;

// The status of the marketing authorization.
CodeableConcept status;

// The date at which the given status has become applicable.
DateTime statusDate;

// Extensions for statusDate
Element _statusDate;

// The date when a suspended the marketing or the marketing authorization of the
//  product is anticipated to be restored.
DateTime restoreDate;

// Extensions for restoreDate
Element _restoreDate;

// The beginning of the time period in which the marketing authorization is in the
//  specific status shall be specified A complete date consisting of day, month and
//  year shall be specified using the ISO 8601 date format.
Period validityPeriod;

// A period of time after authorization before generic product applicatiosn can be
//  submitted.
Period dataExclusivityPeriod;

// The date when the first authorization was granted by a Medicines Regulatory
//  Agency.
DateTime dateOfFirstAuthorization;

// Extensions for dateOfFirstAuthorization
Element _dateOfFirstAuthorization;

// Date of first marketing authorization for a company's new medicinal product in
//  any country in the World.
DateTime internationalBirthDate;

// Extensions for internationalBirthDate
Element _internationalBirthDate;

// The legal framework against which this authorization is granted.
CodeableConcept legalBasis;

// Authorization in areas within a country.
List<MedicinalProductAuthorization_JurisdictionalAuthorization> jurisdictionalAuthorization;

// Marketing Authorization Holder.
Reference holder;

// Medicines Regulatory Agency.
Reference regulator;

// The regulatory procedure for granting or amending a marketing authorization.
MedicinalProductAuthorization_Procedure procedure;

MedicinalProductAuthorization(
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
    this.subject,
    this.country,
    this.jurisdiction,
    this.status,
    this.statusDate,
    this._statusDate,
    this.restoreDate,
    this._restoreDate,
    this.validityPeriod,
    this.dataExclusivityPeriod,
    this.dateOfFirstAuthorization,
    this._dateOfFirstAuthorization,
    this.internationalBirthDate,
    this._internationalBirthDate,
    this.legalBasis,
    this.jurisdictionalAuthorization,
    this.holder,
    this.regulator,
    this.procedure
    });

  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_JurisdictionalAuthorization {


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

// The assigned number for the marketing authorization.
List<Identifier> identifier;

// Country of authorization.
CodeableConcept country;

// Jurisdiction within a country.
List<CodeableConcept> jurisdiction;

// The legal status of supply in a jurisdiction or region.
CodeableConcept legalStatusOfSupply;

// The start and expected end date of the authorization.
Period validityPeriod;

MedicinalProductAuthorization_JurisdictionalAuthorization(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.country,
    this.jurisdiction,
    this.legalStatusOfSupply,
    this.validityPeriod
    });

  factory MedicinalProductAuthorization_JurisdictionalAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductAuthorization_Procedure {


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

// Identifier for this procedure.
Identifier identifier;

// Type of procedure.
CodeableConcept type;

// Date of procedure.
Period datePeriod;

// Date of procedure.
String dateDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for dateDateTime
Element _dateDateTime;

// Applcations submitted to obtain a marketing authorization.
List<MedicinalProductAuthorization_Procedure> application;

MedicinalProductAuthorization_Procedure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.datePeriod,
    this.dateDateTime,
    this._dateDateTime,
    this.application
    });

  factory MedicinalProductAuthorization_Procedure.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorization_ProcedureToJson(this);
}

