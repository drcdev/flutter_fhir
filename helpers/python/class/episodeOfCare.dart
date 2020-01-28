part 'episodeOfCare.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare {

EpisodeOfCare resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
Element _status;
List<EpisodeOfCare_StatusHistory> statusHistory;
List<CodeableConcept> type;
List<EpisodeOfCare_Diagnosis> diagnosis;
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
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.status,
      this._status,
      this.statusHistory,
      this.type,
      this.diagnosis,
      this.patient,
      this.managingOrganization,
      this.period,
      this.referralRequest,
      this.careManager,
      this.team,
      this.account,
      });

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) => _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() _$EpisodeOfCareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_StatusHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;
Element _status;
Period period;

EpisodeOfCare_StatusHistory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.status,
      this._status,
      this.period,
      });

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() _$EpisodeOfCare_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference condition;
CodeableConcept role;
int rank;
Element _rank;

EpisodeOfCare_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.condition,
      this.role,
      this.rank,
      this._rank,
      });

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$EpisodeOfCare_DiagnosisToJson(this);
}

