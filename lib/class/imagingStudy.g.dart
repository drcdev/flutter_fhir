// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagingStudy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagingStudy _$ImagingStudyFromJson(Map<String, dynamic> json) {
  return ImagingStudy(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    modality: (json['modality'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    element_started: json['element_started'] == null
        ? null
        : Element.fromJson(json['element_started'] as Map<String, dynamic>),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referrer: json['referrer'] == null
        ? null
        : Reference.fromJson(json['referrer'] as Map<String, dynamic>),
    interpreter: (json['interpreter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numberOfSeries: json['numberOfSeries'] as int,
    element_numberOfSeries: json['element_numberOfSeries'] == null
        ? null
        : Element.fromJson(
            json['element_numberOfSeries'] as Map<String, dynamic>),
    numberOfInstances: json['numberOfInstances'] as int,
    element_numberOfInstances: json['element_numberOfInstances'] == null
        ? null
        : Element.fromJson(
            json['element_numberOfInstances'] as Map<String, dynamic>),
    procedureReference: json['procedureReference'] == null
        ? null
        : Reference.fromJson(
            json['procedureReference'] as Map<String, dynamic>),
    procedureCode: (json['procedureCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    series: (json['series'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Series.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagingStudyToJson(ImagingStudy instance) =>
    <String, dynamic>{
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
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'modality': instance.modality?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'started': instance.started?.toIso8601String(),
      'element_started': instance.element_started?.toJson(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'referrer': instance.referrer?.toJson(),
      'interpreter': instance.interpreter?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'numberOfSeries': instance.numberOfSeries,
      'element_numberOfSeries': instance.element_numberOfSeries?.toJson(),
      'numberOfInstances': instance.numberOfInstances,
      'element_numberOfInstances': instance.element_numberOfInstances?.toJson(),
      'procedureReference': instance.procedureReference?.toJson(),
      'procedureCode':
          instance.procedureCode?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'series': instance.series?.map((e) => e?.toJson())?.toList(),
    };

ImagingStudy_Series _$ImagingStudy_SeriesFromJson(Map<String, dynamic> json) {
  return ImagingStudy_Series(
    json['modality'] == null
        ? null
        : Coding.fromJson(json['modality'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as String,
    element_uid: json['element_uid'] == null
        ? null
        : Element.fromJson(json['element_uid'] as Map<String, dynamic>),
    number: json['number'] as int,
    element_number: json['element_number'] == null
        ? null
        : Element.fromJson(json['element_number'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    numberOfInstances: json['numberOfInstances'] as int,
    element_numberOfInstances: json['element_numberOfInstances'] == null
        ? null
        : Element.fromJson(
            json['element_numberOfInstances'] as Map<String, dynamic>),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : Coding.fromJson(json['bodySite'] as Map<String, dynamic>),
    laterality: json['laterality'] == null
        ? null
        : Coding.fromJson(json['laterality'] as Map<String, dynamic>),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    element_started: json['element_started'] == null
        ? null
        : Element.fromJson(json['element_started'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagingStudy_SeriesToJson(
        ImagingStudy_Series instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uid': instance.uid,
      'element_uid': instance.element_uid?.toJson(),
      'number': instance.number,
      'element_number': instance.element_number?.toJson(),
      'modality': instance.modality?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'numberOfInstances': instance.numberOfInstances,
      'element_numberOfInstances': instance.element_numberOfInstances?.toJson(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'laterality': instance.laterality?.toJson(),
      'specimen': instance.specimen?.map((e) => e?.toJson())?.toList(),
      'started': instance.started?.toIso8601String(),
      'element_started': instance.element_started?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
    };

ImagingStudy_Performer _$ImagingStudy_PerformerFromJson(
    Map<String, dynamic> json) {
  return ImagingStudy_Performer(
    json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    function: json['function'] == null
        ? null
        : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagingStudy_PerformerToJson(
        ImagingStudy_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

ImagingStudy_Instance _$ImagingStudy_InstanceFromJson(
    Map<String, dynamic> json) {
  return ImagingStudy_Instance(
    json['sopClass'] == null
        ? null
        : Coding.fromJson(json['sopClass'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as String,
    element_uid: json['element_uid'] == null
        ? null
        : Element.fromJson(json['element_uid'] as Map<String, dynamic>),
    number: json['number'] as int,
    element_number: json['element_number'] == null
        ? null
        : Element.fromJson(json['element_number'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagingStudy_InstanceToJson(
        ImagingStudy_Instance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uid': instance.uid,
      'element_uid': instance.element_uid?.toJson(),
      'sopClass': instance.sopClass?.toJson(),
      'number': instance.number,
      'element_number': instance.element_number?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
    };
