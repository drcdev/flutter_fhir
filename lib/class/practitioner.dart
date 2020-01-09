import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/communication.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/qualification.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:json_annotation/json_annotation.dart';
part 'practitioner.g.dart';

@JsonSerializable(explicitToJson: true)
class Practitioner {
  String resourceType;
  List<Identifier> identifier;
  bool active;
  List<HumanName> name;
  List<ContactPoint> telecom;
  List<Address> address;
  String gender;
  String birthDate;
  List<Attachment> photo;
  List<Qualification> qualification;
  List<Communication> communication;

  Practitioner(
      {this.resourceType,
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