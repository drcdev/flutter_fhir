import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class AppointmentResponse {
  static Future<AppointmentResponse> newInstance({
    String resourceType,
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
    Reference appointment,
    DateTime start,
    Element elementStart,
    DateTime end,
    Element elementEnd,
    List<CodeableConcept> participantType,
    Reference actor,
    String participantStatus,
    Element elementParticipantStatus,
    String comment,
    Element elementComment,
  }) async {
    var fhirDb = new DatabaseHelper();
    AppointmentResponse newAppointmentResponse = new AppointmentResponse(
      resourceType: 'AppointmentResponse',
      id: id ?? await fhirDb.newResourceId('AppointmentResponse'),
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
      appointment: appointment,
      start: start,
      elementStart: elementStart,
      end: end,
      elementEnd: elementEnd,
      participantType: participantType,
      actor: actor,
      participantStatus: participantStatus,
      elementParticipantStatus: elementParticipantStatus,
      comment: comment,
      elementComment: elementComment,
    );
    newAppointmentResponse.meta.createdAt = DateTime.now();
    newAppointmentResponse.meta.lastUpdated =
        newAppointmentResponse.meta.createdAt;
    int saved = await fhirDb.saveResource(newAppointmentResponse);
    return newAppointmentResponse;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'AppointmentResponse';
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
  Reference appointment;
  @HiveField(13)
  DateTime start;
  @HiveField(14)
  Element elementStart;
  @HiveField(15)
  DateTime end;
  @HiveField(16)
  Element elementEnd;
  @HiveField(17)
  List<CodeableConcept> participantType;
  @HiveField(18)
  Reference actor;
  @HiveField(19)
  String participantStatus;
  @HiveField(20)
  Element elementParticipantStatus;
  @HiveField(21)
  String comment;
  @HiveField(22)
  Element elementComment;

  AppointmentResponse({
    @required this.resourceType,
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
    @required this.appointment,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd,
    this.participantType,
    this.actor,
    this.participantStatus,
    this.elementParticipantStatus,
    this.comment,
    this.elementComment,
  });

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentResponse _$AppointmentResponseFromJson(Map<String, dynamic> json) {
  return AppointmentResponse(
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    appointment: json['appointment'] == null
        ? null
        : Reference.fromJson(json['appointment'] as Map<String, dynamic>),
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

Map<String, dynamic> _$AppointmentResponseToJson(AppointmentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('appointment', instance.appointment?.toJson());
  writeNotNull('start', instance.start?.toIso8601String());
  writeNotNull('elementStart', instance.elementStart?.toJson());
  writeNotNull('end', instance.end?.toIso8601String());
  writeNotNull('elementEnd', instance.elementEnd?.toJson());
  writeNotNull('participantType',
      instance.participantType?.map((e) => e?.toJson())?.toList());
  writeNotNull('actor', instance.actor?.toJson());
  writeNotNull('participantStatus', instance.participantStatus);
  writeNotNull(
      'elementParticipantStatus', instance.elementParticipantStatus?.toJson());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppointmentResponseAdapter extends TypeAdapter<AppointmentResponse> {
  @override
  AppointmentResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppointmentResponse(
      resourceType: fields[0] as String,
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
      appointment: fields[12] as Reference,
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
