// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

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
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
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
    element_createdDateTime: json['element_createdDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_createdDateTime'] as Map<String, dynamic>),
    createdPeriod: json['createdPeriod'] == null
        ? null
        : Period.fromJson(json['createdPeriod'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    element_issued: json['element_issued'] == null
        ? null
        : Element.fromJson(json['element_issued'] as Map<String, dynamic>),
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
    element_deviceName: json['element_deviceName'] == null
        ? null
        : Element.fromJson(json['element_deviceName'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Reference.fromJson(json['device'] as Map<String, dynamic>),
    height: json['height'] as int,
    element_height: json['element_height'] == null
        ? null
        : Element.fromJson(json['element_height'] as Map<String, dynamic>),
    width: json['width'] as int,
    element_width: json['element_width'] == null
        ? null
        : Element.fromJson(json['element_width'] as Map<String, dynamic>),
    frames: json['frames'] as int,
    element_frames: json['element_frames'] == null
        ? null
        : Element.fromJson(json['element_frames'] as Map<String, dynamic>),
    duration: (json['duration'] as num)?.toDouble(),
    element_duration: json['element_duration'] == null
        ? null
        : Element.fromJson(json['element_duration'] as Map<String, dynamic>),
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
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'type': instance.type?.toJson(),
      'modality': instance.modality?.toJson(),
      'view': instance.view?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'createdDateTime': instance.createdDateTime,
      'element_createdDateTime': instance.element_createdDateTime?.toJson(),
      'createdPeriod': instance.createdPeriod?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'element_issued': instance.element_issued?.toJson(),
      'operator': instance.operator?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'deviceName': instance.deviceName,
      'element_deviceName': instance.element_deviceName?.toJson(),
      'device': instance.device?.toJson(),
      'height': instance.height,
      'element_height': instance.element_height?.toJson(),
      'width': instance.width,
      'element_width': instance.element_width?.toJson(),
      'frames': instance.frames,
      'element_frames': instance.element_frames?.toJson(),
      'duration': instance.duration,
      'element_duration': instance.element_duration?.toJson(),
      'content': instance.content?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
