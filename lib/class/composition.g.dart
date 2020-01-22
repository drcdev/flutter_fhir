// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Composition _$CompositionFromJson(Map<String, dynamic> json) {
  return Composition(
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
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    confidentiality: json['confidentiality'] as String,
    attester: (json['attester'] as List)
        ?.map((e) =>
            e == null ? null : Attester.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) =>
            e == null ? null : RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map(
            (e) => e == null ? null : Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    section: (json['section'] as List)
        ?.map((e) =>
            e == null ? null : Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )..encounter = json['encounter'] == null
      ? null
      : Reference.fromJson(json['encounter'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CompositionToJson(Composition instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'status': instance.status,
      'type': instance.type?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'confidentiality': instance.confidentiality,
      'attester': instance.attester?.map((e) => e?.toJson())?.toList(),
      'custodian': instance.custodian?.toJson(),
      'relatesTo': instance.relatesTo?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.map((e) => e?.toJson())?.toList(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };

Attester _$AttesterFromJson(Map<String, dynamic> json) {
  return Attester(
    mode: json['mode'] as String,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttesterToJson(Attester instance) => <String, dynamic>{
      'mode': instance.mode,
      'time': instance.time?.toIso8601String(),
      'party': instance.party?.toJson(),
    };

RelatesTo _$RelatesToFromJson(Map<String, dynamic> json) {
  return RelatesTo(
    code: json['code'] as String,
    targetIdentifier: json['targetIdentifier'] == null
        ? null
        : Identifier.fromJson(json['targetIdentifier'] as Map<String, dynamic>),
    targetReference: json['targetReference'] == null
        ? null
        : Reference.fromJson(json['targetReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RelatesToToJson(RelatesTo instance) => <String, dynamic>{
      'code': instance.code,
      'targetIdentifier': instance.targetIdentifier?.toJson(),
      'targetReference': instance.targetReference?.toJson(),
    };

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

Section _$SectionFromJson(Map<String, dynamic> json) {
  return Section(
    title: json['title'] as String,
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focus: json['focus'] == null
        ? null
        : Reference.fromJson(json['focus'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
    section: (json['section'] as List)
        ?.map((e) =>
            e == null ? null : Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'title': instance.title,
      'code': instance.code?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'focus': instance.focus?.toJson(),
      'text': instance.text?.toJson(),
      'mode': instance.mode,
      'orderedBy': instance.orderedBy?.toJson(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'emptyReason': instance.emptyReason?.toJson(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };
