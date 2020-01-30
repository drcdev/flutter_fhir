import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'chargeItem.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItem {

//  This is a ChargeItem resource
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

//  Identifiers assigned to this event performer or other systems.
List<Identifier> identifier;

//  References the (external) source of pricing information, rules of
// application for the code this ChargeItem uses.
List<String> definitionUri;

//  Extensions for definitionUri
List<Element> element_definitionUri;

//  References the source of pricing information, rules of application for
// the code this ChargeItem uses.
List<String> definitionCanonical;

//  The current state of the ChargeItem.
String status; // <code> enum: planned/billable/not-billable/aborted/billed/entered-in-error/unknown;

//  Extensions for status
Element element_status;

//  ChargeItems can be grouped to larger ChargeItems covering the whole
// set.
List<Reference> partOf;

//  A code that identifies the charge, like a billing code.
CodeableConcept code;

//  The individual or set of individuals the action is being or was
// performed on.
Reference subject;

//  The encounter or episode of care that establishes the context for this
// event.
Reference context;

//  Date/time(s) or duration when the charged service was applied.
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  Extensions for occurrenceDateTime
Element element_occurrenceDateTime;

//  Date/time(s) or duration when the charged service was applied.
Period occurrencePeriod;

//  Date/time(s) or duration when the charged service was applied.
Timing occurrenceTiming;

//  Indicates who or what performed or participated in the charged
// service.
List<ChargeItem_Performer> performer;

//  The organization requesting the service.
Reference performingOrganization;

//  The organization performing the service.
Reference requestingOrganization;

//  The financial cost center permits the tracking of charge attribution.
Reference costCenter;

//  Quantity of which the charge item has been serviced.
Quantity quantity;

//  The anatomical location where the related service has been applied.
List<CodeableConcept> bodysite;

//  Factor overriding the factor determined by the rules associated with
// the code.
double factorOverride;

//  Extensions for factorOverride
Element element_factorOverride;

//  Total price of the charge overriding the list price associated with
// the code.
Money priceOverride;

//  If the list price or the rule-based factor associated with the code is
// overridden, this attribute can capture a text to indicate the  reason
// for this action.
String overrideReason;

//  Extensions for overrideReason
Element element_overrideReason;

//  The device, practitioner, etc. who entered the charge item.
Reference enterer;

//  Date the charge item was entered.
DateTime enteredDate;

//  Extensions for enteredDate
Element element_enteredDate;

//  Describes why the event occurred in coded or textual form.
List<CodeableConcept> reason;

//  Indicated the rendered service that caused this charge.
List<Reference> service;

//  Identifies the device, food, drug or other product being charged
// either by type code or reference to an instance.
Reference productReference;

//  Identifies the device, food, drug or other product being charged
// either by type code or reference to an instance.
CodeableConcept productCodeableConcept;

//  Account into which this ChargeItems belongs.
List<Reference> account;

//  Comments made about the event by the performer, subject or other
// participants.
List<Annotation> note;

//  Further information supporting this charge.
List<Reference> supportingInformation;

ChargeItem(
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
    this.definitionUri,
    this.element_definitionUri,
    this.definitionCanonical,
    this.status,
    this.element_status,
    this.partOf,
    this.code,
    this.subject,
    this.context,
    this.occurrenceDateTime,
    this.element_occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.element_factorOverride,
    this.priceOverride,
    this.overrideReason,
    this.element_overrideReason,
    this.enterer,
    this.enteredDate,
    this.element_enteredDate,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation
    });

  factory ChargeItem.fromJson(Map<String, dynamic> json) => _$ChargeItemFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItem_Performer {

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

//  Describes the type of performance or participation(e.g. primary
// surgeon, anesthesiologiest, etc.).
CodeableConcept function;

//  The device, practitioner, etc. who performed or participated in the
// service.
Reference actor;

ChargeItem_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    this.actor
    });

  factory ChargeItem_Performer.fromJson(Map<String, dynamic> json) => _$ChargeItem_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItem_PerformerToJson(this);
}

