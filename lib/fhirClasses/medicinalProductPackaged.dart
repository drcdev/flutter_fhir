import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/productShelfLife.dart';
import 'package:flutter_fhir/fhirClasses/prodCharacteristic.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/marketingStatus.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicinalProductPackaged {
  static Future<MedicinalProductPackaged> newInstance({
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
    List<Reference> subject,
    String description,
    Element elementDescription,
    CodeableConcept legalStatusOfSupply,
    List<MarketingStatus> marketingStatus,
    Reference marketingAuthorization,
    List<Reference> manufacturer,
    List<MedicinalProductPackaged_BatchIdentifier> batchIdentifier,
    List<MedicinalProductPackaged_PackageItem> packageItem,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPackaged newMedicinalProductPackaged =
        new MedicinalProductPackaged(
      resourceType: 'MedicinalProductPackaged',
      id: id ?? await fhirDb.newResourceId('MedicinalProductPackaged'),
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
      subject: subject,
      description: description,
      elementDescription: elementDescription,
      legalStatusOfSupply: legalStatusOfSupply,
      marketingStatus: marketingStatus,
      marketingAuthorization: marketingAuthorization,
      manufacturer: manufacturer,
      batchIdentifier: batchIdentifier,
      packageItem: packageItem,
    );
    newMedicinalProductPackaged.meta.createdAt = DateTime.now();
    newMedicinalProductPackaged.meta.lastUpdated =
        newMedicinalProductPackaged.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicinalProductPackaged);
    return newMedicinalProductPackaged;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'MedicinalProductPackaged';
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
  List<Reference> subject;
  String description;
  Element elementDescription;
  CodeableConcept legalStatusOfSupply;
  List<MarketingStatus> marketingStatus;
  Reference marketingAuthorization;
  List<Reference> manufacturer;
  List<MedicinalProductPackaged_BatchIdentifier> batchIdentifier;
  List<MedicinalProductPackaged_PackageItem> packageItem;

  MedicinalProductPackaged({
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
    this.subject,
    this.description,
    this.elementDescription,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.marketingAuthorization,
    this.manufacturer,
    this.batchIdentifier,
    @required this.packageItem,
  });

  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductPackagedFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackagedToJson(this);
}

class MedicinalProductPackaged_BatchIdentifier {
  static Future<MedicinalProductPackaged_BatchIdentifier> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier outerPackaging,
    Identifier immediatePackaging,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPackaged_BatchIdentifier
        newMedicinalProductPackaged_BatchIdentifier =
        new MedicinalProductPackaged_BatchIdentifier(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      outerPackaging: outerPackaging,
      immediatePackaging: immediatePackaging,
    );
    return newMedicinalProductPackaged_BatchIdentifier;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier outerPackaging;
  Identifier immediatePackaging;

  MedicinalProductPackaged_BatchIdentifier({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.outerPackaging,
    this.immediatePackaging,
  });

  factory MedicinalProductPackaged_BatchIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductPackaged_BatchIdentifierFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductPackaged_BatchIdentifierToJson(this);
}

class MedicinalProductPackaged_PackageItem {
  static Future<MedicinalProductPackaged_PackageItem> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    CodeableConcept type,
    Quantity quantity,
    List<CodeableConcept> material,
    List<CodeableConcept> alternateMaterial,
    List<Reference> device,
    List<Reference> manufacturedItem,
    List<MedicinalProductPackaged_PackageItem> packageItem,
    ProdCharacteristic physicalCharacteristics,
    List<CodeableConcept> otherCharacteristics,
    List<ProductShelfLife> shelfLifeStorage,
    List<Reference> manufacturer,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPackaged_PackageItem
        newMedicinalProductPackaged_PackageItem =
        new MedicinalProductPackaged_PackageItem(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      type: type,
      quantity: quantity,
      material: material,
      alternateMaterial: alternateMaterial,
      device: device,
      manufacturedItem: manufacturedItem,
      packageItem: packageItem,
      physicalCharacteristics: physicalCharacteristics,
      otherCharacteristics: otherCharacteristics,
      shelfLifeStorage: shelfLifeStorage,
      manufacturer: manufacturer,
    );
    return newMedicinalProductPackaged_PackageItem;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  Quantity quantity;
  List<CodeableConcept> material;
  List<CodeableConcept> alternateMaterial;
  List<Reference> device;
  List<Reference> manufacturedItem;
  List<MedicinalProductPackaged_PackageItem> packageItem;
  ProdCharacteristic physicalCharacteristics;
  List<CodeableConcept> otherCharacteristics;
  List<ProductShelfLife> shelfLifeStorage;
  List<Reference> manufacturer;

  MedicinalProductPackaged_PackageItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    @required this.type,
    @required this.quantity,
    this.material,
    this.alternateMaterial,
    this.device,
    this.manufacturedItem,
    this.packageItem,
    this.physicalCharacteristics,
    this.otherCharacteristics,
    this.shelfLifeStorage,
    this.manufacturer,
  });

  factory MedicinalProductPackaged_PackageItem.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductPackaged_PackageItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductPackaged_PackageItemToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPackaged _$MedicinalProductPackagedFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPackaged(
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
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    legalStatusOfSupply: json['legalStatusOfSupply'] == null
        ? null
        : CodeableConcept.fromJson(
            json['legalStatusOfSupply'] as Map<String, dynamic>),
    marketingStatus: (json['marketingStatus'] as List)
        ?.map((e) => e == null
            ? null
            : MarketingStatus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    marketingAuthorization: json['marketingAuthorization'] == null
        ? null
        : Reference.fromJson(
            json['marketingAuthorization'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    batchIdentifier: (json['batchIdentifier'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPackaged_BatchIdentifier.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    packageItem: (json['packageItem'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPackaged_PackageItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPackagedToJson(
    MedicinalProductPackaged instance) {
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
  writeNotNull('subject', instance.subject?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('legalStatusOfSupply', instance.legalStatusOfSupply?.toJson());
  writeNotNull('marketingStatus',
      instance.marketingStatus?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'marketingAuthorization', instance.marketingAuthorization?.toJson());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e?.toJson())?.toList());
  writeNotNull('batchIdentifier',
      instance.batchIdentifier?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'packageItem', instance.packageItem?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductPackaged_BatchIdentifier
    _$MedicinalProductPackaged_BatchIdentifierFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPackaged_BatchIdentifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outerPackaging: json['outerPackaging'] == null
        ? null
        : Identifier.fromJson(json['outerPackaging'] as Map<String, dynamic>),
    immediatePackaging: json['immediatePackaging'] == null
        ? null
        : Identifier.fromJson(
            json['immediatePackaging'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPackaged_BatchIdentifierToJson(
    MedicinalProductPackaged_BatchIdentifier instance) {
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
  writeNotNull('outerPackaging', instance.outerPackaging?.toJson());
  writeNotNull('immediatePackaging', instance.immediatePackaging?.toJson());
  return val;
}

MedicinalProductPackaged_PackageItem
    _$MedicinalProductPackaged_PackageItemFromJson(Map<String, dynamic> json) {
  return MedicinalProductPackaged_PackageItem(
    id: json['id'] as String,
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
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    material: (json['material'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    alternateMaterial: (json['alternateMaterial'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    device: (json['device'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    manufacturedItem: (json['manufacturedItem'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    packageItem: (json['packageItem'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPackaged_PackageItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    physicalCharacteristics: json['physicalCharacteristics'] == null
        ? null
        : ProdCharacteristic.fromJson(
            json['physicalCharacteristics'] as Map<String, dynamic>),
    otherCharacteristics: (json['otherCharacteristics'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shelfLifeStorage: (json['shelfLifeStorage'] as List)
        ?.map((e) => e == null
            ? null
            : ProductShelfLife.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPackaged_PackageItemToJson(
    MedicinalProductPackaged_PackageItem instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull(
      'material', instance.material?.map((e) => e?.toJson())?.toList());
  writeNotNull('alternateMaterial',
      instance.alternateMaterial?.map((e) => e?.toJson())?.toList());
  writeNotNull('device', instance.device?.map((e) => e?.toJson())?.toList());
  writeNotNull('manufacturedItem',
      instance.manufacturedItem?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'packageItem', instance.packageItem?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'physicalCharacteristics', instance.physicalCharacteristics?.toJson());
  writeNotNull('otherCharacteristics',
      instance.otherCharacteristics?.map((e) => e?.toJson())?.toList());
  writeNotNull('shelfLifeStorage',
      instance.shelfLifeStorage?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e?.toJson())?.toList());
  return val;
}
