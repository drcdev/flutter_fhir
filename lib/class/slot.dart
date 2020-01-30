import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'slot.g.dart';

@JsonSerializable(explicitToJson: true)
class Slot {

//  This is a Slot resource
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

//  External Ids for this item.
List<Identifier> identifier;

//  A broad categorization of the service that is to be performed during
// this appointment.
List<CodeableConcept> serviceCategory;

//  The type of appointments that can be booked into this slot (ideally
// this would be an identifiable service - which is at a location, rather
// than the location itself). If provided then this overrides the value
// provided on the availability resource.
List<CodeableConcept> serviceType;

//  The specialty of a practitioner that would be required to perform the
// service requested in this appointment.
List<CodeableConcept> specialty;

//  The style of appointment or patient that may be booked in the slot
// (not service type).
CodeableConcept appointmentType;

//  The schedule resource that this slot defines an interval of status
// information.
Reference schedule;

//  busy | free | busy-unavailable | busy-tentative | entered-in-error.
String status; // <code> enum: busy/free/busy-unavailable/busy-tentative/entered-in-error;

//  Extensions for status
Element element_status;

//  Date/Time that the slot is to begin.
DateTime start;

//  Extensions for start
Element element_start;

//  Date/Time that the slot is to conclude.
DateTime end;

//  Extensions for end
Element element_end;

//  This slot has already been overbooked, appointments are unlikely to be
// accepted for this time.
bool overbooked;

//  Extensions for overbooked
Element element_overbooked;

//  Comments on the slot to describe any extended information. Such as
// custom constraints on the slot.
String comment;

//  Extensions for comment
Element element_comment;

Slot(
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
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.schedule,
    this.status,
    this.element_status,
    this.start,
    this.element_start,
    this.end,
    this.element_end,
    this.overbooked,
    this.element_overbooked,
    this.comment,
    this.element_comment
    });

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
  Map<String, dynamic> toJson() => _$SlotToJson(this);
}

