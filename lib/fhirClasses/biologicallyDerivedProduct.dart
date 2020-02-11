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
@HiveType(typeId: 65)
class BiologicallyDerivedProduct {

  //  This is a BiologicallyDerivedProduct resource
  @HiveField(0)
  final String resourceType= 'BiologicallyDerivedProduct';

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

  //  This records identifiers associated with this biologically derived
  // product instance that are defined by business processes and/or used to
  // refer to it when a direct URL reference to the resource itself is not
  // appropriate (e.g. in CDA documents, or in written / printed
  // documentation).
  @HiveField(11)
  List<Identifier> identifier;

  //  Broad category of this product.
  @HiveField(12)
  String productCategory; // <code> enum: organ/tissue/fluid/cells/biologicalAgent;

  //  Extensions for productCategory
  @HiveField(13)
  Element elementProductCategory;

  //  A code that identifies the kind of this biologically derived product
  // (SNOMED Ctcode).
  @HiveField(14)
  CodeableConcept productCode;

  //  Whether the product is currently available.
  @HiveField(15)
  String status; // <code> enum: available/unavailable;

  //  Extensions for status
  @HiveField(16)
  Element elementStatus;

  //  Procedure request to obtain this biologically derived product.
  @HiveField(17)
  List<Reference> request;

  //  Number of discrete units within this product.
  @HiveField(18)
  int quantity;

  //  Extensions for quantity
  @HiveField(19)
  Element elementQuantity;

  //  Parent product (if any).
  @HiveField(20)
  List<Reference> parent;

  //  How this product was collected.
  @HiveField(21)
  BiologicallyDerivedProduct_Collection collection;

  //  Any processing of the product during collection that does not change
  // the fundamental nature of the product. For example adding
  // anti-coagulants during the collection of Peripheral Blood Stem Cells.
  @HiveField(22)
  List<BiologicallyDerivedProduct_Processing> processing;

  //  Any manipulation of product post-collection that is intended to alter
  // the product.  For example a buffy-coat enrichment or CD8 reduction of
  // Peripheral Blood Stem Cells to make it more suitable for infusion.
  @HiveField(23)
  BiologicallyDerivedProduct_Manipulation manipulation;

  //  Product storage.
  @HiveField(24)
  List<BiologicallyDerivedProduct_Storage> storage;

BiologicallyDerivedProduct(
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
    this.productCategory,
    this.elementProductCategory,
    this.productCode,
    this.status,
    this.elementStatus,
    this.request,
    this.quantity,
    this.elementQuantity,
    this.parent,
    this.collection,
    this.processing,
    this.manipulation,
    this.storage
    });

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProductFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Collection {

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

  //  Healthcare professional who is performing the collection.
  Reference collector;

  //  The patient or entity, such as a hospital or vendor in the case of a
  // processed/manipulated/manufactured product, providing the product.
  Reference source;

  //  Time of product collection.
  String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for collectedDateTime
  Element elementCollectedDateTime;

  //  Time of product collection.
  Period collectedPeriod;

BiologicallyDerivedProduct_Collection(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.elementCollectedDateTime,
    this.collectedPeriod
    });

  factory BiologicallyDerivedProduct_Collection.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Processing {

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

  //  Description of of processing.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Procesing code.
  CodeableConcept procedure;

  //  Substance added during processing.
  Reference additive;

  //  Time of processing.
  String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timeDateTime
  Element elementTimeDateTime;

  //  Time of processing.
  Period timePeriod;

BiologicallyDerivedProduct_Processing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.elementTimeDateTime,
    this.timePeriod
    });

  factory BiologicallyDerivedProduct_Processing.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Manipulation {

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

  //  Description of manipulation.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Time of manipulation.
  String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timeDateTime
  Element elementTimeDateTime;

  //  Time of manipulation.
  Period timePeriod;

BiologicallyDerivedProduct_Manipulation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.timeDateTime,
    this.elementTimeDateTime,
    this.timePeriod
    });

  factory BiologicallyDerivedProduct_Manipulation.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ManipulationFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_ManipulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Storage {

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

  //  Description of storage.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Storage temperature.
  double temperature;

  //  Extensions for temperature
  Element elementTemperature;

  //  Temperature scale used.
  String scale; // <code> enum: farenheit/celsius/kelvin;

  //  Extensions for scale
  Element elementScale;

  //  Storage timeperiod.
  Period duration;

BiologicallyDerivedProduct_Storage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.temperature,
    this.elementTemperature,
    this.scale,
    this.elementScale,
    this.duration
    });

  factory BiologicallyDerivedProduct_Storage.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_StorageFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_StorageToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BiologicallyDerivedProductAdapter
    extends TypeAdapter<BiologicallyDerivedProduct> {
  @override
  final typeId = 65;

  @override
  BiologicallyDerivedProduct read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BiologicallyDerivedProduct(
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
      productCategory: fields[12] as String,
      elementProductCategory: fields[13] as Element,
      productCode: fields[14] as CodeableConcept,
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      request: (fields[17] as List)?.cast<Reference>(),
      quantity: fields[18] as int,
      elementQuantity: fields[19] as Element,
      parent: (fields[20] as List)?.cast<Reference>(),
      collection: fields[21] as BiologicallyDerivedProduct_Collection,
      processing:
          (fields[22] as List)?.cast<BiologicallyDerivedProduct_Processing>(),
      manipulation: fields[23] as BiologicallyDerivedProduct_Manipulation,
      storage: (fields[24] as List)?.cast<BiologicallyDerivedProduct_Storage>(),
    );
  }

  @override
  void write(BinaryWriter writer, BiologicallyDerivedProduct obj) {
    writer
      ..writeByte(25)
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
      ..write(obj.productCategory)
      ..writeByte(13)
      ..write(obj.elementProductCategory)
      ..writeByte(14)
      ..write(obj.productCode)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.request)
      ..writeByte(18)
      ..write(obj.quantity)
      ..writeByte(19)
      ..write(obj.elementQuantity)
      ..writeByte(20)
      ..write(obj.parent)
      ..writeByte(21)
      ..write(obj.collection)
      ..writeByte(22)
      ..write(obj.processing)
      ..writeByte(23)
      ..write(obj.manipulation)
      ..writeByte(24)
      ..write(obj.storage);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiologicallyDerivedProduct _$BiologicallyDerivedProductFromJson(
    Map<String, dynamic> json) {
  return BiologicallyDerivedProduct(
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
    productCategory: json['productCategory'] as String,
    elementProductCategory: json['elementProductCategory'] == null
        ? null
        : Element.fromJson(
            json['elementProductCategory'] as Map<String, dynamic>),
    productCode: json['productCode'] == null
        ? null
        : CodeableConcept.fromJson(json['productCode'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    request: (json['request'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] as int,
    elementQuantity: json['elementQuantity'] == null
        ? null
        : Element.fromJson(json['elementQuantity'] as Map<String, dynamic>),
    parent: (json['parent'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    collection: json['collection'] == null
        ? null
        : BiologicallyDerivedProduct_Collection.fromJson(
            json['collection'] as Map<String, dynamic>),
    processing: (json['processing'] as List)
        ?.map((e) => e == null
            ? null
            : BiologicallyDerivedProduct_Processing.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    manipulation: json['manipulation'] == null
        ? null
        : BiologicallyDerivedProduct_Manipulation.fromJson(
            json['manipulation'] as Map<String, dynamic>),
    storage: (json['storage'] as List)
        ?.map((e) => e == null
            ? null
            : BiologicallyDerivedProduct_Storage.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BiologicallyDerivedProductToJson(
        BiologicallyDerivedProduct instance) =>
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
      'productCategory': instance.productCategory,
      'elementProductCategory': instance.elementProductCategory?.toJson(),
      'productCode': instance.productCode?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'request': instance.request?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity,
      'elementQuantity': instance.elementQuantity?.toJson(),
      'parent': instance.parent?.map((e) => e?.toJson())?.toList(),
      'collection': instance.collection?.toJson(),
      'processing': instance.processing?.map((e) => e?.toJson())?.toList(),
      'manipulation': instance.manipulation?.toJson(),
      'storage': instance.storage?.map((e) => e?.toJson())?.toList(),
    };

BiologicallyDerivedProduct_Collection
    _$BiologicallyDerivedProduct_CollectionFromJson(Map<String, dynamic> json) {
  return BiologicallyDerivedProduct_Collection(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    collector: json['collector'] == null
        ? null
        : Reference.fromJson(json['collector'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    collectedDateTime: json['collectedDateTime'] as String,
    elementCollectedDateTime: json['elementCollectedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementCollectedDateTime'] as Map<String, dynamic>),
    collectedPeriod: json['collectedPeriod'] == null
        ? null
        : Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BiologicallyDerivedProduct_CollectionToJson(
        BiologicallyDerivedProduct_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'collector': instance.collector?.toJson(),
      'source': instance.source?.toJson(),
      'collectedDateTime': instance.collectedDateTime,
      'elementCollectedDateTime': instance.elementCollectedDateTime?.toJson(),
      'collectedPeriod': instance.collectedPeriod?.toJson(),
    };

BiologicallyDerivedProduct_Processing
    _$BiologicallyDerivedProduct_ProcessingFromJson(Map<String, dynamic> json) {
  return BiologicallyDerivedProduct_Processing(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    procedure: json['procedure'] == null
        ? null
        : CodeableConcept.fromJson(json['procedure'] as Map<String, dynamic>),
    additive: json['additive'] == null
        ? null
        : Reference.fromJson(json['additive'] as Map<String, dynamic>),
    timeDateTime: json['timeDateTime'] as String,
    elementTimeDateTime: json['elementTimeDateTime'] == null
        ? null
        : Element.fromJson(json['elementTimeDateTime'] as Map<String, dynamic>),
    timePeriod: json['timePeriod'] == null
        ? null
        : Period.fromJson(json['timePeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BiologicallyDerivedProduct_ProcessingToJson(
        BiologicallyDerivedProduct_Processing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'procedure': instance.procedure?.toJson(),
      'additive': instance.additive?.toJson(),
      'timeDateTime': instance.timeDateTime,
      'elementTimeDateTime': instance.elementTimeDateTime?.toJson(),
      'timePeriod': instance.timePeriod?.toJson(),
    };

BiologicallyDerivedProduct_Manipulation
    _$BiologicallyDerivedProduct_ManipulationFromJson(
        Map<String, dynamic> json) {
  return BiologicallyDerivedProduct_Manipulation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    timeDateTime: json['timeDateTime'] as String,
    elementTimeDateTime: json['elementTimeDateTime'] == null
        ? null
        : Element.fromJson(json['elementTimeDateTime'] as Map<String, dynamic>),
    timePeriod: json['timePeriod'] == null
        ? null
        : Period.fromJson(json['timePeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BiologicallyDerivedProduct_ManipulationToJson(
        BiologicallyDerivedProduct_Manipulation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'timeDateTime': instance.timeDateTime,
      'elementTimeDateTime': instance.elementTimeDateTime?.toJson(),
      'timePeriod': instance.timePeriod?.toJson(),
    };

BiologicallyDerivedProduct_Storage _$BiologicallyDerivedProduct_StorageFromJson(
    Map<String, dynamic> json) {
  return BiologicallyDerivedProduct_Storage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    temperature: (json['temperature'] as num)?.toDouble(),
    elementTemperature: json['elementTemperature'] == null
        ? null
        : Element.fromJson(json['elementTemperature'] as Map<String, dynamic>),
    scale: json['scale'] as String,
    elementScale: json['elementScale'] == null
        ? null
        : Element.fromJson(json['elementScale'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Period.fromJson(json['duration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BiologicallyDerivedProduct_StorageToJson(
        BiologicallyDerivedProduct_Storage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'temperature': instance.temperature,
      'elementTemperature': instance.elementTemperature?.toJson(),
      'scale': instance.scale,
      'elementScale': instance.elementScale?.toJson(),
      'duration': instance.duration?.toJson(),
    };
