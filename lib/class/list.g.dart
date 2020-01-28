// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

List _$ListFromJson(Map<String, dynamic> json) {
  return List(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: json['contained'] == null
        ? null
        : List.fromJson(json['contained'] as Map<String, dynamic>),
    extension: json['extension'] == null
        ? null
        : List.fromJson(json['extension'] as Map<String, dynamic>),
    modifierExtension: json['modifierExtension'] == null
        ? null
        : List.fromJson(json['modifierExtension'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : List.fromJson(json['identifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    mode: json['mode'] as String,
    title: json['title'] as String,
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    note: json['note'] == null
        ? null
        : List.fromJson(json['note'] as Map<String, dynamic>),
    entry: json['entry'] == null
        ? null
        : List.fromJson(json['entry'] as Map<String, dynamic>),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListToJson(List instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.toJson(),
      'extension': instance.extension?.toJson(),
      'modifierExtension': instance.modifierExtension?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'status': instance.status,
      'mode': instance.mode,
      'title': instance.title,
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'source': instance.source?.toJson(),
      'orderedBy': instance.orderedBy?.toJson(),
      'note': instance.note?.toJson(),
      'entry': instance.entry?.toJson(),
      'emptyReason': instance.emptyReason?.toJson(),
    };

List_Entry _$List_EntryFromJson(Map<String, dynamic> json) {
  return List_Entry(
    id: json['id'] as String,
    extension: json['extension'] == null
        ? null
        : List.fromJson(json['extension'] as Map<String, dynamic>),
    modifierExtension: json['modifierExtension'] == null
        ? null
        : List.fromJson(json['modifierExtension'] as Map<String, dynamic>),
    flag: json['flag'] == null
        ? null
        : CodeableConcept.fromJson(json['flag'] as Map<String, dynamic>),
    deleted: json['deleted'] as bool,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    item: json['item'] == null
        ? null
        : Reference.fromJson(json['item'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$List_EntryToJson(List_Entry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.toJson(),
      'modifierExtension': instance.modifierExtension?.toJson(),
      'flag': instance.flag?.toJson(),
      'deleted': instance.deleted,
      'date': instance.date?.toIso8601String(),
      'item': instance.item?.toJson(),
    };
