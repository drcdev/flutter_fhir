import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
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

  String resourceType = 'BiologicallyDerivedProduct';
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
  String productCategory;
  Element elementProductCategory;
  CodeableConcept productCode;
  String status;
  Element elementStatus;
  List<Reference> request;
  int quantity;
  Element elementQuantity;
  List<Reference> parent;
  BiologicallyDerivedProduct_Collection collection;
  List<BiologicallyDerivedProduct_Processing> processing;
  BiologicallyDerivedProduct_Manipulation manipulation;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference collector;
  Reference source;
  String collectedDateTime;
  Element elementCollectedDateTime;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  CodeableConcept procedure;
  Reference additive;
  String timeDateTime;
  Element elementTimeDateTime;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String timeDateTime;
  Element elementTimeDateTime;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  double temperature;
  Element elementTemperature;
  String scale;
  Element elementScale;
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
        BiologicallyDerivedProduct instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
