import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 61)
class AppointmentResponse {

  //  This is a AppointmentResponse resource
  @HiveField(0)
  final String resourceType= 'AppointmentResponse';

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

  //  This records identifiers associated with this appointment response
  // concern that are defined by business processes and/ or used to refer to
  // it when a direct URL reference to the resource itself is not
  // appropriate.
  @HiveField(11)
  List<Identifier> identifier;

  //  Appointment that this response is replying to.
  @HiveField(12)
  Reference appointment;

  //  Date/Time that the appointment is to take place, or requested new
  // start time.
  @HiveField(13)
  DateTime start;

  //  Extensions for start
  @HiveField(14)
  Element elementStart;

  //  This may be either the same as the appointment request to confirm the
  // details of the appointment, or alternately a new time to request a
  // re-negotiation of the end time.
  @HiveField(15)
  DateTime end;

  //  Extensions for end
  @HiveField(16)
  Element elementEnd;

  //  Role of participant in the appointment.
  @HiveField(17)
  List<CodeableConcept> participantType;

  //  A Person, Location, HealthcareService, or Device that is participating
  // in the appointment.
  @HiveField(18)
  Reference actor;

  //  Participation status of the participant. When the status is declined
  // or tentative if the start/end times are different to the appointment,
  // then these times should be interpreted as a requested time change. When
  // the status is accepted, the times can either be the time of the
  // appointment (as a confirmation of the time) or can be empty.
  @HiveField(19)
  String participantStatus;

  //  Extensions for participantStatus
  @HiveField(20)
  Element elementParticipantStatus;

  //  Additional comments about the appointment.
  @HiveField(21)
  String comment;

  //  Extensions for comment
  @HiveField(22)
  Element elementComment;

AppointmentResponse(
  this.appointment,
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
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
    this.participantType,
    this.actor,
    this.participantStatus,
    this.elementParticipantStatus,
    this.comment,
    this.elementComment
    });

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) => _$AppointmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppointmentResponseAdapter extends TypeAdapter<AppointmentResponse> {
  @override
  final typeId = 61;

  @override
  AppointmentResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppointmentResponse(
      fields[12] as Reference,
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
      start: fields[13] as DateTime,
      elementStart: fields[14] as Element,
      end: fields[15] as DateTime,
      elementEnd: fields[16] as Element,
      participantType: (fields[17] as List)?.cast<CodeableConcept>(),
      actor: fields[18] as Reference,
      participantStatus: fields[19] as String,
      elementParticipantStatus: fields[20] as Element,
      comment: fields[21] as String,
      elementComment: fields[22] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, AppointmentResponse obj) {
    writer
      ..writeByte(23)
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
      ..write(obj.appointment)
      ..writeByte(13)
      ..write(obj.start)
      ..writeByte(14)
      ..write(obj.elementStart)
      ..writeByte(15)
      ..write(obj.end)
      ..writeByte(16)
      ..write(obj.elementEnd)
      ..writeByte(17)
      ..write(obj.participantType)
      ..writeByte(18)
      ..write(obj.actor)
      ..writeByte(19)
      ..write(obj.participantStatus)
      ..writeByte(20)
      ..write(obj.elementParticipantStatus)
      ..writeByte(21)
      ..write(obj.comment)
      ..writeByte(22)
      ..write(obj.elementComment);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentResponse _$AppointmentResponseFromJson(Map<String, dynamic> json) {
  return AppointmentResponse(
    json['appointment'] == null
        ? null
        : Reference.fromJson(json['appointment'] as Map<String, dynamic>),
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
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    participantType: (json['participantType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
    participantStatus: json['participantStatus'] as String,
    elementParticipantStatus: json['elementParticipantStatus'] == null
        ? null
        : Element.fromJson(
            json['elementParticipantStatus'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppointmentResponseToJson(
        AppointmentResponse instance) =>
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
      'appointment': instance.appointment?.toJson(),
      'start': instance.start?.toIso8601String(),
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end?.toIso8601String(),
      'elementEnd': instance.elementEnd?.toJson(),
      'participantType':
          instance.participantType?.map((e) => e?.toJson())?.toList(),
      'actor': instance.actor?.toJson(),
      'participantStatus': instance.participantStatus,
      'elementParticipantStatus': instance.elementParticipantStatus?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };
