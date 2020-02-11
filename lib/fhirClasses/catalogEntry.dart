import 'package:hive/hive.dart';
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
@HiveType(typeId: 107)
class CatalogEntry {

  //  This is a CatalogEntry resource
  @HiveField(0)
  final String resourceType= 'CatalogEntry';

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

  //  Used in supporting different identifiers for the same product, e.g.
  // manufacturer code and retailer code.
  @HiveField(11)
  List<Identifier> identifier;

  //  The type of item - medication, device, service, protocol or other.
  @HiveField(12)
  CodeableConcept type;

  //  Whether the entry represents an orderable item.
  @HiveField(13)
  bool orderable;

  //  Extensions for orderable
  @HiveField(14)
  Element elementOrderable;

  //  The item in a catalog or definition.
  @HiveField(15)
  Reference referencedItem;

  //  Used in supporting related concepts, e.g. NDC to RxNorm.
  @HiveField(16)
  List<Identifier> additionalIdentifier;

  //  Classes of devices, or ATC for medication.
  @HiveField(17)
  List<CodeableConcept> classification;

  //  Used to support catalog exchange even for unsupported products, e.g.
  // getting list of medications even if not prescribable.
  @HiveField(18)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  The time period in which this catalog entry is expected to be active.
  @HiveField(20)
  Period validityPeriod;

  //  The date until which this catalog entry is expected to be active.
  @HiveField(21)
  DateTime validTo;

  //  Extensions for validTo
  @HiveField(22)
  Element elementValidTo;

  //  Typically date of issue is different from the beginning of the
  // validity. This can be used to see when an item was last updated.
  @HiveField(23)
  DateTime lastUpdated;

  //  Extensions for lastUpdated
  @HiveField(24)
  Element elementLastUpdated;

  //  Used for examplefor Out of Formulary, or any specifics.
  @HiveField(25)
  List<CodeableConcept> additionalCharacteristic;

  //  User for example for ATC classification, or.
  @HiveField(26)
  List<CodeableConcept> additionalClassification;

  //  Used for example, to point to a substance, or to a device used to
  // administer a medication.
  @HiveField(27)
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The type of relation to the related item: child, parent,
  // packageContent, containerPackage, usedIn, uses, requires, etc.
  String relationtype; // <code> enum: triggers/is-replaced-by;

  //  Extensions for relationtype
  Element elementRelationtype;

  //  The reference to the related item.
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
// TypeAdapterGenerator
// **************************************************************************

class CatalogEntryAdapter extends TypeAdapter<CatalogEntry> {
  @override
  final typeId = 107;

  @override
  CatalogEntry read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatalogEntry(
      fields[15] as Reference,
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
