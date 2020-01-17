import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/endpoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  String status;
  Coding operationalStatus;
  String name;
  List<String> alias;
  String description;
  String mode;
  List<CodeableConcept> type;
  List<ContactPoint> telecom;
  String address;
  String physicalType;
  Position position;
  Reference managingOrganization;
  Reference partOf;
  List<HoursOfOperation> hoursOfOperation;
  String availabilityExceptions;
  List<Endpoint> endpoint;

  Location(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
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
class HoursOfOperation {
  List<String> daysOfWeek;
  bool allDay;
  DateTime openingTime;
  DateTime closingTime;

  HoursOfOperation(
      {this.daysOfWeek, this.allDay, this.openingTime, this.closingTime});

  factory HoursOfOperation.fromJson(Map<String, dynamic> json) =>
      _$HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() => _$HoursOfOperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Position {
  int longitude;
  int latitude;
  int altitude;

  Position({this.longitude, this.latitude, this.altitude});

  factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);
  Map<String, dynamic> toJson() => _$PositionToJson(this);
}