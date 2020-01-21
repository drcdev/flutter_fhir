import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment {
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

  // External Ids for this item
  List<Identifier> identifier;

  // R!  proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist
  String status;

  // The coded reason for the appointment being cancelled
  CodeableConcept cancelationReason;

  // A broad categorization of the service that is to be performed during this appointment
  List<CodeableConcept> serviceCategory;

  // The specific service that is to be performed during this appointment
  List<CodeableConcept> serviceType;

  // The specialty of a practitioner that would be required to perform the service requested in this appointment
  List<CodeableConcept> specialty;

  // The style of appointment or patient that has been booked in the slot (not service type)
  CodeableConcept appointmentType;

  // Coded reason this appointment is scheduled
  List<CodeableConcept> reasonCode;

  // Reason the appointment is to take place (resource)
  // Reference(Condition|Procedure|Observation|ImmunizationRecommendation)
  List<Reference> reasonReference;

  // Used to make informed decisions if needing to re-prioritize
  int priority;

  // Shown on a subject line in a meeting request, or appointment list
  String description;

  // Additional information to support the appointment
  List<Reference> supportingInformation;

  // When appointment is to take place
  DateTime start;

  // When appointment is to conclude
  DateTime end;

  // Can be less than start/end (e.g. estimate)
  int minutesDuration;

  // The slots that this appointment is filling
  // Reference(Slot)
  List<Reference> slot;

  // The date that this appointment was initially created
  DateTime created;

  // Additional comments
  String comment;

  // Detailed information and instructions for the patient
  String patientInstruction;

  // The service request this appointment is allocated to assess
  List<Reference> basedOn;

  // R!  Participants involved in appointment
  List<_Participant> participant;

  // Potential date/time interval(s) requested to allocate the appointment within
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
  // Role of participant in the appointment
  List<CodeableConcept> type;

  // Person, Location/HealthcareService or Device
  //   Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|
  //  Device|HealthcareService|Location)
  Reference actor;

  // required | optional | information-only
  String required;

  // R!  accepted | declined | tentative | needs-action
  String status;

  // Participation period of the actor
  Period period;

  _Participant({this.type, this.actor, this.required, this.status, this.period});

  factory _Participant.fromJson(Map<String, dynamic> json) => _$_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$_ParticipantToJson(this);
}