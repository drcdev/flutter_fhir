import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 365)
class Media {

  //  This is a Media resource
  @HiveField(0)
  final String resourceType= 'Media';

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

  //  Identifiers associated with the image - these may include identifiers
  // for the image itself, identifiers for the context of its collection
  // (e.g. series ids) and context ids such as accession numbers or other
  // workflow identifiers.
  @HiveField(11)
  List<Identifier> identifier;

  //  A procedure that is fulfilled in whole or in part by the creation of
  // this media.
  @HiveField(12)
  List<Reference> basedOn;

  //  A larger event of which this particular event is a component or step.
  @HiveField(13)
  List<Reference> partOf;

  //  The current state of the {{title}}.
  @HiveField(14)
  String status;

  //  Extensions for status
  @HiveField(15)
  Element elementStatus;

  //  A code that classifies whether the media is an image, video or audio
  // recording or some other media category.
  @HiveField(16)
  CodeableConcept type;

  //  Details of the type of the media - usually, how it was acquired (what
  // type of device). If images sourced from a DICOM system, are wrapped in
  // a Media resource, then this is the modality.
  @HiveField(17)
  CodeableConcept modality;

  //  The name of the imaging view e.g. Lateral or Antero-posterior (AP).
  @HiveField(18)
  CodeableConcept view;

  //  Who/What this Media is a record of.
  @HiveField(19)
  Reference subject;

  //  The encounter that establishes the context for this media.
  @HiveField(20)
  Reference encounter;

  //  The date and time(s) at which the media was collected.
  @HiveField(21)
  String createdDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for createdDateTime
  @HiveField(22)
  Element elementCreatedDateTime;

  //  The date and time(s) at which the media was collected.
  @HiveField(23)
  Period createdPeriod;

  //  The date and time this version of the media was made available to
  // providers, typically after having been reviewed.
  @HiveField(24)
  DateTime issued;

  //  Extensions for issued
  @HiveField(25)
  Element elementIssued;

  //  The person who administered the collection of the image.
  @HiveField(26)
  Reference operator;

  //  Describes why the event occurred in coded or textual form.
  @HiveField(27)
  List<CodeableConcept> reasonCode;

  //  Indicates the site on the subject's body where the observation was
  // made (i.e. the target site).
  @HiveField(28)
  CodeableConcept bodySite;

  //  The name of the device / manufacturer of the device  that was used to
  // make the recording.
  @HiveField(29)
  String deviceName;

  //  Extensions for deviceName
  @HiveField(30)
  Element elementDeviceName;

  //  The device used to collect the media.
  @HiveField(31)
  Reference device;

  //  Height of the image in pixels (photo/video).
  @HiveField(32)
  int height;

  //  Extensions for height
  @HiveField(33)
  Element elementHeight;

  //  Width of the image in pixels (photo/video).
  @HiveField(34)
  int width;

  //  Extensions for width
  @HiveField(35)
  Element elementWidth;

  //  The number of frames in a photo. This is used with a multi-page fax,
  // or an imaging acquisition context that takes multiple slices in a
  // single image, or an animated gif. If there is more than one frame, this
  // SHALL have a value in order to alert interface software that a
  // multi-frame capable rendering widget is required.
  @HiveField(36)
  int frames;

  //  Extensions for frames
  @HiveField(37)
  Element elementFrames;

  //  The duration of the recording in seconds - for audio and video.
  @HiveField(38)
  double duration;

  //  Extensions for duration
  @HiveField(39)
  Element elementDuration;

  //  The actual content of the media - inline or by direct reference to the
  // media source file.
  @HiveField(40)
  Attachment content;

  //  Comments made about the media by the performer, subject or other
  // participants.
  @HiveField(41)
  List<Annotation> note;

Media(
  this.content,
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
    this.note
    });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MediaAdapter extends TypeAdapter<Media> {
  @override
  final typeId = 365;

  @override
  Media read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Media(
      fields[40] as Attachment,
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      partOf: (fields[13] as List)?.cast<Reference>(),
      status: fields[14] as String,
      elementStatus: fields[15] as Element,
      type: fields[16] as CodeableConcept,
      modality: fields[17] as CodeableConcept,
      view: fields[18] as CodeableConcept,
      subject: fields[19] as Reference,
      encounter: fields[20] as Reference,
      createdDateTime: fields[21] as String,
      elementCreatedDateTime: fields[22] as Element,
      createdPeriod: fields[23] as Period,
      issued: fields[24] as DateTime,
      elementIssued: fields[25] as Element,
      operator: fields[26] as Reference,
      reasonCode: (fields[27] as List)?.cast<CodeableConcept>(),
      bodySite: fields[28] as CodeableConcept,
      deviceName: fields[29] as String,
      elementDeviceName: fields[30] as Element,
      device: fields[31] as Reference,
      height: fields[32] as int,
      elementHeight: fields[33] as Element,
      width: fields[34] as int,
      elementWidth: fields[35] as Element,
      frames: fields[36] as int,
      elementFrames: fields[37] as Element,
      duration: fields[38] as double,
      elementDuration: fields[39] as Element,
      note: (fields[41] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Media obj) {
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
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.partOf)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.elementStatus)
      ..writeByte(16)
      ..write(obj.type)
      ..writeByte(17)
      ..write(obj.modality)
      ..writeByte(18)
      ..write(obj.view)
      ..writeByte(19)
      ..write(obj.subject)
      ..writeByte(20)
      ..write(obj.encounter)
      ..writeByte(21)
      ..write(obj.createdDateTime)
      ..writeByte(22)
      ..write(obj.elementCreatedDateTime)
      ..writeByte(23)
      ..write(obj.createdPeriod)
      ..writeByte(24)
      ..write(obj.issued)
      ..writeByte(25)
      ..write(obj.elementIssued)
      ..writeByte(26)
      ..write(obj.operator)
      ..writeByte(27)
      ..write(obj.reasonCode)
      ..writeByte(28)
      ..write(obj.bodySite)
      ..writeByte(29)
      ..write(obj.deviceName)
      ..writeByte(30)
      ..write(obj.elementDeviceName)
      ..writeByte(31)
      ..write(obj.device)
      ..writeByte(32)
      ..write(obj.height)
      ..writeByte(33)
      ..write(obj.elementHeight)
      ..writeByte(34)
      ..write(obj.width)
      ..writeByte(35)
      ..write(obj.elementWidth)
      ..writeByte(36)
      ..write(obj.frames)
      ..writeByte(37)
      ..write(obj.elementFrames)
      ..writeByte(38)
      ..write(obj.duration)
      ..writeByte(39)
      ..write(obj.elementDuration)
      ..writeByte(40)
      ..write(obj.content)
      ..writeByte(41)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
    json['content'] == null
        ? null
        : Attachment.fromJson(json['content'] as Map<String, dynamic>),
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
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
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
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'modality': instance.modality?.toJson(),
      'view': instance.view?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'createdDateTime': instance.createdDateTime,
      'elementCreatedDateTime': instance.elementCreatedDateTime?.toJson(),
      'createdPeriod': instance.createdPeriod?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'operator': instance.operator?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'deviceName': instance.deviceName,
      'elementDeviceName': instance.elementDeviceName?.toJson(),
      'device': instance.device?.toJson(),
      'height': instance.height,
      'elementHeight': instance.elementHeight?.toJson(),
      'width': instance.width,
      'elementWidth': instance.elementWidth?.toJson(),
      'frames': instance.frames,
      'elementFrames': instance.elementFrames?.toJson(),
      'duration': instance.duration,
      'elementDuration': instance.elementDuration?.toJson(),
      'content': instance.content?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
