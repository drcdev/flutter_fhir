
part 'appointmentResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class AppointmentResponse {
  
  // This is a AppointmentResponse 
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

  // This records identifiers associated with this appointment response concern
  //  that are defined by business processes and/ or used to refer to it when a
  //  direct URL reference to the resource itself is not appropriate.
  List<Identifier identifier;

  // Appointment that this response is replying to.
  Reference appointment;

  // Date/Time that the appointment is to take place, or requested new start
  //  time.
  DateTime start;

  // Extensions for start
  Element _start;

  // This may be either the same as the appointment request to confirm the
  //  details of the appointment, or alternately a new time to request a
  //  re-negotiation of the end time.
  DateTime end;

  // Extensions for end
  Element _end;

  // Role of participant in the appointment.
  List<CodeableConcept participantType;

  // A Person, Location, HealthcareService, or Device that is participating in
  //  the appointment.
  Reference actor;

  // Participation status of the participant. When the status is declined or
  //  tentative if the start/end times are different to the appointment, then these
  //  times should be interpreted as a requested time change. When the status is
  //  accepted, the times can either be the time of the appointment (as a
  //  confirmation of the time) or can be empty.
  String participantStatus;

  // Extensions for participantStatus
  Element _participantStatus;

  // Additional comments about the appointment.
  String comment;

  // Extensions for comment
  Element _comment
AppointmentResponse(
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
this.appointment,
this.start,
this._start,
this.end,
this._end,
this.participantType,
this.actor,
this.participantStatus,
this._participantStatus,
this.comment,
this._comment});

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) => _$AppointmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Appointment_Participant {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Role of participant in the appointment.
  List<CodeableConcept type;

  // A Person, Location/HealthcareService or Device that is participating in the
  //  appointment.
  Reference actor;

  // Whether this participant is required to be present at the meeting. This
  //  covers a use-case where two doctors need to meet to discuss the results for a
  //  specific patient, and the patient is not required to be present.Enum enum; //
  //  requiredoptionalinformation-only required;

  // Extensions for required
  Element _required;

  // Participation status of the actor.Enum enum; //
  //  accepteddeclinedtentativeneeds-action status;

  // Extensions for status
  Element _status;

  // Participation period of the actor.
  Period period
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
this.period});

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) => _$Appointment_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Appointment_ParticipantToJson(this);
}
