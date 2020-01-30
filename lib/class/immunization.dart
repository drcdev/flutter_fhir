import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'immunization.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {

//  This is a Immunization resource
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

//  A unique identifier assigned to this immunization record.
List<Identifier> identifier;

//  Indicates the current status of the immunization event.
String status;

//  Extensions for status
Element element_status;

//  Indicates the reason the immunization event was not performed.
CodeableConcept statusReason;

//  Vaccine that was administered or was to be administered.
CodeableConcept vaccineCode;

//  The patient who either received or did not receive the immunization.
Reference patient;

//  The visit or admission or other contact between patient and health
// care provider the immunization was performed as part of.
Reference encounter;

//  Date vaccine administered or was to be administered.
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  Extensions for occurrenceDateTime
Element element_occurrenceDateTime;

//  Date vaccine administered or was to be administered.
String occurrenceString; //  pattern: ^[ \r\n\t\S]+$

//  Extensions for occurrenceString
Element element_occurrenceString;

//  The date the occurrence of the immunization was first captured in the
// record - potentially significantly after the occurrence of the event.
DateTime recorded;

//  Extensions for recorded
Element element_recorded;

//  An indication that the content of the record is based on information
// from the person who administered the vaccine. This reflects the context
// under which the data was originally recorded.
bool primarySource;

//  Extensions for primarySource
Element element_primarySource;

//  The source of the data when the report of the immunization event is
// not based on information from the person who administered the vaccine.
CodeableConcept reportOrigin;

//  The service delivery location where the vaccine administration
// occurred.
Reference location;

//  Name of vaccine manufacturer.
Reference manufacturer;

//  Lot number of the  vaccine product.
String lotNumber;

//  Extensions for lotNumber
Element element_lotNumber;

//  Date vaccine batch expires.
String expirationDate;

//  Extensions for expirationDate
Element element_expirationDate;

//  Body site where vaccine was administered.
CodeableConcept site;

//  The path by which the vaccine product is taken into the body.
CodeableConcept route;

//  The quantity of vaccine product that was administered.
Quantity doseQuantity;

//  Indicates who performed the immunization event.
List<Immunization_Performer> performer;

//  Extra information about the immunization that is not conveyed by the
// other attributes.
List<Annotation> note;

//  Reasons why the vaccine was administered.
List<CodeableConcept> reasonCode;

//  Condition, Observation or DiagnosticReport that supports why the
// immunization was administered.
List<Reference> reasonReference;

//  Indication if a dose is considered to be subpotent. By default, a dose
// should be considered to be potent.
bool isSubpotent;

//  Extensions for isSubpotent
Element element_isSubpotent;

//  Reason why a dose is considered to be subpotent.
List<CodeableConcept> subpotentReason;

//  Educational material presented to the patient (or guardian) at the
// time of vaccine administration.
List<Immunization_Education> education;

//  Indicates a patient's eligibility for a funding program.
List<CodeableConcept> programEligibility;

//  Indicates the source of the vaccine actually administered. This may be
// different than the patient eligibility (e.g. the patient may be
// eligible for a publically purchased vaccine but due to inventory
// issues, vaccine purchased with private funds was actually
// administered).
CodeableConcept fundingSource;

//  Categorical data indicating that an adverse event is associated in
// time to an immunization.
List<Immunization_Reaction> reaction;

//  The protocol (set of recommendations) being followed by the provider
// who administered the dose.
List<Immunization_ProtocolApplied> protocolApplied;

Immunization(
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
    this.status,
    this.element_status,
    this.statusReason,
    this.vaccineCode,
    this.patient,
    this.encounter,
    this.occurrenceDateTime,
    this.element_occurrenceDateTime,
    this.occurrenceString,
    this.element_occurrenceString,
    this.recorded,
    this.element_recorded,
    this.primarySource,
    this.element_primarySource,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.element_lotNumber,
    this.expirationDate,
    this.element_expirationDate,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
    this.element_isSubpotent,
    this.subpotentReason,
    this.education,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied
    });

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {

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

//  Describes the type of performance (e.g. ordering provider,
// administering provider, etc.).
CodeableConcept function;

//  The practitioner or organization who performed the action.
Reference actor;

Immunization_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    this.actor
    });

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) => _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Education {

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

//  Identifier of the material presented to the patient.
String documentType;

//  Extensions for documentType
Element element_documentType;

//  Reference pointer to the educational material given to the patient if
// the information was on line.
String reference;

//  Extensions for reference
Element element_reference;

//  Date the educational material was published.
DateTime publicationDate;

//  Extensions for publicationDate
Element element_publicationDate;

//  Date the educational material was given to the patient.
DateTime presentationDate;

//  Extensions for presentationDate
Element element_presentationDate;

Immunization_Education(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.documentType,
    this.element_documentType,
    this.reference,
    this.element_reference,
    this.publicationDate,
    this.element_publicationDate,
    this.presentationDate,
    this.element_presentationDate
    });

  factory Immunization_Education.fromJson(Map<String, dynamic> json) => _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_EducationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Reaction {

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

//  Date of reaction to the immunization.
DateTime date;

//  Extensions for date
Element element_date;

//  Details of the reaction.
Reference detail;

//  Self-reported indicator.
bool reported;

//  Extensions for reported
Element element_reported;

Immunization_Reaction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.element_date,
    this.detail,
    this.reported,
    this.element_reported
    });

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) => _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ReactionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_ProtocolApplied {

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

//  One possible path to achieve presumed immunity against a disease -
// within the context of an authority.
String series;

//  Extensions for series
Element element_series;

//  Indicates the authority who published the protocol (e.g. ACIP) that is
// being followed.
Reference authority;

//  The vaccine preventable disease the dose is being administered
// against.
List<CodeableConcept> targetDisease;

//  Nominal position in a series.
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

//  Extensions for doseNumberPositiveInt
Element element_doseNumberPositiveInt;

//  Nominal position in a series.
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

//  Extensions for doseNumberString
Element element_doseNumberString;

//  The recommended number of doses to achieve immunity.
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

//  Extensions for seriesDosesPositiveInt
Element element_seriesDosesPositiveInt;

//  The recommended number of doses to achieve immunity.
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

//  Extensions for seriesDosesString
Element element_seriesDosesString;

Immunization_ProtocolApplied(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.series,
    this.element_series,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.element_doseNumberPositiveInt,
    this.doseNumberString,
    this.element_doseNumberString,
    this.seriesDosesPositiveInt,
    this.element_seriesDosesPositiveInt,
    this.seriesDosesString,
    this.element_seriesDosesString
    });

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) => _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ProtocolAppliedToJson(this);
}

