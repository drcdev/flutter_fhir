// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Composition _$CompositionFromJson(Map<String, dynamic> json) {
  return Composition(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    confidentiality: json['confidentiality'] as String,
    element_confidentiality: json['element_confidentiality'] == null
        ? null
        : Element.fromJson(
            json['element_confidentiality'] as Map<String, dynamic>),
    attester: (json['attester'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Attester.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompositionToJson(Composition instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'type': instance.type?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'confidentiality': instance.confidentiality,
      'element_confidentiality': instance.element_confidentiality?.toJson(),
      'attester': instance.attester?.map((e) => e?.toJson())?.toList(),
      'custodian': instance.custodian?.toJson(),
      'relatesTo': instance.relatesTo?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.map((e) => e?.toJson())?.toList(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };

Composition_Attester _$Composition_AttesterFromJson(Map<String, dynamic> json) {
  return Composition_Attester(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    element_time: json['element_time'] == null
        ? null
        : Element.fromJson(json['element_time'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_AttesterToJson(
        Composition_Attester instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'time': instance.time?.toIso8601String(),
      'element_time': instance.element_time?.toJson(),
      'party': instance.party?.toJson(),
    };

Composition_RelatesTo _$Composition_RelatesToFromJson(
    Map<String, dynamic> json) {
  return Composition_RelatesTo(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    targetIdentifier: json['targetIdentifier'] == null
        ? null
        : Identifier.fromJson(json['targetIdentifier'] as Map<String, dynamic>),
    targetReference: json['targetReference'] == null
        ? null
        : Reference.fromJson(json['targetReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_RelatesToToJson(
        Composition_RelatesTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'targetIdentifier': instance.targetIdentifier?.toJson(),
      'targetReference': instance.targetReference?.toJson(),
    };

Composition_Event _$Composition_EventFromJson(Map<String, dynamic> json) {
  return Composition_Event(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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

Map<String, dynamic> _$Composition_EventToJson(Composition_Event instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

Composition_Section _$Composition_SectionFromJson(Map<String, dynamic> json) {
  return Composition_Section(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
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
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
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
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_SectionToJson(
        Composition_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'code': instance.code?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'focus': instance.focus?.toJson(),
      'text': instance.text?.toJson(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'orderedBy': instance.orderedBy?.toJson(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'emptyReason': instance.emptyReason?.toJson(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };
