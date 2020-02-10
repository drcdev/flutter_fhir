import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class CatalogEntry {
  final String resourceType= 'CatalogEntry';
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
  CodeableConcept type;
  bool orderable;
  Element elementOrderable;
  Reference referencedItem;
  List<Identifier> additionalIdentifier;
  List<CodeableConcept> classification;
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  Period validityPeriod;
  DateTime validTo;
  Element elementValidTo;
  DateTime lastUpdated;
  Element elementLastUpdated;
  List<CodeableConcept> additionalCharacteristic;
  List<CodeableConcept> additionalClassification;
  List<CatalogEntry_RelatedEntry> relatedEntry;

CatalogEntry(
  this.referencedItem,
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
    this.type,
    this.orderable,
    this.elementOrderable,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.elementStatus,
    this.validityPeriod,
    this.validTo,
    this.elementValidTo,
    this.lastUpdated,
    this.elementLastUpdated,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry
    });

  factory CatalogEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CatalogEntry_RelatedEntry {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String relationtype; // <code> enum: triggers/is-replaced-by;
  Element elementRelationtype;
  Reference item;

CatalogEntry_RelatedEntry(
  this.item,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.relationtype,
    this.elementRelationtype
    });

  factory CatalogEntry_RelatedEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntry_RelatedEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntry_RelatedEntryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    orderable: json['orderable'] as bool,
    elementOrderable: json['elementOrderable'] == null
        ? null
        : Element.fromJson(json['elementOrderable'] as Map<String, dynamic>),
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
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
    validTo: json['validTo'] == null
        ? null
        : DateTime.parse(json['validTo'] as String),
    elementValidTo: json['elementValidTo'] == null
        ? null
        : Element.fromJson(json['elementValidTo'] as Map<String, dynamic>),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
    elementLastUpdated: json['elementLastUpdated'] == null
        ? null
        : Element.fromJson(json['elementLastUpdated'] as Map<String, dynamic>),
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
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'orderable': instance.orderable,
      'elementOrderable': instance.elementOrderable?.toJson(),
      'referencedItem': instance.referencedItem?.toJson(),
      'additionalIdentifier':
          instance.additionalIdentifier?.map((e) => e?.toJson())?.toList(),
      'classification':
          instance.classification?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
      'validTo': instance.validTo?.toIso8601String(),
      'elementValidTo': instance.elementValidTo?.toJson(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'elementLastUpdated': instance.elementLastUpdated?.toJson(),
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
    elementRelationtype: json['elementRelationtype'] == null
        ? null
        : Element.fromJson(json['elementRelationtype'] as Map<String, dynamic>),
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
      'elementRelationtype': instance.elementRelationtype?.toJson(),
      'item': instance.item?.toJson(),
    };
