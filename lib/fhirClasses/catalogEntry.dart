import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class CatalogEntry {
  static Future<CatalogEntry> newInstance({
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
    List<CatalogEntry_RelatedEntry> relatedEntry,
  }) async {
    var fhirDb = new DatabaseHelper();
    CatalogEntry newCatalogEntry = new CatalogEntry(
      resourceType: 'CatalogEntry',
      id: id ?? await fhirDb.newResourceId('CatalogEntry'),
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
      relatedEntry: relatedEntry,
    );
    newCatalogEntry.meta.createdAt = DateTime.now();
    newCatalogEntry.meta.lastUpdated = newCatalogEntry.meta.createdAt;
    int saved = await fhirDb.saveResource(newCatalogEntry);
    return newCatalogEntry;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'CatalogEntry';
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
  String status;
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

  CatalogEntry({
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
    this.relatedEntry,
  });

  factory CatalogEntry.fromJson(Map<String, dynamic> json) =>
      _$CatalogEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntryToJson(this);
}

class CatalogEntry_RelatedEntry {
  static Future<CatalogEntry_RelatedEntry> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String relationtype,
    Element elementRelationtype,
    Reference item,
  }) async {
    var fhirDb = new DatabaseHelper();
    CatalogEntry_RelatedEntry newCatalogEntry_RelatedEntry =
        new CatalogEntry_RelatedEntry(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      relationtype: relationtype,
      elementRelationtype: elementRelationtype,
      item: item,
    );
    return newCatalogEntry_RelatedEntry;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String relationtype;
  @HiveField(4)
  Element elementRelationtype;
  @HiveField(5)
  Reference item;

  CatalogEntry_RelatedEntry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.relationtype,
    this.elementRelationtype,
    @required this.item,
  });

  factory CatalogEntry_RelatedEntry.fromJson(Map<String, dynamic> json) =>
      _$CatalogEntry_RelatedEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntry_RelatedEntryToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogEntry _$CatalogEntryFromJson(Map<String, dynamic> json) {
  return CatalogEntry(
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

Map<String, dynamic> _$CatalogEntryToJson(CatalogEntry instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('orderable', instance.orderable);
  writeNotNull('elementOrderable', instance.elementOrderable?.toJson());
  writeNotNull('referencedItem', instance.referencedItem?.toJson());
  writeNotNull('additionalIdentifier',
      instance.additionalIdentifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('classification',
      instance.classification?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('validityPeriod', instance.validityPeriod?.toJson());
  writeNotNull('validTo', instance.validTo?.toIso8601String());
  writeNotNull('elementValidTo', instance.elementValidTo?.toJson());
  writeNotNull('lastUpdated', instance.lastUpdated?.toIso8601String());
  writeNotNull('elementLastUpdated', instance.elementLastUpdated?.toJson());
  writeNotNull('additionalCharacteristic',
      instance.additionalCharacteristic?.map((e) => e?.toJson())?.toList());
  writeNotNull('additionalClassification',
      instance.additionalClassification?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'relatedEntry', instance.relatedEntry?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    CatalogEntry_RelatedEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('relationtype', instance.relationtype);
  writeNotNull('elementRelationtype', instance.elementRelationtype?.toJson());
  writeNotNull('item', instance.item?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatalogEntryAdapter extends TypeAdapter<CatalogEntry> {
  @override
  CatalogEntry read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatalogEntry(
      resourceType: fields[0] as String,
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

class CatalogEntry_RelatedEntryAdapter
    extends TypeAdapter<CatalogEntry_RelatedEntry> {
  @override
  CatalogEntry_RelatedEntry read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatalogEntry_RelatedEntry(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      relationtype: fields[3] as String,
      elementRelationtype: fields[4] as Element,
      item: fields[5] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, CatalogEntry_RelatedEntry obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.relationtype)
      ..writeByte(4)
      ..write(obj.elementRelationtype)
      ..writeByte(5)
      ..write(obj.item);
  }
}
