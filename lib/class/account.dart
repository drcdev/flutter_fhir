import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coverage.dart';
import 'package:flutter_fhir/class/guarantor.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {
  String resourceType;
  List<Identifier> identifier;
  String status;
  CodeableConcept type;
  String name;
  List<Reference> subject;
  Period servicePeriod;
  List<Coverage> coverage;
  Reference owner;
  String description;
  List<Guarantor> guarantor;
  Reference partOf;

  Account(
      {this.resourceType,
        this.identifier,
        this.status,
        this.type,
        this.name,
        this.subject,
        this.servicePeriod,
        this.coverage,
        this.owner,
        this.description,
        this.guarantor,
        this.partOf});

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}