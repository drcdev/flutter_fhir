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

class BiologicallyDerivedProduct {
  static Future<BiologicallyDerivedProduct> newInstance({
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
    String productCategory,
    Element elementProductCategory,
    CodeableConcept productCode,
    String status,
    Element elementStatus,
    List<Reference> request,
    int quantity,
    Element elementQuantity,
    List<Reference> parent,
    BiologicallyDerivedProduct_Collection collection,
    List<BiologicallyDerivedProduct_Processing> processing,
    BiologicallyDerivedProduct_Manipulation manipulation,
    List<BiologicallyDerivedProduct_Storage> storage,
  }) async {
    var fhirDb = new DatabaseHelper();
    BiologicallyDerivedProduct newBiologicallyDerivedProduct =
        new BiologicallyDerivedProduct(
      resourceType: 'BiologicallyDerivedProduct',
      id: id ?? await fhirDb.newResourceId('BiologicallyDerivedProduct'),
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
      productCategory: productCategory,
      elementProductCategory: elementProductCategory,
      productCode: productCode,
      status: status,
      elementStatus: elementStatus,
      request: request,
      quantity: quantity,
      elementQuantity: elementQuantity,
      parent: parent,
      collection: collection,
      processing: processing,
      manipulation: manipulation,
      storage: storage,
    );
    newBiologicallyDerivedProduct.meta.createdAt = DateTime.now();
    newBiologicallyDerivedProduct.meta.lastUpdated =
        newBiologicallyDerivedProduct.meta.createdAt;
    int saved = await fhirDb.saveResource(newBiologicallyDerivedProduct);
    return newBiologicallyDerivedProduct;
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
  String resourceType = 'BiologicallyDerivedProduct';
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
  String productCategory;
  @HiveField(13)
  Element elementProductCategory;
  @HiveField(14)
  CodeableConcept productCode;
  @HiveField(15)
  String status;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  List<Reference> request;
  @HiveField(18)
  int quantity;
  @HiveField(19)
  Element elementQuantity;
  @HiveField(20)
  List<Reference> parent;
  @HiveField(21)
  BiologicallyDerivedProduct_Collection collection;
  @HiveField(22)
  List<BiologicallyDerivedProduct_Processing> processing;
  @HiveField(23)
  BiologicallyDerivedProduct_Manipulation manipulation;
  @HiveField(24)
  List<BiologicallyDerivedProduct_Storage> storage;

  BiologicallyDerivedProduct({
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
    this.storage,
  });

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) =>
      _$BiologicallyDerivedProductFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProductToJson(this);
}

class BiologicallyDerivedProduct_Collection {
  static Future<BiologicallyDerivedProduct_Collection> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference collector,
    Reference source,
    String collectedDateTime,
    Element elementCollectedDateTime,
    Period collectedPeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    BiologicallyDerivedProduct_Collection
        newBiologicallyDerivedProduct_Collection =
        new BiologicallyDerivedProduct_Collection(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      collector: collector,
      source: source,
      collectedDateTime: collectedDateTime,
      elementCollectedDateTime: elementCollectedDateTime,
      collectedPeriod: collectedPeriod,
    );
    return newBiologicallyDerivedProduct_Collection;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference collector;
  @HiveField(4)
  Reference source;
  @HiveField(5)
  String collectedDateTime;
  @HiveField(6)
  Element elementCollectedDateTime;
  @HiveField(7)
  Period collectedPeriod;

  BiologicallyDerivedProduct_Collection({
    this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.elementCollectedDateTime,
    this.collectedPeriod,
  });

  factory BiologicallyDerivedProduct_Collection.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProduct_CollectionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProduct_CollectionToJson(this);
}

class BiologicallyDerivedProduct_Processing {
  static Future<BiologicallyDerivedProduct_Processing> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    CodeableConcept procedure,
    Reference additive,
    String timeDateTime,
    Element elementTimeDateTime,
    Period timePeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    BiologicallyDerivedProduct_Processing
        newBiologicallyDerivedProduct_Processing =
        new BiologicallyDerivedProduct_Processing(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      procedure: procedure,
      additive: additive,
      timeDateTime: timeDateTime,
      elementTimeDateTime: elementTimeDateTime,
      timePeriod: timePeriod,
    );
    return newBiologicallyDerivedProduct_Processing;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String description;
  @HiveField(4)
  Element elementDescription;
  @HiveField(5)
  CodeableConcept procedure;
  @HiveField(6)
  Reference additive;
  @HiveField(7)
  String timeDateTime;
  @HiveField(8)
  Element elementTimeDateTime;
  @HiveField(9)
  Period timePeriod;

  BiologicallyDerivedProduct_Processing({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.elementTimeDateTime,
    this.timePeriod,
  });

  factory BiologicallyDerivedProduct_Processing.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProduct_ProcessingFromJson(json);
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProduct_ProcessingToJson(this);
}

class BiologicallyDerivedProduct_Manipulation {
  static Future<BiologicallyDerivedProduct_Manipulation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    String timeDateTime,
    Element elementTimeDateTime,
    Period timePeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    BiologicallyDerivedProduct_Manipulation
        newBiologicallyDerivedProduct_Manipulation =
        new BiologicallyDerivedProduct_Manipulation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      timeDateTime: timeDateTime,
      elementTimeDateTime: elementTimeDateTime,
      timePeriod: timePeriod,
    );
    return newBiologicallyDerivedProduct_Manipulation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String description;
  @HiveField(4)
  Element elementDescription;
  @HiveField(5)
  String timeDateTime;
  @HiveField(6)
  Element elementTimeDateTime;
  @HiveField(7)
  Period timePeriod;

  BiologicallyDerivedProduct_Manipulation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.timeDateTime,
    this.elementTimeDateTime,
    this.timePeriod,
  });

  factory BiologicallyDerivedProduct_Manipulation.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProduct_ManipulationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProduct_ManipulationToJson(this);
}

class BiologicallyDerivedProduct_Storage {
  static Future<BiologicallyDerivedProduct_Storage> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    double temperature,
    Element elementTemperature,
    String scale,
    Element elementScale,
    Period duration,
  }) async {
    var fhirDb = new DatabaseHelper();
    BiologicallyDerivedProduct_Storage newBiologicallyDerivedProduct_Storage =
        new BiologicallyDerivedProduct_Storage(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      temperature: temperature,
      elementTemperature: elementTemperature,
      scale: scale,
      elementScale: elementScale,
      duration: duration,
    );
    return newBiologicallyDerivedProduct_Storage;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String description;
  @HiveField(4)
  Element elementDescription;
  @HiveField(5)
  double temperature;
  @HiveField(6)
  Element elementTemperature;
  @HiveField(7)
  String scale;
  @HiveField(8)
  Element elementScale;
  @HiveField(9)
  Period duration;

  BiologicallyDerivedProduct_Storage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.temperature,
    this.elementTemperature,
    this.scale,
    this.elementScale,
    this.duration,
  });

  factory BiologicallyDerivedProduct_Storage.fromJson(
          Map<String, dynamic> json) =>
      _$BiologicallyDerivedProduct_StorageFromJson(json);
  Map<String, dynamic> toJson() =>
      _$BiologicallyDerivedProduct_StorageToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiologicallyDerivedProduct _$BiologicallyDerivedProductFromJson(
    Map<String, dynamic> json) {
  return BiologicallyDerivedProduct(
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
    BiologicallyDerivedProduct instance) {
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
  writeNotNull('productCategory', instance.productCategory);
  writeNotNull(
      'elementProductCategory', instance.elementProductCategory?.toJson());
  writeNotNull('productCode', instance.productCode?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('request', instance.request?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity);
  writeNotNull('elementQuantity', instance.elementQuantity?.toJson());
  writeNotNull('parent', instance.parent?.map((e) => e?.toJson())?.toList());
  writeNotNull('collection', instance.collection?.toJson());
  writeNotNull(
      'processing', instance.processing?.map((e) => e?.toJson())?.toList());
  writeNotNull('manipulation', instance.manipulation?.toJson());
  writeNotNull('storage', instance.storage?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    BiologicallyDerivedProduct_Collection instance) {
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
  writeNotNull('collector', instance.collector?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('collectedDateTime', instance.collectedDateTime);
  writeNotNull(
      'elementCollectedDateTime', instance.elementCollectedDateTime?.toJson());
  writeNotNull('collectedPeriod', instance.collectedPeriod?.toJson());
  return val;
}

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
    BiologicallyDerivedProduct_Processing instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('procedure', instance.procedure?.toJson());
  writeNotNull('additive', instance.additive?.toJson());
  writeNotNull('timeDateTime', instance.timeDateTime);
  writeNotNull('elementTimeDateTime', instance.elementTimeDateTime?.toJson());
  writeNotNull('timePeriod', instance.timePeriod?.toJson());
  return val;
}

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
    BiologicallyDerivedProduct_Manipulation instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('timeDateTime', instance.timeDateTime);
  writeNotNull('elementTimeDateTime', instance.elementTimeDateTime?.toJson());
  writeNotNull('timePeriod', instance.timePeriod?.toJson());
  return val;
}

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
    BiologicallyDerivedProduct_Storage instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('temperature', instance.temperature);
  writeNotNull('elementTemperature', instance.elementTemperature?.toJson());
  writeNotNull('scale', instance.scale);
  writeNotNull('elementScale', instance.elementScale?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BiologicallyDerivedProductAdapter
    extends TypeAdapter<BiologicallyDerivedProduct> {
  @override
  BiologicallyDerivedProduct read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BiologicallyDerivedProduct(
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

class BiologicallyDerivedProduct_CollectionAdapter
    extends TypeAdapter<BiologicallyDerivedProduct_Collection> {
  @override
  BiologicallyDerivedProduct_Collection read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BiologicallyDerivedProduct_Collection(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      collector: fields[3] as Reference,
      source: fields[4] as Reference,
      collectedDateTime: fields[5] as String,
      elementCollectedDateTime: fields[6] as Element,
      collectedPeriod: fields[7] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, BiologicallyDerivedProduct_Collection obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.collector)
      ..writeByte(4)
      ..write(obj.source)
      ..writeByte(5)
      ..write(obj.collectedDateTime)
      ..writeByte(6)
      ..write(obj.elementCollectedDateTime)
      ..writeByte(7)
      ..write(obj.collectedPeriod);
  }
}

class BiologicallyDerivedProduct_ProcessingAdapter
    extends TypeAdapter<BiologicallyDerivedProduct_Processing> {
  @override
  BiologicallyDerivedProduct_Processing read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BiologicallyDerivedProduct_Processing(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      procedure: fields[5] as CodeableConcept,
      additive: fields[6] as Reference,
      timeDateTime: fields[7] as String,
      elementTimeDateTime: fields[8] as Element,
      timePeriod: fields[9] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, BiologicallyDerivedProduct_Processing obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.procedure)
      ..writeByte(6)
      ..write(obj.additive)
      ..writeByte(7)
      ..write(obj.timeDateTime)
      ..writeByte(8)
      ..write(obj.elementTimeDateTime)
      ..writeByte(9)
      ..write(obj.timePeriod);
  }
}

class BiologicallyDerivedProduct_ManipulationAdapter
    extends TypeAdapter<BiologicallyDerivedProduct_Manipulation> {
  @override
  BiologicallyDerivedProduct_Manipulation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BiologicallyDerivedProduct_Manipulation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      timeDateTime: fields[5] as String,
      elementTimeDateTime: fields[6] as Element,
      timePeriod: fields[7] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, BiologicallyDerivedProduct_Manipulation obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.timeDateTime)
      ..writeByte(6)
      ..write(obj.elementTimeDateTime)
      ..writeByte(7)
      ..write(obj.timePeriod);
  }
}

class BiologicallyDerivedProduct_StorageAdapter
    extends TypeAdapter<BiologicallyDerivedProduct_Storage> {
  @override
  BiologicallyDerivedProduct_Storage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BiologicallyDerivedProduct_Storage(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      temperature: fields[5] as double,
      elementTemperature: fields[6] as Element,
      scale: fields[7] as String,
      elementScale: fields[8] as Element,
      duration: fields[9] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, BiologicallyDerivedProduct_Storage obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.temperature)
      ..writeByte(6)
      ..write(obj.elementTemperature)
      ..writeByte(7)
      ..write(obj.scale)
      ..writeByte(8)
      ..write(obj.elementScale)
      ..writeByte(9)
      ..write(obj.duration);
  }
}
