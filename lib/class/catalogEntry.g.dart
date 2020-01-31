// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogEntry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogEntry _$CatalogEntryFromJson(Map<String, dynamic> json) {
  return CatalogEntry(
    json['referencedItem'] == null
        ? null
        : Reference.fromJson(json['referencedItem'] as Map<String, dynamic>),
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    orderable: json['orderable'] as bool,
    element_orderable: json['element_orderable'] == null
        ? null
        : Element.fromJson(json['element_orderable'] as Map<String, dynamic>),
    additionalIdentifier: (json['additionalIdentifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classification: (json['classification'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
    validTo: json['validTo'] == null
        ? null
        : DateTime.parse(json['validTo'] as String),
    element_validTo: json['element_validTo'] == null
        ? null
        : Element.fromJson(json['element_validTo'] as Map<String, dynamic>),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
    element_lastUpdated: json['element_lastUpdated'] == null
        ? null
        : Element.fromJson(json['element_lastUpdated'] as Map<String, dynamic>),
    additionalCharacteristic: (json['additionalCharacteristic'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additionalClassification: (json['additionalClassification'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedEntry: (json['relatedEntry'] as List)
        ?.map((e) => e == null
            ? null
            : CatalogEntry_RelatedEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CatalogEntryToJson(CatalogEntry instance) =>
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
      'type': instance.type?.toJson(),
      'orderable': instance.orderable,
      'element_orderable': instance.element_orderable?.toJson(),
      'referencedItem': instance.referencedItem?.toJson(),
      'additionalIdentifier':
          instance.additionalIdentifier?.map((e) => e?.toJson())?.toList(),
      'classification':
          instance.classification?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
      'validTo': instance.validTo?.toIso8601String(),
      'element_validTo': instance.element_validTo?.toJson(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'element_lastUpdated': instance.element_lastUpdated?.toJson(),
      'additionalCharacteristic':
          instance.additionalCharacteristic?.map((e) => e?.toJson())?.toList(),
      'additionalClassification':
          instance.additionalClassification?.map((e) => e?.toJson())?.toList(),
      'relatedEntry': instance.relatedEntry?.map((e) => e?.toJson())?.toList(),
    };

CatalogEntry_RelatedEntry _$CatalogEntry_RelatedEntryFromJson(
    Map<String, dynamic> json) {
  return CatalogEntry_RelatedEntry(
    json['item'] == null
        ? null
        : Reference.fromJson(json['item'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relationtype: json['relationtype'] as String,
    element_relationtype: json['element_relationtype'] == null
        ? null
        : Element.fromJson(
            json['element_relationtype'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CatalogEntry_RelatedEntryToJson(
        CatalogEntry_RelatedEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'relationtype': instance.relationtype,
      'element_relationtype': instance.element_relationtype?.toJson(),
      'item': instance.item?.toJson(),
    };
