import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'endpoint.g.dart';

@JsonSerializable(explicitToJson: true)
class Endpoint {
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

  // Identifies this endpoint across multiple systems
  List<Identifier> identifier;

  // R!  active | suspended | error | off | entered-in-error | test
  String status;

  // R!  Protocol/Profile/Standard to be used with this endpoint connection
  Coding connectionType;

  // A name that this endpoint can be identified by
  String name;

  // Organization that manages this endpoint (might not be the organization that exposes the endpoint)
  Reference managingOrganization;

  // Contact details for source (e.g. troubleshooting)
  List<ContactPoint> contact;

  // Interval the endpoint is expected to be operational
  Period period;

  // R!  The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)
  List<CodeableConcept> payloadType;

  // Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType defined this)
  List<String> payloadMimeType;

  // R!  The technical base address for connecting to this endpoint
  String address;

  // Usage depends on the channel type
  List<String> header;

  Endpoint(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.status,
        this.connectionType,
        this.name,
        this.managingOrganization,
        this.contact,
        this.period,
        this.payloadType,
        this.payloadMimeType,
        this.address,
        this.header});

  factory Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$EndpointToJson(this);
}