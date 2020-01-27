
part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment {
  
  // This is a Appointment 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // This records identifiers associated with this appointment concern that are
  //  defined by business processes and/or used to refer to it when a direct URL
  //  reference to the resource itself is not appropriate (e.g. in CDA documents, or
  //  in written / printed documentation).
  List<Identifier identifier;

  // The overall status of the Appointment. Each of the participants has their
  //  own participation status which indicates their involvement in the process,
  //  however this status indicates the shared status.Enum enum; //
  //  proposedpendingbookedarrivedfulfilledcancellednoshowentered-in-errorchecked-inwaitlist status;

  // Extensions for status
  Element _status;

  // The coded reason for the appointment being cancelled. This is often used in
  //  reporting/billing/futher processing to determine if further actions are
  //  required, or specific fees apply.
  CodeableConcept cancelationReason;

  // A broad categorization of the service that is to be performed during this
  //  appointment.
  List<CodeableConcept serviceCategory;

  // The specific service that is to be performed during this appointment.
  List<CodeableConcept serviceType;

  // The specialty of a practitioner that would be required to perform the
  //  service requested in this appointment.
  List<CodeableConcept specialty;

  // The style of appointment or patient that has been booked in the slot (not
  //  service type).
  CodeableConcept appointmentType;

  // The coded reason that this appointment is being scheduled. This is more
  //  clinical than administrative.
  List<CodeableConcept reasonCode;

  // Reason the appointment has been scheduled to take place, as specified using
  //  information from another resource. When the patient arrives and the encounter
  //  begins it may be used as the admission diagnosis. The indication will typically
  //  be a Condition (with other resources referenced in the evidence.detail), or a
  //  Procedure.
  List<Reference reasonReference;

  // The priority of the appointment. Can be used to make informed decisions if
  //  needing to re-prioritize appointments. (The iCal Standard specifies 0 as
  //  undefined, 1 as highest, 9 as lowest priority).
  int priority;

  // Extensions for priority
  Element _priority;

  // The brief description of the appointment as would be shown on a subject
  //  line in a meeting request, or appointment list. Detailed or expanded
  //  information should be put in the comment field.
  String description;

  // Extensions for description
  Element _description;

  // Additional information to support the appointment provided when making the
  //  appointment.
  List<Reference supportingInformation;

  // Date/Time that the appointment is to take place.
  DateTime start;

  // Extensions for start
  Element _start;

  // Date/Time that the appointment is to conclude.
  DateTime end;

  // Extensions for end
  Element _end;

  // Number of minutes that the appointment is to take. This can be less than
  //  the duration between the start and end times.  For example, where the actual
  //  time of appointment is only an estimate or if a 30 minute appointment is being
  //  requested, but any time would work.  Also, if there is, for example, a planned
  //  15 minute break in the middle of a long appointment, the duration may be 15
  //  minutes less than the difference between the start and end.
  int minutesDuration;

  // Extensions for minutesDuration
  Element _minutesDuration;

  // The slots from the participants' schedules that will be filled by the
  //  appointment.
  List<Reference slot;

  // The date that this appointment was initially created. This could be
  //  different to the meta.lastModified value on the initial entry, as this could
  //  have been before the resource was created on the FHIR server, and should remain
  //  unchanged over the lifespan of the appointment.
  StringTime created;

  // Extensions for created
  Element _created;

  // Additional comments about the appointment.
  String comment;

  // Extensions for comment
  Element _comment;

  // While Appointment.comment contains information for internal use,
  //  Appointment.patientInstructions is used to capture patient facing information
  //  about the Appointment (e.g. please bring your referral or fast from 8pm night before).
  String patientInstruction;

  // Extensions for patientInstruction
  Element _patientInstruction;

  // The service request this appointment is allocated to assess (e.g. incoming
  //  referral or procedure request).
  List<Reference basedOn;

  // List of participants involved in the appointment.
  List<Appointment_Participant participant;

  // A set of date ranges (potentially including times) that the appointment is
  //  preferred to be scheduled within.
  
The duration (usually in minutes) could also be provided to indicate the length of the appointment to fill and populate the start/end times for the actual allocated time. However, in other situations the duration may be calculated by the scheduling system.
  List<Period requestedPeriod
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
