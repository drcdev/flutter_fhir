import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 60)
class Appointment {

	static Future<Appointment> newInstance({
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
		List<Period> requestedPeriod}) async {
	Appointment newAppointment = new Appointment(
			id: await newId('Appointment'),
			meta: meta,
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
			requestedPeriod: requestedPeriod);
	var appointmentBox = await Hive.openBox<Appointment>('AppointmentBox');
	appointmentBox.add(newAppointment);
	return newAppointment;
}
  @HiveField(0)
  final String resourceType= 'Appointment';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status; // <code> enum: proposed/pending/booked/arrived/fulfilled/cancelled/noshow/entered-in-error/checked-in/waitlist;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  CodeableConcept cancelationReason;
  @HiveField(15)
  List<CodeableConcept> serviceCategory;
  @HiveField(16)
  List<CodeableConcept> serviceType;
  @HiveField(17)
  List<CodeableConcept> specialty;
  @HiveField(18)
  CodeableConcept appointmentType;
  @HiveField(19)
  List<CodeableConcept> reasonCode;
  @HiveField(20)
  List<Reference> reasonReference;
  @HiveField(21)
  int priority;
  @HiveField(22)
  Element elementPriority;
  @HiveField(23)
  String description;
  @HiveField(24)
  Element elementDescription;
  @HiveField(25)
  List<Reference> supportingInformation;
  @HiveField(26)
  DateTime start;
  @HiveField(27)
  Element elementStart;
  @HiveField(28)
  DateTime end;
  @HiveField(29)
  Element elementEnd;
  @HiveField(30)
  int minutesDuration;
  @HiveField(31)
  Element elementMinutesDuration;
  @HiveField(32)
  List<Reference> slot;
  @HiveField(33)
  DateTime created;
  @HiveField(34)
  Element elementCreated;
  @HiveField(35)
  String comment;
  @HiveField(36)
  Element elementComment;
  @HiveField(37)
  String patientInstruction;
  @HiveField(38)
  Element elementPatientInstruction;
  @HiveField(39)
  List<Reference> basedOn;
  @HiveField(40)
  List<Appointment_Participant> participant;
  @HiveField(41)
  List<Period> requestedPeriod;

Appointment(
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
    @required this.participant,
    this.requestedPeriod
    });

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Appointment_Participant {

	static Future<Appointment_Participant> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> type,
		Reference actor,
		String required,
		Element elementRequired,
		String status,
		Element elementStatus,
		Period period}) async {
	Appointment_Participant newAppointment_Participant = new Appointment_Participant(
			id: await newId('Appointment_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			actor: actor,
			required: required,
			elementRequired: elementRequired,
			status: status,
			elementStatus: elementStatus,
			period: period);
	var appointment_ParticipantBox = await Hive.openBox<Appointment_Participant>('Appointment_ParticipantBox');
	appointment_ParticipantBox.add(newAppointment_Participant);
	return newAppointment_Participant;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> type;
  Reference actor;
  String required; // <code> enum: required/optional/information-only;
  Element elementRequired;
  String status; // <code> enum: accepted/declined/tentative/needs-action;
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
  final typeId = 60;

  @override
  Appointment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Appointment(
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
      participant: (fields[40] as List)?.cast<Appointment_Participant>(),
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
