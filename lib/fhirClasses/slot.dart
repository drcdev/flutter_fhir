import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 532)
class Slot {

  //  This is a Slot resource
  @HiveField(0)
  final String resourceType= 'Slot';

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

  //  External Ids for this item.
  @HiveField(11)
  List<Identifier> identifier;

  //  A broad categorization of the service that is to be performed during
  // this appointment.
  @HiveField(12)
  List<CodeableConcept> serviceCategory;

  //  The type of appointments that can be booked into this slot (ideally
  // this would be an identifiable service - which is at a location, rather
  // than the location itself). If provided then this overrides the value
  // provided on the availability resource.
  @HiveField(13)
  List<CodeableConcept> serviceType;

  //  The specialty of a practitioner that would be required to perform the
  // service requested in this appointment.
  @HiveField(14)
  List<CodeableConcept> specialty;

  //  The style of appointment or patient that may be booked in the slot
  // (not service type).
  @HiveField(15)
  CodeableConcept appointmentType;

  //  The schedule resource that this slot defines an interval of status
  // information.
  @HiveField(16)
  Reference schedule;

  //  busy | free | busy-unavailable | busy-tentative | entered-in-error.
  @HiveField(17)
  String status; // <code> enum: busy/free/busy-unavailable/busy-tentative/entered-in-error;

  //  Extensions for status
  @HiveField(18)
  Element elementStatus;

  //  Date/Time that the slot is to begin.
  @HiveField(19)
  DateTime start;

  //  Extensions for start
  @HiveField(20)
  Element elementStart;

  //  Date/Time that the slot is to conclude.
  @HiveField(21)
  DateTime end;

  //  Extensions for end
  @HiveField(22)
  Element elementEnd;

  //  This slot has already been overbooked, appointments are unlikely to be
  // accepted for this time.
  @HiveField(23)
  bool overbooked;

  //  Extensions for overbooked
  @HiveField(24)
  Element elementOverbooked;

  //  Comments on the slot to describe any extended information. Such as
  // custom constraints on the slot.
  @HiveField(25)
  String comment;

  //  Extensions for comment
  @HiveField(26)
  Element elementComment;

Slot(
  this.schedule,
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
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.status,
    this.elementStatus,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
    this.overbooked,
    this.elementOverbooked,
    this.comment,
    this.elementComment
    });

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
  Map<String, dynamic> toJson() => _$SlotToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SlotAdapter extends TypeAdapter<Slot> {
  @override
  final typeId = 532;

  @override
  Slot read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Slot(
      fields[16] as Reference,
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
      serviceCategory: (fields[12] as List)?.cast<CodeableConcept>(),
      serviceType: (fields[13] as List)?.cast<CodeableConcept>(),
      specialty: (fields[14] as List)?.cast<CodeableConcept>(),
      appointmentType: fields[15] as CodeableConcept,
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      start: fields[19] as DateTime,
      elementStart: fields[20] as Element,
      end: fields[21] as DateTime,
      elementEnd: fields[22] as Element,
      overbooked: fields[23] as bool,
      elementOverbooked: fields[24] as Element,
      comment: fields[25] as String,
      elementComment: fields[26] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Slot obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.serviceCategory)
      ..writeByte(13)
      ..write(obj.serviceType)
      ..writeByte(14)
      ..write(obj.specialty)
      ..writeByte(15)
      ..write(obj.appointmentType)
      ..writeByte(16)
      ..write(obj.schedule)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.start)
      ..writeByte(20)
      ..write(obj.elementStart)
      ..writeByte(21)
      ..write(obj.end)
      ..writeByte(22)
      ..write(obj.elementEnd)
      ..writeByte(23)
      ..write(obj.overbooked)
      ..writeByte(24)
      ..write(obj.elementOverbooked)
      ..writeByte(25)
      ..write(obj.comment)
      ..writeByte(26)
      ..write(obj.elementComment);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Slot _$SlotFromJson(Map<String, dynamic> json) {
  return Slot(
    json['schedule'] == null
        ? null
        : Reference.fromJson(json['schedule'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    start:
        json['start'] == null ? null : DateTime.parse(json['start'] as String),
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    overbooked: json['overbooked'] as bool,
    elementOverbooked: json['elementOverbooked'] == null
        ? null
        : Element.fromJson(json['elementOverbooked'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SlotToJson(Slot instance) => <String, dynamic>{
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
      'serviceCategory':
          instance.serviceCategory?.map((e) => e?.toJson())?.toList(),
      'serviceType': instance.serviceType?.map((e) => e?.toJson())?.toList(),
      'specialty': instance.specialty?.map((e) => e?.toJson())?.toList(),
      'appointmentType': instance.appointmentType?.toJson(),
      'schedule': instance.schedule?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'start': instance.start?.toIso8601String(),
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end?.toIso8601String(),
      'elementEnd': instance.elementEnd?.toJson(),
      'overbooked': instance.overbooked,
      'elementOverbooked': instance.elementOverbooked?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };
