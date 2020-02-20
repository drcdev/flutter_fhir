import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Media {
  static Future<Media> newInstance({
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
    List<Reference> basedOn,
    List<Reference> partOf,
    String status,
    Element elementStatus,
    CodeableConcept type,
    CodeableConcept modality,
    CodeableConcept view,
    Reference subject,
    Reference encounter,
    String createdDateTime,
    Element elementCreatedDateTime,
    Period createdPeriod,
    DateTime issued,
    Element elementIssued,
    Reference operator,
    List<CodeableConcept> reasonCode,
    CodeableConcept bodySite,
    String deviceName,
    Element elementDeviceName,
    Reference device,
    int height,
    Element elementHeight,
    int width,
    Element elementWidth,
    int frames,
    Element elementFrames,
    double duration,
    Element elementDuration,
    Attachment content,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    Media newMedia = new Media(
      resourceType: 'Media',
      id: id ?? await fhirDb.newResourceId('Media'),
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
      basedOn: basedOn,
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      type: type,
      modality: modality,
      view: view,
      subject: subject,
      encounter: encounter,
      createdDateTime: createdDateTime,
      elementCreatedDateTime: elementCreatedDateTime,
      createdPeriod: createdPeriod,
      issued: issued,
      elementIssued: elementIssued,
      operator: operator,
      reasonCode: reasonCode,
      bodySite: bodySite,
      deviceName: deviceName,
      elementDeviceName: elementDeviceName,
      device: device,
      height: height,
      elementHeight: elementHeight,
      width: width,
      elementWidth: elementWidth,
      frames: frames,
      elementFrames: elementFrames,
      duration: duration,
      elementDuration: elementDuration,
      content: content,
      note: note,
    );
    newMedia.meta.createdAt = DateTime.now();
    newMedia.meta.lastUpdated = newMedia.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedia);
    return newMedia;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'Media';
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
  List<Reference> partOf;
  String status;
  Element elementStatus;
  CodeableConcept type;
  CodeableConcept modality;
  CodeableConcept view;
  Reference subject;
  Reference encounter;
  String createdDateTime;
  Element elementCreatedDateTime;
  Period createdPeriod;
  DateTime issued;
  Element elementIssued;
  Reference operator;
  List<CodeableConcept> reasonCode;
  CodeableConcept bodySite;
  String deviceName;
  Element elementDeviceName;
  Reference device;
  int height;
  Element elementHeight;
  int width;
  Element elementWidth;
  int frames;
  Element elementFrames;
  double duration;
  Element elementDuration;
  Attachment content;
  List<Annotation> note;

  Media({
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
    this.basedOn,
    this.partOf,
    this.status,
    this.elementStatus,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.elementCreatedDateTime,
    this.createdPeriod,
    this.issued,
    this.elementIssued,
    this.operator,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.elementDeviceName,
    this.device,
    this.height,
    this.elementHeight,
    this.width,
    this.elementWidth,
    this.frames,
    this.elementFrames,
    this.duration,
    this.elementDuration,
    @required this.content,
    this.note,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
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
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    modality: json['modality'] == null
        ? null
        : CodeableConcept.fromJson(json['modality'] as Map<String, dynamic>),
    view: json['view'] == null
        ? null
        : CodeableConcept.fromJson(json['view'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    createdDateTime: json['createdDateTime'] as String,
    elementCreatedDateTime: json['elementCreatedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementCreatedDateTime'] as Map<String, dynamic>),
    createdPeriod: json['createdPeriod'] == null
        ? null
        : Period.fromJson(json['createdPeriod'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    operator: json['operator'] == null
        ? null
        : Reference.fromJson(json['operator'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    deviceName: json['deviceName'] as String,
    elementDeviceName: json['elementDeviceName'] == null
        ? null
        : Element.fromJson(json['elementDeviceName'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Reference.fromJson(json['device'] as Map<String, dynamic>),
    height: json['height'] as int,
    elementHeight: json['elementHeight'] == null
        ? null
        : Element.fromJson(json['elementHeight'] as Map<String, dynamic>),
    width: json['width'] as int,
    elementWidth: json['elementWidth'] == null
        ? null
        : Element.fromJson(json['elementWidth'] as Map<String, dynamic>),
    frames: json['frames'] as int,
    elementFrames: json['elementFrames'] == null
        ? null
        : Element.fromJson(json['elementFrames'] as Map<String, dynamic>),
    duration: (json['duration'] as num)?.toDouble(),
    elementDuration: json['elementDuration'] == null
        ? null
        : Element.fromJson(json['elementDuration'] as Map<String, dynamic>),
    content: json['content'] == null
        ? null
        : Attachment.fromJson(json['content'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MediaToJson(Media instance) {
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
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('modality', instance.modality?.toJson());
  writeNotNull('view', instance.view?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('createdDateTime', instance.createdDateTime);
  writeNotNull(
      'elementCreatedDateTime', instance.elementCreatedDateTime?.toJson());
  writeNotNull('createdPeriod', instance.createdPeriod?.toJson());
  writeNotNull('issued', instance.issued?.toIso8601String());
  writeNotNull('elementIssued', instance.elementIssued?.toJson());
  writeNotNull('operator', instance.operator?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('deviceName', instance.deviceName);
  writeNotNull('elementDeviceName', instance.elementDeviceName?.toJson());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('height', instance.height);
  writeNotNull('elementHeight', instance.elementHeight?.toJson());
  writeNotNull('width', instance.width);
  writeNotNull('elementWidth', instance.elementWidth?.toJson());
  writeNotNull('frames', instance.frames);
  writeNotNull('elementFrames', instance.elementFrames?.toJson());
  writeNotNull('duration', instance.duration);
  writeNotNull('elementDuration', instance.elementDuration?.toJson());
  writeNotNull('content', instance.content?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}
