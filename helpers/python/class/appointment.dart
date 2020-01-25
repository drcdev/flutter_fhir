

part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment {

  This is a Appointment resource resourceType;
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
  enum: proposedpendingbookedarrivedfulfilledcancellednoshowentered-in-errorchecked-inwaitlist status;
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
  StringTime created;
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
this.requestedPeriod});

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}