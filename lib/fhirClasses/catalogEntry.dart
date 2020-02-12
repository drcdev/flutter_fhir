import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 71)
class CatalogEntry {

	static Future<CatalogEntry> newInstance({
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
		CodeableConcept type,
		bool orderable,
		Element elementOrderable,
		Reference referencedItem,
		List<Identifier> additionalIdentifier,
		List<CodeableConcept> classification,
		String status,
		Element elementStatus,
		Period validityPeriod,
		DateTime validTo,
		Element elementValidTo,
		DateTime lastUpdated,
		Element elementLastUpdated,
		List<CodeableConcept> additionalCharacteristic,
		List<CodeableConcept> additionalClassification,
		List<CatalogEntry_RelatedEntry> relatedEntry}) async {
	CatalogEntry newCatalogEntry = new CatalogEntry(
			id: await newId('CatalogEntry'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			type: type,
			orderable: orderable,
			elementOrderable: elementOrderable,
			referencedItem: referencedItem,
			additionalIdentifier: additionalIdentifier,
			classification: classification,
			status: status,
			elementStatus: elementStatus,
			validityPeriod: validityPeriod,
			validTo: validTo,
			elementValidTo: elementValidTo,
			lastUpdated: lastUpdated,
			elementLastUpdated: elementLastUpdated,
			additionalCharacteristic: additionalCharacteristic,
			additionalClassification: additionalClassification,
			relatedEntry: relatedEntry);
	var catalogEntryBox = await Hive.openBox<CatalogEntry>('CatalogEntryBox');
	catalogEntryBox.add(newCatalogEntry);
	return newCatalogEntry;
}
  @HiveField(0)
  final String resourceType= 'CatalogEntry';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  CodeableConcept type;
  @HiveField(13)
  bool orderable;
  @HiveField(14)
  Element elementOrderable;
  @HiveField(15)
  Reference referencedItem;
  @HiveField(16)
  List<Identifier> additionalIdentifier;
  @HiveField(17)
  List<CodeableConcept> classification;
  @HiveField(18)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  Period validityPeriod;
  @HiveField(21)
  DateTime validTo;
  @HiveField(22)
  Element elementValidTo;
  @HiveField(23)
  DateTime lastUpdated;
  @HiveField(24)
  Element elementLastUpdated;
  @HiveField(25)
  List<CodeableConcept> additionalCharacteristic;
  @HiveField(26)
  List<CodeableConcept> additionalClassification;
  @HiveField(27)
  List<CatalogEntry_RelatedEntry> relatedEntry;

CatalogEntry(
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
    @required this.referencedItem,
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

	static Future<CatalogEntry_RelatedEntry> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String relationtype,
		Element elementRelationtype,
		Reference item}) async {
	CatalogEntry_RelatedEntry newCatalogEntry_RelatedEntry = new CatalogEntry_RelatedEntry(
			id: await newId('CatalogEntry_RelatedEntry'),
			extension: extension,
			modifierExtension: modifierExtension,
			relationtype: relationtype,
			elementRelationtype: elementRelationtype,
			item: item);
	var catalogEntry_RelatedEntryBox = await Hive.openBox<CatalogEntry_RelatedEntry>('CatalogEntry_RelatedEntryBox');
	catalogEntry_RelatedEntryBox.add(newCatalogEntry_RelatedEntry);
	return newCatalogEntry_RelatedEntry;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String relationtype; // <code> enum: triggers/is-replaced-by;
  Element elementRelationtype;
  Reference item;

CatalogEntry_RelatedEntry(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.relationtype,
    this.elementRelationtype,
    @required this.item
    });

  factory CatalogEntry_RelatedEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntry_RelatedEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntry_RelatedEntryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatalogEntryAdapter extends TypeAdapter<CatalogEntry> {
  @override
  final typeId = 71;

  @override
  CatalogEntry read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatalogEntry(
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
      type: fields[12] as CodeableConcept,
      orderable: fields[13] as bool,
      elementOrderable: fields[14] as Element,
      referencedItem: fields[15] as Reference,
      additionalIdentifier: (fields[16] as List)?.cast<Identifier>(),
      classification: (fields[17] as List)?.cast<CodeableConcept>(),
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      validityPeriod: fields[20] as Period,
      validTo: fields[21] as DateTime,
      elementValidTo: fields[22] as Element,
      lastUpdated: fields[23] as DateTime,
      elementLastUpdated: fields[24] as Element,
      additionalCharacteristic: (fields[25] as List)?.cast<CodeableConcept>(),
      additionalClassification: (fields[26] as List)?.cast<CodeableConcept>(),
      relatedEntry: (fields[27] as List)?.cast<CatalogEntry_RelatedEntry>(),
    );
  }

  @override
  void write(BinaryWriter writer, CatalogEntry obj) {
    writer
      ..writeByte(28)
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
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.orderable)
      ..writeByte(14)
      ..write(obj.elementOrderable)
      ..writeByte(15)
      ..write(obj.referencedItem)
      ..writeByte(16)
      ..write(obj.additionalIdentifier)
      ..writeByte(17)
      ..write(obj.classification)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.validityPeriod)
      ..writeByte(21)
      ..write(obj.validTo)
      ..writeByte(22)
      ..write(obj.elementValidTo)
      ..writeByte(23)
      ..write(obj.lastUpdated)
      ..writeByte(24)
      ..write(obj.elementLastUpdated)
      ..writeByte(25)
      ..write(obj.additionalCharacteristic)
      ..writeByte(26)
      ..write(obj.additionalClassification)
      ..writeByte(27)
      ..write(obj.relatedEntry);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogEntry _$CatalogEntryFromJson(Map<String, dynamic> json) {
  return CatalogEntry(
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
    referencedItem: json['referencedItem'] == null
        ? null
        : Reference.fromJson(json['referencedItem'] as Map<String, dynamic>),
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
    item: json['item'] == null
        ? null
        : Reference.fromJson(json['item'] as Map<String, dynamic>),
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
