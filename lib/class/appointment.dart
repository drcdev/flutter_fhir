import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  String status;
  CodeableConcept cancelationReason;
  List<CodeableConcept> serviceCategory;
  List<CodeableConcept> serviceType;
  List<CodeableConcept> specialty;
  CodeableConcept appointmentType;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  int priority;
  String description;
  List<Reference> supportingInformation;
  DateTime start;
  DateTime end;
  int minutesDuration;
  List<Reference> slot;
  DateTime created;
  String comment;
  String patientInstruction;
  List<Reference> basedOn;
  List<_Participant> participant;
  List<Period> requestedPeriod;

  Appointment(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.identifier,
        this.status,
        this.cancelationReason,
        this.serviceCategory,
        this.serviceType,
        this.specialty,
        this.appointmentType,
        this.reasonCode,
        this.reasonReference,
        this.priority,
        this.description,
        this.supportingInformation,
        this.start,
        this.end,
        this.minutesDuration,
        this.slot,
        this.created,
        this.comment,
        this.patientInstruction,
        this.basedOn,
        this.participant,
        this.requestedPeriod});

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Participant {
  List<CodeableConcept> type;
  Reference actor;
  String required;
  String status;
  Period period;

  _Participant({this.type, this.actor, this.required, this.status, this.period});

  factory _Participant.fromJson(Map<String, dynamic> json) => _$_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$_ParticipantToJson(this);
}