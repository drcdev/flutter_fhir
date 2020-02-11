import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 65)
class Appointment {

  //  This is a Appointment resource
  @HiveField(0)
  final String resourceType= 'Appointment';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  This records identifiers associated with this appointment concern that
  // are defined by business processes and/or used to refer to it when a
  // direct URL reference to the resource itself is not appropriate (e.g. in
  // CDA documents, or in written / printed documentation).
  @HiveField(11)
  List<Identifier> identifier;

  //  The overall status of the Appointment. Each of the participants has
  // their own participation status which indicates their involvement in the
  // process, however this status indicates the shared status.
  @HiveField(12)
  String status; // <code> enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The coded reason for the appointment being cancelled. This is often
  // used in reporting/billing/futher processing to determine if further
  // actions are required, or specific fees apply.
  @HiveField(14)
  CodeableConcept cancelationReason;

  //  A broad categorization of the service that is to be performed during
  // this appointment.
  @HiveField(15)
  List<CodeableConcept> serviceCategory;

  //  The specific service that is to be performed during this appointment.
  @HiveField(16)
  List<CodeableConcept> serviceType;

  //  The specialty of a practitioner that would be required to perform the
  // service requested in this appointment.
  @HiveField(17)
  List<CodeableConcept> specialty;

  //  The style of appointment or patient that has been booked in the slot
  // (not service type).
  @HiveField(18)
  CodeableConcept appointmentType;

  //  The coded reason that this appointment is being scheduled. This is
  // more clinical than administrative.
  @HiveField(19)
  List<CodeableConcept> reasonCode;

  //  Reason the appointment has been scheduled to take place, as specified
  // using information from another resource. When the patient arrives and
  // the encounter begins it may be used as the admission diagnosis. The
  // indication will typically be a Condition (with other resources
  // referenced in the evidence.detail), or a Procedure.
  @HiveField(20)
  List<Reference> reasonReference;

  //  The priority of the appointment. Can be used to make informed
  // decisions if needing to re-prioritize appointments. (The iCal Standard
  // specifies 0 as undefined, 1 as highest, 9 as lowest priority).
  @HiveField(21)
  int priority;

  //  Extensions for priority
  @HiveField(22)
  Element elementPriority;

  //  The brief description of the appointment as would be shown on a
  // subject line in a meeting request, or appointment list. Detailed or
  // expanded information should be put in the comment field.
  @HiveField(23)
  String description;

  //  Extensions for description
  @HiveField(24)
  Element elementDescription;

  //  Additional information to support the appointment provided when making
  // the appointment.
  @HiveField(25)
  List<Reference> supportingInformation;

  //  Date/Time that the appointment is to take place.
  @HiveField(26)
  DateTime start;

  //  Extensions for start
  @HiveField(27)
  Element elementStart;

  //  Date/Time that the appointment is to conclude.
  @HiveField(28)
  DateTime end;

  //  Extensions for end
  @HiveField(29)
  Element elementEnd;

  //  Number of minutes that the appointment is to take. This can be less
  // than the duration between the start and end times.  For example, where
  // the actual time of appointment is only an estimate or if a 30 minute
  // appointment is being requested, but any time would work.  Also, if
  // there is, for example, a planned 15 minute break in the middle of a
  // long appointment, the duration may be 15 minutes less than the
  // difference between the start and end.
  @HiveField(30)
  int minutesDuration;

  //  Extensions for minutesDuration
  @HiveField(31)
  Element elementMinutesDuration;

  //  The slots from the participants' schedules that will be filled by the
  // appointment.
  @HiveField(32)
  List<Reference> slot;

  //  The date that this appointment was initially created. This could be
  // different to the meta.lastModified value on the initial entry, as this
  // could have been before the resource was created on the FHIR server, and
  // should remain unchanged over the lifespan of the appointment.
  @HiveField(33)
  DateTime created;

  //  Extensions for created
  @HiveField(34)
  Element elementCreated;

  //  Additional comments about the appointment.
  @HiveField(35)
  String comment;

  //  Extensions for comment
  @HiveField(36)
  Element elementComment;

  //  While Appointment.comment contains information for internal use,
  // Appointment.patientInstructions is used to capture patient facing
  // information about the Appointment (e.g. please bring your referral or
  // fast from 8pm night before).
  @HiveField(37)
  String patientInstruction;

  //  Extensions for patientInstruction
  @HiveField(38)
  Element elementPatientInstruction;

  //  The service request this appointment is allocated to assess (e.g.
  // incoming referral or procedure request).
  @HiveField(39)
  List<Reference> basedOn;

  //  List of participants involved in the appointment.
  @HiveField(40)
  List<Appointment_Participant> participant;

  //  A set of date ranges (potentially including times) that the
  // appointment is preferred to be scheduled within. The duration (usually
  // in minutes) could also be provided to indicate the length of the
  // appointment to fill and populate the start/end times for the actual
  // allocated time. However, in other situations the duration may be
  // calculated by the scheduling system.
  @HiveField(41)
  List<Period> requestedPeriod;

Appointment(
  this.participant,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.cancelationReason,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.reasonCode,
    this.reasonReference,
    this.priority,
    this.elementPriority,
    this.description,
    this.elementDescription,
    this.supportingInformation,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
    this.minutesDuration,
    this.elementMinutesDuration,
    this.slot,
    this.created,
    this.elementCreated,
    this.comment,
    this.elementComment,
    this.patientInstruction,
    this.elementPatientInstruction,
    this.basedOn,
    this.requestedPeriod
    });

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Appointment_Participant {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Role of participant in the appointment.
  List<CodeableConcept> type;

  //  A Person, Location/HealthcareService or Device that is participating
  // in the appointment.
  Reference actor;

  //  Whether this participant is required to be present at the meeting.
  // This covers a use-case where two doctors need to meet to discuss the
  // results for a specific patient, and the patient is not required to be
  // present.
  String required; // <code> enum: required/optional/information-only;

  //  Extensions for required
  Element elementRequired;

  //  Participation status of the actor.
  String status; // <code> enum: accepted/declined/tentative/needs-action;

  //  Extensions for status
  Element elementStatus;

  //  Participation period of the actor.
  Period period;

Appointment_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.actor,
    this.required,
    this.elementRequired,
    this.status,
    this.elementStatus,
    this.period
    });

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) => _$Appointment_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Appointment_ParticipantToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppointmentAdapter extends TypeAdapter<Appointment> {
  @override
  final typeId = 65;

  @override
  Appointment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Appointment(
      (fields[40] as List)?.cast<Appointment_Participant>(),
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      cancelationReason: fields[14] as CodeableConcept,
      serviceCategory: (fields[15] as List)?.cast<CodeableConcept>(),
      serviceType: (fields[16] as List)?.cast<CodeableConcept>(),
      specialty: (fields[17] as List)?.cast<CodeableConcept>(),
      appointmentType: fields[18] as CodeableConcept,
      reasonCode: (fields[19] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[20] as List)?.cast<Reference>(),
      priority: fields[21] as int,
      elementPriority: fields[22] as Element,
      description: fields[23] as String,
      elementDescription: fields[24] as Element,
      supportingInformation: (fields[25] as List)?.cast<Reference>(),
      start: fields[26] as DateTime,
      elementStart: fields[27] as Element,
      end: fields[28] as DateTime,
      elementEnd: fields[29] as Element,
      minutesDuration: fields[30] as int,
      elementMinutesDuration: fields[31] as Element,
      slot: (fields[32] as List)?.cast<Reference>(),
      created: fields[33] as DateTime,
      elementCreated: fields[34] as Element,
      comment: fields[35] as String,
      elementComment: fields[36] as Element,
      patientInstruction: fields[37] as String,
      elementPatientInstruction: fields[38] as Element,
      basedOn: (fields[39] as List)?.cast<Reference>(),
      requestedPeriod: (fields[41] as List)?.cast<Period>(),
    );
  }

  @override
  void write(BinaryWriter writer, Appointment obj) {
    writer
      ..writeByte(42)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.cancelationReason)
      ..writeByte(15)
      ..write(obj.serviceCategory)
      ..writeByte(16)
      ..write(obj.serviceType)
      ..writeByte(17)
      ..write(obj.specialty)
      ..writeByte(18)
      ..write(obj.appointmentType)
      ..writeByte(19)
      ..write(obj.reasonCode)
      ..writeByte(20)
      ..write(obj.reasonReference)
      ..writeByte(21)
      ..write(obj.priority)
      ..writeByte(22)
      ..write(obj.elementPriority)
      ..writeByte(23)
      ..write(obj.description)
      ..writeByte(24)
      ..write(obj.elementDescription)
      ..writeByte(25)
      ..write(obj.supportingInformation)
      ..writeByte(26)
      ..write(obj.start)
      ..writeByte(27)
      ..write(obj.elementStart)
      ..writeByte(28)
      ..write(obj.end)
      ..writeByte(29)
      ..write(obj.elementEnd)
      ..writeByte(30)
      ..write(obj.minutesDuration)
      ..writeByte(31)
      ..write(obj.elementMinutesDuration)
      ..writeByte(32)
      ..write(obj.slot)
      ..writeByte(33)
      ..write(obj.created)
      ..writeByte(34)
      ..write(obj.elementCreated)
      ..writeByte(35)
      ..write(obj.comment)
      ..writeByte(36)
      ..write(obj.elementComment)
      ..writeByte(37)
      ..write(obj.patientInstruction)
      ..writeByte(38)
      ..write(obj.elementPatientInstruction)
      ..writeByte(39)
      ..write(obj.basedOn)
      ..writeByte(40)
      ..write(obj.participant)
      ..writeByte(41)
      ..write(obj.requestedPeriod);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return Appointment(
    (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : Appointment_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    cancelationReason: json['cancelationReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['cancelationReason'] as Map<String, dynamic>),
    serviceCategory: (json['serviceCategory'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceType: (json['serviceType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialty: (json['specialty'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    appointmentType: json['appointmentType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['appointmentType'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] as int,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    minutesDuration: json['minutesDuration'] as int,
    elementMinutesDuration: json['elementMinutesDuration'] == null
        ? null
        : Element.fromJson(
            json['elementMinutesDuration'] as Map<String, dynamic>),
    slot: (json['slot'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    patientInstruction: json['patientInstruction'] as String,
    elementPatientInstruction: json['elementPatientInstruction'] == null
        ? null
        : Element.fromJson(
            json['elementPatientInstruction'] as Map<String, dynamic>),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requestedPeriod: (json['requestedPeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'cancelationReason': instance.cancelationReason?.toJson(),
      'serviceCategory':
          instance.serviceCategory?.map((e) => e?.toJson())?.toList(),
      'serviceType': instance.serviceType?.map((e) => e?.toJson())?.toList(),
      'specialty': instance.specialty?.map((e) => e?.toJson())?.toList(),
      'appointmentType': instance.appointmentType?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'supportingInformation':
          instance.supportingInformation?.map((e) => e?.toJson())?.toList(),
      'start': instance.start?.toIso8601String(),
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end?.toIso8601String(),
      'elementEnd': instance.elementEnd?.toJson(),
      'minutesDuration': instance.minutesDuration,
      'elementMinutesDuration': instance.elementMinutesDuration?.toJson(),
      'slot': instance.slot?.map((e) => e?.toJson())?.toList(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'patientInstruction': instance.patientInstruction,
      'elementPatientInstruction': instance.elementPatientInstruction?.toJson(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'requestedPeriod':
          instance.requestedPeriod?.map((e) => e?.toJson())?.toList(),
    };

Appointment_Participant _$Appointment_ParticipantFromJson(
    Map<String, dynamic> json) {
  return Appointment_Participant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
    required: json['required'] as String,
    elementRequired: json['elementRequired'] == null
        ? null
        : Element.fromJson(json['elementRequired'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Appointment_ParticipantToJson(
        Appointment_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'actor': instance.actor?.toJson(),
      'required': instance.required,
      'elementRequired': instance.elementRequired?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'period': instance.period?.toJson(),
    };
