part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment {

Appointment resourceType;
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
String status; // <code> enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist;
Element _status;
CodeableConcept cancelationReason;
List<CodeableConcept> serviceCategory;
List<CodeableConcept> serviceType;
List<CodeableConcept> specialty;
CodeableConcept appointmentType;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
int priority;
Element _priority;
String description;
Element _description;
List<Reference> supportingInformation;
DateTime start;
Element _start;
DateTime end;
Element _end;
int minutesDuration;
Element _minutesDuration;
List<Reference> slot;
DateTime created;
Element _created;
String comment;
Element _comment;
String patientInstruction;
Element _patientInstruction;
List<Reference> basedOn;
List<Appointment_Participant> participant;
List<Period> requestedPeriod;

Appointment(
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
      this.cancelationReason,
      this.serviceCategory,
      this.serviceType,
      this.specialty,
      this.appointmentType,
      this.reasonCode,
      this.reasonReference,
      this.priority,
      this._priority,
      this.description,
      this._description,
      this.supportingInformation,
      this.start,
      this._start,
      this.end,
      this._end,
      this.minutesDuration,
      this._minutesDuration,
      this.slot,
      this.created,
      this._created,
      this.comment,
      this._comment,
      this.patientInstruction,
      this._patientInstruction,
      this.basedOn,
      this.participant,
      this.requestedPeriod,
      });

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() _$AppointmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Appointment_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
Reference actor;
String required; // <code> enum: required/optional/information-only;
Element _required;
String status; // <code> enum: accepted/declined/tentative/needs-action;
Element _status;
Period period;

Appointment_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.actor,
      this.required,
      this._required,
      this.status,
      this._status,
      this.period,
      });

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) => _$Appointment_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$Appointment_ParticipantToJson(this);
}

