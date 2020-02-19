import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';


@JsonSerializable(explicitToJson: true)
class Appointment{

	static Future<Appointment> newInstance(
	{	String resourceType,
	String id,
	Meta meta,
	String implicitRules,
	Element elementImplicitRules,
	String language,
	Element elementLanguage,
	Narrative text,
	List<dynamic> contained,
	List<Extension> extension,
	List<Extension> modifierExtension,
	List<Identifier> identifier,
	String status,
	Element elementStatus,
	CodeableConcept cancelationReason,
	List<CodeableConcept> serviceCategory,
	List<CodeableConcept> serviceType,
	List<CodeableConcept> specialty,
	CodeableConcept appointmentType,
	List<CodeableConcept> reasonCode,
	List<Reference> reasonReference,
	int priority,
	Element elementPriority,
	String description,
	Element elementDescription,
	List<Reference> supportingInformation,
	DateTime start,
	Element elementStart,
	DateTime end,
	Element elementEnd,
	int minutesDuration,
	Element elementMinutesDuration,
	List<Reference> slot,
	DateTime created,
	Element elementCreated,
	String comment,
	Element elementComment,
	String patientInstruction,
	Element elementPatientInstruction,
	List<Reference> basedOn,
	List<Appointment_Participant> participant,
	List<Period> requestedPeriod,
}) async {
var fhirDb = new DatabaseHelper();
Appointment newAppointment = new Appointment(
	resourceType: 'Appointment',
	id: id ?? await fhirDb.newResourceId('Appointment'),
	meta: meta ?? await Meta.newInstance(),
	implicitRules: implicitRules,
	elementImplicitRules: elementImplicitRules,
	language: language,
	elementLanguage: elementLanguage,
	text: text,
	contained: contained,
	extension: extension,
	modifierExtension: modifierExtension,
	identifier: identifier,
	status: status,
	elementStatus: elementStatus,
	cancelationReason: cancelationReason,
	serviceCategory: serviceCategory,
	serviceType: serviceType,
	specialty: specialty,
	appointmentType: appointmentType,
	reasonCode: reasonCode,
	reasonReference: reasonReference,
	priority: priority,
	elementPriority: elementPriority,
	description: description,
	elementDescription: elementDescription,
	supportingInformation: supportingInformation,
	start: start,
	elementStart: elementStart,
	end: end,
	elementEnd: elementEnd,
	minutesDuration: minutesDuration,
	elementMinutesDuration: elementMinutesDuration,
	slot: slot,
	created: created,
	elementCreated: elementCreated,
	comment: comment,
	elementComment: elementComment,
	patientInstruction: patientInstruction,
	elementPatientInstruction: elementPatientInstruction,
	basedOn: basedOn,
	participant: participant,
	requestedPeriod: requestedPeriod,
);
	newAppointment.meta.createdAt = DateTime.now();
	newAppointment.meta.lastUpdated = newAppointment.meta.createdAt;
	int saved = await fhirDb.saveResource(newAppointment);
	 return newAppointment;
}

save() async {
		this.meta.lastUpdated = DateTime.now();
		var fhirDb = new DatabaseHelper();
		int saved = await fhirDb.saveResource(this);
}

	String resourceType= 'Appointment';
	String id;
	Meta meta;
	String implicitRules;
	Element elementImplicitRules;
	String language;
	Element elementLanguage;
	Narrative text;
	List<dynamic> contained;
	List<Extension> extension;
	List<Extension> modifierExtension;
	List<Identifier> identifier;
	String status;
	Element elementStatus;
	CodeableConcept cancelationReason;
	List<CodeableConcept> serviceCategory;
	List<CodeableConcept> serviceType;
	List<CodeableConcept> specialty;
	CodeableConcept appointmentType;
	List<CodeableConcept> reasonCode;
	List<Reference> reasonReference;
	int priority;
	Element elementPriority;
	String description;
	Element elementDescription;
	List<Reference> supportingInformation;
	DateTime start;
	Element elementStart;
	DateTime end;
	Element elementEnd;
	int minutesDuration;
	Element elementMinutesDuration;
	List<Reference> slot;
	DateTime created;
	Element elementCreated;
	String comment;
	Element elementComment;
	String patientInstruction;
	Element elementPatientInstruction;
	List<Reference> basedOn;
	List<Appointment_Participant> participant;
	List<Period> requestedPeriod;

Appointment(
	{@required this.resourceType,
this.id,
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
@required this.participant,
this.requestedPeriod,
});

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Appointment_Participant{

	static Future<Appointment_Participant> newInstance(
	{	String id,
	List<Extension> extension,
	List<Extension> modifierExtension,
	List<CodeableConcept> type,
	Reference actor,
	String required,
	Element elementRequired,
	String status,
	Element elementStatus,
	Period period,
}) async {
var fhirDb = new DatabaseHelper();
Appointment_Participant newAppointment_Participant = new Appointment_Participant(
	id: id ?? await fhirDb.newResourceId('Appointment_Participant'),
	extension: extension,
	modifierExtension: modifierExtension,
	type: type,
	actor: actor,
	required: required,
	elementRequired: elementRequired,
	status: status,
	elementStatus: elementStatus,
	period: period,
);
	return newAppointment_Participant;
}

	String id;
	List<Extension> extension;
	List<Extension> modifierExtension;
	List<CodeableConcept> type;
	Reference actor;
	String required;
	Element elementRequired;
	String status;
	Element elementStatus;
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
this.period,
});

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) => _$Appointment_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Appointment_ParticipantToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return Appointment(
    resourceType: json['resourceType'] as String,
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
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : Appointment_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requestedPeriod: (json['requestedPeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
