part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {

Encounter resourceType;
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
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
Element _status;
List<Encounter_StatusHistory> statusHistory;
Coding class;
List<Encounter_ClassHistory> classHistory;
List<CodeableConcept> type;
CodeableConcept serviceType;
CodeableConcept priority;
Reference subject;
List<Reference> episodeOfCare;
List<Reference> basedOn;
List<Encounter_Participant> participant;
List<Reference> appointment;
Period period;
Duration length;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Encounter_Diagnosis> diagnosis;
List<Reference> account;
Encounter_Hospitalization hospitalization;
List<Encounter_Location> location;
Reference serviceProvider;
Reference partOf;

Encounter(
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
      this.class,
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
      this.partOf,
      });

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() _$EncounterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_StatusHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown;
Element _status;
Period period;

Encounter_StatusHistory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.status,
      this._status,
      this.period,
      });

  factory Encounter_StatusHistory.fromJson(Map<String, dynamic> json) => _$Encounter_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_ClassHistory {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding class;
Period period;

Encounter_ClassHistory(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.class,
      this.period,
      });

  factory Encounter_ClassHistory.fromJson(Map<String, dynamic> json) => _$Encounter_ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_ClassHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
Period period;
Reference individual;

Encounter_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.period,
      this.individual,
      });

  factory Encounter_Participant.fromJson(Map<String, dynamic> json) => _$Encounter_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Diagnosis {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference condition;
CodeableConcept use;
int rank;
Element _rank;

Encounter_Diagnosis(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.condition,
      this.use,
      this.rank,
      this._rank,
      });

  factory Encounter_Diagnosis.fromJson(Map<String, dynamic> json) => _$Encounter_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Hospitalization {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier preAdmissionIdentifier;
Reference origin;
CodeableConcept admitSource;
CodeableConcept reAdmission;
List<CodeableConcept> dietPreference;
List<CodeableConcept> specialCourtesy;
List<CodeableConcept> specialArrangement;
Reference destination;
CodeableConcept dischargeDisposition;

Encounter_Hospitalization(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.preAdmissionIdentifier,
      this.origin,
      this.admitSource,
      this.reAdmission,
      this.dietPreference,
      this.specialCourtesy,
      this.specialArrangement,
      this.destination,
      this.dischargeDisposition,
      });

  factory Encounter_Hospitalization.fromJson(Map<String, dynamic> json) => _$Encounter_HospitalizationFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_HospitalizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Encounter_Location {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference location;
String status; // <code> enum: planned/active/reserved/completed;
Element _status;
CodeableConcept physicalType;
Period period;

Encounter_Location(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.location,
      this.status,
      this._status,
      this.physicalType,
      this.period,
      });

  factory Encounter_Location.fromJson(Map<String, dynamic> json) => _$Encounter_LocationFromJson(json);
  Map<String, dynamic> toJson() _$Encounter_LocationToJson(this);
}

