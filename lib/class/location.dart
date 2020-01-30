import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {

//  This is a Location resource
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

//  Unique code or number identifying the location to its users.
List<Identifier> identifier;

//  The status property covers the general availability of the resource,
// not the current value which may be covered by the operationStatus, or
// by a schedule/slots if they are configured for the location.
String status; // <code> enum: active/suspended/inactive;

//  Extensions for status
Element element_status;

//  The operational status covers operation values most relevant to beds
// (but can also apply to rooms/units/chairs/etc. such as an isolation
// unit/dialysis chair). This typically covers concepts such as
// contamination, housekeeping, and other activities like maintenance.
Coding operationalStatus;

//  Name of the location as used by humans. Does not need to be unique.
String name;

//  Extensions for name
Element element_name;

//  A list of alternate names that the location is known as, or was known
// as, in the past.
List<String> alias;

//  Extensions for alias
List<Element> element_alias;

//  Description of the Location, which helps in finding or referencing the
// place.
String description;

//  Extensions for description
Element element_description;

//  Indicates whether a resource instance represents a specific location
// or a class of locations.
String mode; // <code> enum: instance/kind;

//  Extensions for mode
Element element_mode;

//  Indicates the type of function performed at the location.
List<CodeableConcept> type;

//  The contact details of communication devices available at the
// location. This can include phone numbers, fax numbers, mobile numbers,
// email addresses and web sites.
List<ContactPoint> telecom;

//  Physical location.
Address address;

//  Physical form of the location, e.g. building, room, vehicle, road.
CodeableConcept physicalType;

//  The absolute geographic location of the Location, expressed using the
// WGS84 datum (This is the same co-ordinate system used in KML).
Location_Position position;

//  The organization responsible for the provisioning and upkeep of the
// location.
Reference managingOrganization;

//  Another Location of which this Location is physically a part of.
Reference partOf;

//  What days/times during a week is this location usually open.
List<Location_HoursOfOperation> hoursOfOperation;

//  A description of when the locations opening ours are different to
// normal, e.g. public holiday availability. Succinctly describing all
// possible exceptions to normal site availability as detailed in the
// opening hours Times.
String availabilityExceptions;

//  Extensions for availabilityExceptions
Element element_availabilityExceptions;

//  Technical endpoints providing access to services operated for the
// location.
List<Reference> endpoint;

Location(
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
    this.operationalStatus,
    this.name,
    this.element_name,
    this.alias,
    this.element_alias,
    this.description,
    this.element_description,
    this.mode,
    this.element_mode,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.element_availabilityExceptions,
    this.endpoint
    });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location_Position {

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

//  Longitude. The value domain and the interpretation are the same as for
// the text of the longitude element in KML (see notes below).
double longitude;

//  Extensions for longitude
Element element_longitude;

//  Latitude. The value domain and the interpretation are the same as for
// the text of the latitude element in KML (see notes below).
double latitude;

//  Extensions for latitude
Element element_latitude;

//  Altitude. The value domain and the interpretation are the same as for
// the text of the altitude element in KML (see notes below).
double altitude;

//  Extensions for altitude
Element element_altitude;

Location_Position(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.longitude,
    this.element_longitude,
    this.latitude,
    this.element_latitude,
    this.altitude,
    this.element_altitude
    });

  factory Location_Position.fromJson(Map<String, dynamic> json) => _$Location_PositionFromJson(json);
  Map<String, dynamic> toJson() => _$Location_PositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location_HoursOfOperation {

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

//  Indicates which days of the week are available between the start and
// end Times.
List<String> daysOfWeek;

//  Extensions for daysOfWeek
List<Element> element_daysOfWeek;

//  The Location is open all day.
bool allDay;

//  Extensions for allDay
Element element_allDay;

//  Time that the Location opens.
String openingTime;

//  Extensions for openingTime
Element element_openingTime;

//  Time that the Location closes.
String closingTime;

//  Extensions for closingTime
Element element_closingTime;

Location_HoursOfOperation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.daysOfWeek,
    this.element_daysOfWeek,
    this.allDay,
    this.element_allDay,
    this.openingTime,
    this.element_openingTime,
    this.closingTime,
    this.element_closingTime
    });

  factory Location_HoursOfOperation.fromJson(Map<String, dynamic> json) => _$Location_HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() => _$Location_HoursOfOperationToJson(this);
}

