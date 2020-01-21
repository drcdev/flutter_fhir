import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'practitioner.g.dart';

@JsonSerializable(explicitToJson: true)
class Practitioner {
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

  // An identifier for the person as this agent
  List<Identifier> identifier;

  // Whether this practitioner's record is in active use
  bool active;

  // The name(s) associated with the practitioner
  List<HumanName> name;

  // A contact detail for the practitioner (that apply to all roles)
  List<ContactPoint> telecom;

  // Address(es) of the practitioner that are not role specific
  // (typically home address)
  List<Address> address;

  // male | female | other | unknown
  String gender;

  // The date  on which the practitioner was born
  String birthDate;

  // Image of the person
  List<Attachment> photo;

  // Certification, licenses, or training pertaining to the provision of care
  List<Qualification> qualification;

  // A language the practitioner can use in patient communication
  List<CodeableConcept> communication;

  Practitioner(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.identifier,
        this.active,
        this.name,
        this.telecom,
        this.address,
        this.gender,
        this.birthDate,
        this.photo,
        this.qualification,
        this.communication});
  
  factory Practitioner.fromJson(Map<String, dynamic> json) => _$PractitionerFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Qualification {

  // An identifier for this qualification for the practitioner
  List<Identifier> identifier;

  // R!  Coded representation of the qualification
  CodeableConcept code;

  // Period during which the qualification is valid
  Period period;

  // Organization that regulates and issues the qualification
  // Reference(Organization)
  Reference issuer;

  Qualification({this.identifier, this.code, this.period, this.issuer});

  factory Qualification.fromJson(Map<String, dynamic> json) => _$QualificationFromJson(json);
  Map<String, dynamic> toJson() => _$QualificationToJson(this);
}