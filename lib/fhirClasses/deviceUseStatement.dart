import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class DeviceUseStatement {
  static Future<DeviceUseStatement> newInstance(
      {String resourceType,
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
      List<Reference> basedOn,
      String status,
      Element elementStatus,
      Reference subject,
      List<Reference> derivedFrom,
      Timing timingTiming,
      Period timingPeriod,
      String timingDateTime,
      Element elementTimingDateTime,
      DateTime recordedOn,
      Element elementRecordedOn,
      Reference source,
      Reference device,
      List<CodeableConcept> reasonCode,
      List<Reference> reasonReference,
      CodeableConcept bodySite,
      List<Annotation> note}) async {
    var fhirDb = new DatabaseHelper();
    DeviceUseStatement newDeviceUseStatement = new DeviceUseStatement(
      resourceType: 'DeviceUseStatement',
      id: await fhirDb.newResourceId('DeviceUseStatement'),
      meta: await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      basedOn: basedOn,
      status: status,
      elementStatus: elementStatus,
      subject: subject,
      derivedFrom: derivedFrom,
      timingTiming: timingTiming,
      timingPeriod: timingPeriod,
      timingDateTime: timingDateTime,
      elementTimingDateTime: elementTimingDateTime,
      recordedOn: recordedOn,
      elementRecordedOn: elementRecordedOn,
      source: source,
      device: device,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      bodySite: bodySite,
      note: note,
    );
    newDeviceUseStatement.meta.createdAt = DateTime.now();
    newDeviceUseStatement.meta.lastUpdated =
        newDeviceUseStatement.meta.createdAt;
    int saved = await fhirDb.newResource(newDeviceUseStatement);
    return newDeviceUseStatement;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'DeviceUseStatement';
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
  List<Reference> basedOn;
  String
      status; // <code> enum: active/completed/entered-in-error/intended/stopped/on-hold;
  Element elementStatus;
  Reference subject;
  List<Reference> derivedFrom;
  Timing timingTiming;
  Period timingPeriod;
  String
      timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementTimingDateTime;
  DateTime recordedOn;
  Element elementRecordedOn;
  Reference source;
  Reference device;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  CodeableConcept bodySite;
  List<Annotation> note;

  DeviceUseStatement(
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
      this.basedOn,
      this.status,
      this.elementStatus,
      @required this.subject,
      this.derivedFrom,
      this.timingTiming,
      this.timingPeriod,
      this.timingDateTime,
      this.elementTimingDateTime,
      this.recordedOn,
      this.elementRecordedOn,
      this.source,
      @required this.device,
      this.reasonCode,
      this.reasonReference,
      this.bodySite,
      this.note});

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) =>
      _$DeviceUseStatementFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceUseStatementToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceUseStatement _$DeviceUseStatementFromJson(Map<String, dynamic> json) {
  return DeviceUseStatement(
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    derivedFrom: (json['derivedFrom'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timingTiming: json['timingTiming'] == null
        ? null
        : Timing.fromJson(json['timingTiming'] as Map<String, dynamic>),
    timingPeriod: json['timingPeriod'] == null
        ? null
        : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
    timingDateTime: json['timingDateTime'] as String,
    elementTimingDateTime: json['elementTimingDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementTimingDateTime'] as Map<String, dynamic>),
    recordedOn: json['recordedOn'] == null
        ? null
        : DateTime.parse(json['recordedOn'] as String),
    elementRecordedOn: json['elementRecordedOn'] == null
        ? null
        : Element.fromJson(json['elementRecordedOn'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Reference.fromJson(json['device'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceUseStatementToJson(DeviceUseStatement instance) =>
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
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'subject': instance.subject?.toJson(),
      'derivedFrom': instance.derivedFrom?.map((e) => e?.toJson())?.toList(),
      'timingTiming': instance.timingTiming?.toJson(),
      'timingPeriod': instance.timingPeriod?.toJson(),
      'timingDateTime': instance.timingDateTime,
      'elementTimingDateTime': instance.elementTimingDateTime?.toJson(),
      'recordedOn': instance.recordedOn?.toIso8601String(),
      'elementRecordedOn': instance.elementRecordedOn?.toJson(),
      'source': instance.source?.toJson(),
      'device': instance.device?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
