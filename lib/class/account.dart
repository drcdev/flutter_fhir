import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {
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

  // Account number
  List<Identifier> identifier;

  // R!  active | inactive | entered-in-error | on-hold | unknown
  String status;

  // E.g. patient, expense, depreciation
  CodeableConcept type;

  // Human-readable label
  String name;

  // The entity that caused the expenses
  // Reference(Patient|Device|Practitioner|PractitionerRole|
  //   Location|HealthcareService|Organization) }],
  List<Reference> subject;

  // Transaction window
  Period servicePeriod;

  // The party(s) that are responsible for covering the payment of this account,
  // and what order should they be applied to the account
  List<Coverage> coverage;

  // Entity managing the Account
  // Reference(Organization)
  Reference owner;

  // Explanation of purpose/use
  String description;

  // The parties ultimately responsible for balancing the Account
  List<Guarantor> guarantor;

  // Reference to a parent Account
  Reference partOf;

  Account(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
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

@JsonSerializable(explicitToJson: true)
class Coverage {

  // R!  The party(s), such as insurances, that may contribute to the payment of this account
  // Reference(Patient|RelatedPerson|Organization)
  Reference coverage;

  // The priority of the coverage in the context of this account
  int priority;

  Coverage({this.coverage, this.priority});

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Guarantor {

  // R!  Responsible entity
  Reference party;

  // Credit or other hold applied
  bool onHold;

  // Guarantee account during
  Period period;

  Guarantor({this.party, this.onHold, this.period});

  factory Guarantor.fromJson(Map<String, dynamic> json) => _$GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$GuarantorToJson(this);
}