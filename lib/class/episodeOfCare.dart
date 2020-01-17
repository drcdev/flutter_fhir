import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'episodeOfCare.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  String status;
  List<_StatusHistory> statusHistory;
  List<CodeableConcept> type;
  List<_Diagnosis> diagnosis;
  Reference patient;
  Reference managingOrganization;
  Period period;
  List<Reference> referralRequest;
  Reference careManager;
  List<Reference> team;
  List<Reference> account;

  EpisodeOfCare(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
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
class _StatusHistory {
  String status;
  Period period;

  _StatusHistory({this.status, this.period});

  factory _StatusHistory.fromJson(Map<String, dynamic> json) => _$_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Diagnosis {
  Reference condition;
  CodeableConcept role;
  int rank;

  _Diagnosis({this.condition, this.role, this.rank});

  factory _Diagnosis.fromJson(Map<String, dynamic> json) => _$_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$_DiagnosisToJson(this);
}