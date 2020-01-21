import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/endpoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'organization.g.dart';

@JsonSerializable(explicitToJson: true)
class Organization{
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

  // C? Identifies this organization  across multiple systems
  List<Identifier> identifier;

  // Whether the organization's record is still in active use
  bool active;

  // Kind of organization
  List<CodeableConcept> type;

  // C? Name used for the organization
  String name;

  // A list of alternate names that the organization is known as, or was known as in the past
  List<String> alias;

  // C? A contact detail for the organization
  List<ContactPoint> telecom;

  // C? An address for the organization
  List<Address> address;

  // The organization of which this organization forms a part
  // Reference(Organization)
  Reference partOf;

  // Contact for the organization for a certain purpose
  List<Contact> contact;

  // Technical endpoints providing access to services operated for the organization
  // Reference(Endpoint)
  List<Endpoint> endpoint;

  Organization(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.active,
        this.type,
        this.name,
        this.alias,
        this.telecom,
        this.address,
        this.partOf,
        this.contact,
        this.endpoint});

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contact {

  // The type of contact
  CodeableConcept purpose;

  // A name associated with the contact
  HumanName name;

  // Contact details (telephone, email, etc.)  for a contact
  List <ContactPoint> telecom;

  // Visiting or postal addresses for the contact
  Address address;

  Contact({this.purpose, this.name, this.telecom, this.address});

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
  Map<String, dynamic> toJson() => _$ContactToJson(this);

}