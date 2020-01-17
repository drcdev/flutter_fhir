import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
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
  Reference coverage;
  int priority;

  Coverage({this.coverage, this.priority});

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Guarantor {
  Reference party;
  bool onHold;
  Period period;

  Guarantor({this.party, this.onHold, this.period});

  factory Guarantor.fromJson(Map<String, dynamic> json) => _$GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$GuarantorToJson(this);
}