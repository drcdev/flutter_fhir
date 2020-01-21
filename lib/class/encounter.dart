import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/episodeOfCare.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/serviceRequest.dart';

part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {
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

  // Identifier(s) by which this encounter is known
  List<Identifier> identifier;

  // R!  planned | arrived | triaged | in-progress | onleave | finished | cancelled +
  String status;

  // List of past encounter statuses
  List<StatusHistory> statusHistory;

  // R!  Classification of patient encounter
  Coding classs;

  // List of past encounter classes
  List<ClassHistory> classHistory;

  // Specific type of encounter
  List<CodeableConcept> type;

  // Specific type of service
  CodeableConcept serviceType;

  // Indicates the urgency of the encounter
  CodeableConcept priority;

  // The patient or group present at the encounter
  Reference subject;

  // Episode(s) of care that this encounter should be recorded against
  List<EpisodeOfCare> episodeOfCare;

  // The ServiceRequest that initiated this encounter
  List<ServiceRequest> basedOn;

  // List of participants involved in the encounter
  List<Participant> participant;

  // The appointment that scheduled this encounter
  List<Reference> appointment;

  // The start and end time of the encounter
  Period period;

  // Quantity of time the encounter lasted (less time absent)
  int length; //ToDo: decide format for duration

  // Coded reason the encounter takes place
  List<CodeableConcept> reasonCode;

  // Reason the encounter takes place (reference)
  // Reference(Condition|Procedure|Observation|ImmunizationRecommendation)
  List<Reference> reasonReference;

  // The list of diagnosis relevant to this encounter
  List<Diagnosis> diagnosis;

  // The set of accounts that may be used for billing for this Encounter
  List<Reference> account;

  // Details about the admission to a healthcare service
  Hospitalization hospitalization;

  // List of locations where the patient has been
  List<Location> location;

  // The organization (facility) responsible for this encounter
  // Reference(Organization)
  Reference serviceProvider;

  // Another Encounter this encounter is part of
  // Reference(Encounter)
  Reference partOf;

  Encounter(
      {this.resourceType,
        this.identifier,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
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
class StatusHistory {

  // R!  planned | arrived | triaged | in-progress | onleave | finished | cancelled +
  String status;

  // R!  The time that the episode was in the specified status
  Period period;

  StatusHistory({this.status, this.period});

  factory StatusHistory.fromJson(Map<String, dynamic> json) => _$StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassHistory {

  // R!  inpatient | outpatient | ambulatory | emergency +
  Coding classs;

  // R!  The time that the episode was in the specified class
  Period period;

  ClassHistory({this.classs, this.period});

  factory ClassHistory.fromJson(Map<String, dynamic> json) => _$ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Participant {

  // Role of participant in encounter
  List<CodeableConcept> type;

  // Period of time during the encounter that the participant participated
  Period period;

  // Persons involved in the encounter other than the patient
  // Reference(Practitioner|PractitionerRole|RelatedPerson)
  Reference individual;

  Participant({this.type, this.period, this.individual});

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Diagnosis {

  // R!  The diagnosis or procedure relevant to the encounter
  // Reference(Condition|Procedure)
  Reference condition;

  // Role that this diagnosis has within the encounter (e.g. admission, billing, discharge â€¦)
  CodeableConcept use;

  // Ranking of the diagnosis (for each role type)
  int rank;

  Diagnosis({this.condition, this.use, this.rank});

  factory Diagnosis.fromJson(Map<String, dynamic> json) => _$DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Hospitalization {

  // Pre-admission identifier
  Identifier preAdmissionIdentifier;

  // The location/organization from which the patient came before admission
  // Reference(Location|Organization)
  Reference origin;

  // From where patient was admitted (physician referral, transfer)
  CodeableConcept admitSource;

  // The type of hospital re-admission that has occurred (if any).
  // If the value is absent, then this is not identified as a readmission
  CodeableConcept reAdmission;

  // Diet preferences reported by the patient
  List<CodeableConcept> dietPreference;

  // Special courtesies (VIP, board member)
  List<CodeableConcept> specialCourtesy;

  // Wheelchair, translator, stretcher, etc.
  List<CodeableConcept> specialArrangement;

  // Location/organization to which the patient is discharged
  // Reference(Location|Organization)
  Reference destination;

  // Category or kind of location after discharge
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
class Location {

  // R!  Location the encounter takes place
  // Reference(Location)
  Reference location;

  // planned | active | reserved | completed
  String status;

  // The physical type of the location (usually the level in the location
  // hierachy - bed room ward etc.)
  CodeableConcept physicalType;

  // Time period during which the patient was present at the location
  Period period;

  Location({this.location, this.status, this.physicalType, this.period});

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}