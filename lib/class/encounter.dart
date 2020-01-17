import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/episodeOfCare.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/serviceRequest.dart';
import 'package:json_annotation/json_annotation.dart';
part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  String status;
  List<_StatusHistory> statusHistory;
  Coding classs;
  List<ClassHistory> classHistory;
  List<CodeableConcept> type;
  CodeableConcept serviceType;
  CodeableConcept priority;
  Reference subject;
  List<EpisodeOfCare> episodeOfCare;
  List<ServiceRequest> basedOn;
  List<_Participant> participant;
  List<Reference> appointment;
  Period period;
  int length; //ToDo: decide format for time
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<_Diagnosis> diagnosis;
  List<Reference> account;
  Hospitalization hospitalization;
  List<_Location> location;
  Reference serviceProvider;
  Reference partOf;

  Encounter(
      {this.resourceType,
        this.identifier,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.status,
        this.statusHistory,
        this.classs,
        this.classHistory,
        this.type,
        this.serviceType,
        this.priority,
        this.subject,
        this.episodeOfCare,
        this.basedOn,
        this.participant,
        this.appointment,
        this.period,
        this.length,
        this.reasonCode,
        this.reasonReference,
        this.diagnosis,
        this.account,
        this.hospitalization,
        this.location,
        this.serviceProvider,
        this.partOf});

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Participant {
  List<CodeableConcept> type;
  Period period;
  Reference individual;

  _Participant({this.type, this.period, this.individual});

  factory _Participant.fromJson(Map<String, dynamic> json) => _$_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$_ParticipantToJson(this);
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
class ClassHistory {
  Coding classs;
  Period period;

  ClassHistory({this.classs, this.period});

  factory ClassHistory.fromJson(Map<String, dynamic> json) => _$ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Diagnosis {
  Reference condition;
  CodeableConcept use;
  int rank;

  _Diagnosis({this.condition, this.use, this.rank});

  factory _Diagnosis.fromJson(Map<String, dynamic> json) => _$_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Hospitalization {
  Identifier preAdmissionIdentifier;
  Reference origin;
  CodeableConcept admitSource;
  CodeableConcept reAdmission;
  List<CodeableConcept> dietPreference;
  List<CodeableConcept> specialCourtesy;
  List<CodeableConcept> specialArrangement;
  Reference destination;
  CodeableConcept dischargeDisposition;

  Hospitalization(
      {this.preAdmissionIdentifier,
        this.origin,
        this.admitSource,
        this.reAdmission,
        this.dietPreference,
        this.specialCourtesy,
        this.specialArrangement,
        this.destination,
        this.dischargeDisposition});

  factory Hospitalization.fromJson(Map<String, dynamic> json) => _$HospitalizationFromJson(json);
  Map<String, dynamic> toJson() => _$HospitalizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Location {
  Reference location;
  String status;
  CodeableConcept physicalType;
  Period period;

  _Location({this.location, this.status, this.physicalType, this.period});

  factory _Location.fromJson(Map<String, dynamic> json) => _$_LocationFromJson(json);
  Map<String, dynamic> toJson() => _$_LocationToJson(this);
}