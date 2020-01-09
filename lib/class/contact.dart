import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contact.g.dart';

@JsonSerializable(explicitToJson: true)
class Contact {
  List<CodeableConcept> relationship;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;
  String gender;
  Reference organization;
  Period period;

  Contact(
      {this.relationship,
        this.name,
        this.telecom,
        this.address,
        this.gender,
        this.organization,
        this.period});

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
  Map<String, dynamic> toJson() => _$ContactToJson(this);
}
