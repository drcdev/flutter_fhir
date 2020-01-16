import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/diagnosis.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/statusHistory.dart';
import 'package:json_annotation/json_annotation.dart';
part 'episodeOfCare.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare {
  String resourceType;
  List<Identifier> identifier;
  String status;
  List<StatusHistory> statusHistory;
  List<CodeableConcept> type;
  List<Diagnosis> diagnosis;
  Reference patient;
  Reference managingOrganization;
  Period period;
  List<Reference> referralRequest;
  Reference careManager;
  List<Reference> team;
  List<Reference> account;

  EpisodeOfCare(
      {this.resourceType,
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