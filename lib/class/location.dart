import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/endpoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // Unique code or number identifying the location to its users
  List<Identifier> identifier;

  // active | suspended | inactive
  String status;

  // The operational status of the location (typically only for a bed/room)
  Coding operationalStatus;

  // Name of the location as used by humans
  String name;

  // A list of alternate names that the location is known as,
  // or was known as, in the past
  List<String> alias;

  // Additional details about the location that could be displayed as further
  // information to identify the location beyond its name
  String description;

  // instance | kind
  String mode;

  // Type of function performed
  List<CodeableConcept> type;

  // Contact details of the location
  List<ContactPoint> telecom;

  // Physical location
  String address;

  // Physical form of the location
  String physicalType;

  // The absolute geographic location
  Position position;

  // Organization responsible for provisioning and upkeep
  // Reference(Organization)
  Reference managingOrganization;

  // Another Location this one is physically a part of
  // Reference(Location)
  Reference partOf;

  // What days/times during a week is this location usually open
  List<HoursOfOperation> hoursOfOperation;

  // Description of availability exceptions
  String availabilityExceptions;

  // Technical endpoints providing access to services operated for the location
  // Reference(Endpoint)
  List<Reference> endpoint;

  Location(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.status,
        this.operationalStatus,
        this.name,
        this.alias,
        this.description,
        this.mode,
        this.type,
        this.telecom,
        this.address,
        this.physicalType,
        this.position,
        this.managingOrganization,
        this.partOf,
        this.hoursOfOperation,
        this.availabilityExceptions,
        this.endpoint});

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Position {

  // R!  Longitude with WGS84 datum
  double longitude;

  // R!  Latitude with WGS84 datum
  double latitude;

  // Altitude with WGS84 datum
  double altitude;

  Position({this.longitude, this.latitude, this.altitude});

  factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);
  Map<String, dynamic> toJson() => _$PositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HoursOfOperation {

  // mon | tue | wed | thu | fri | sat | sun
  List<String> daysOfWeek;

  // The Location is open all day
  bool allDay;

  // Time that the Location opens
  DateTime openingTime;

  // Time that the Location closes
  DateTime closingTime;

  HoursOfOperation(
      {this.daysOfWeek, this.allDay, this.openingTime, this.closingTime});

  factory HoursOfOperation.fromJson(Map<String, dynamic> json) =>
      _$HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() => _$HoursOfOperationToJson(this);
}

