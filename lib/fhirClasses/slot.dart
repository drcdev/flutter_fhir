import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 180)
class Slot {

	static Future<Slot> newInstance({
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
		List<CodeableConcept> serviceCategory,
		List<CodeableConcept> serviceType,
		List<CodeableConcept> specialty,
		CodeableConcept appointmentType,
		Reference schedule,
		String status,
		Element elementStatus,
		DateTime start,
		Element elementStart,
		DateTime end,
		Element elementEnd,
		bool overbooked,
		Element elementOverbooked,
		String comment,
		Element elementComment}) async {
	Slot newSlot = new Slot(
			id: await newId('Slot'),
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
			serviceCategory: serviceCategory,
			serviceType: serviceType,
			specialty: specialty,
			appointmentType: appointmentType,
			schedule: schedule,
			status: status,
			elementStatus: elementStatus,
			start: start,
			elementStart: elementStart,
			end: end,
			elementEnd: elementEnd,
			overbooked: overbooked,
			elementOverbooked: elementOverbooked,
			comment: comment,
			elementComment: elementComment);
	var slotBox = await Hive.openBox<Slot>('SlotBox');
	slotBox.add(newSlot);
	return newSlot;
}
  @HiveField(0)
  final String resourceType= 'Slot';
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
  List<CodeableConcept> serviceCategory;
  @HiveField(13)
  List<CodeableConcept> serviceType;
  @HiveField(14)
  List<CodeableConcept> specialty;
  @HiveField(15)
  CodeableConcept appointmentType;
  @HiveField(16)
  Reference schedule;
  @HiveField(17)
  String status; // <code> enum: busy/free/busy-unavailable/busy-tentative/entered-in-error;
  @HiveField(18)
  Element elementStatus;
  @HiveField(19)
  DateTime start;
  @HiveField(20)
  Element elementStart;
  @HiveField(21)
  DateTime end;
  @HiveField(22)
  Element elementEnd;
  @HiveField(23)
  bool overbooked;
  @HiveField(24)
  Element elementOverbooked;
  @HiveField(25)
  String comment;
  @HiveField(26)
  Element elementComment;

Slot(
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
    @required this.schedule,
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
  final typeId = 180;

  @override
  Slot read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Slot(
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
      schedule: fields[16] as Reference,
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
    schedule: json['schedule'] == null
        ? null
        : Reference.fromJson(json['schedule'] as Map<String, dynamic>),
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
