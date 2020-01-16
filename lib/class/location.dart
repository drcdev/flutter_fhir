import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/endpoint.dart';
import 'package:flutter_fhir/class/hoursOfOperation.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/position.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  String resourceType;
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