import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';

part 'episodeOfCare.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare {
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

  // Business Identifier(s) relevant for this EpisodeOfCare
  List<Identifier> identifier;

  // R!  planned | waitlist | active | onhold | finished | cancelled | entered-in-error
  String status;

  // Past list of status codes (the current status may be included to cover the start date of the status)
  List<StatusHistory> statusHistory;

  // Type/class  - e.g. specialist referral, disease management
  List<CodeableConcept> type;

  // The list of diagnosis relevant to this episode of care
  List<Diagnosis> diagnosis;

  // R!  The patient who is the focus of this episode of care
  Reference patient;

  // Organization that assumes care
  Reference managingOrganization;

  // R!  Duration the EpisodeOfCare was in the specified status
  Period period;

  // Originating Referral Request(s)
  List<Reference> referralRequest;

  // Care manager/care coordinator for the patient
  Reference careManager;

  // Other practitioners facilitating this episode of care
  List<Reference> team;

  // The set of accounts that may be used for billing for this EpisodeOfCare
  List<Reference> account;

  EpisodeOfCare(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.status,
        this.statusHistory,
        this.type,
        this.diagnosis,
        this.patient,
        this.managingOrganization,
        this.period,
        this.referralRequest,
        this.careManager,
        this.team,
        this.account});

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) => _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StatusHistory {
  // R!  planned | waitlist | active | onhold | finished | cancelled | entered-in-error
  String status;

  // R!  Duration the EpisodeOfCare was in the specified status
  Period period;

  StatusHistory({this.status, this.period});

  factory StatusHistory.fromJson(Map<String, dynamic> json) => _$StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Diagnosis {
  // R!  Conditions/problems/diagnoses this episode of care is for
  Reference condition;

  // Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge â€¦)
  CodeableConcept role;

  // Ranking of the diagnosis (for each role type)
  int rank;

  Diagnosis({this.condition, this.role, this.rank});

  factory Diagnosis.fromJson(Map<String, dynamic> json) => _$DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosisToJson(this);
}