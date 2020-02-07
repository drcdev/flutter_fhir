// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinalProductPackaged.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPackaged _$MedicinalProductPackagedFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPackaged(
    (json['packageItem'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPackaged_PackageItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
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
  );
}

Map<String, dynamic> _$MedicinalProductPackagedToJson(
        MedicinalProductPackaged instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'legalStatusOfSupply': instance.legalStatusOfSupply?.toJson(),
      'marketingStatus':
          instance.marketingStatus?.map((e) => e?.toJson())?.toList(),
      'marketingAuthorization': instance.marketingAuthorization?.toJson(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
      'batchIdentifier':
          instance.batchIdentifier?.map((e) => e?.toJson())?.toList(),
      'packageItem': instance.packageItem?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPackaged_BatchIdentifier
    _$MedicinalProductPackaged_BatchIdentifierFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPackaged_BatchIdentifier(
    json['outerPackaging'] == null
        ? null
        : Identifier.fromJson(json['outerPackaging'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    immediatePackaging: json['immediatePackaging'] == null
        ? null
        : Identifier.fromJson(
            json['immediatePackaging'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPackaged_BatchIdentifierToJson(
        MedicinalProductPackaged_BatchIdentifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'outerPackaging': instance.outerPackaging?.toJson(),
      'immediatePackaging': instance.immediatePackaging?.toJson(),
    };

MedicinalProductPackaged_PackageItem
    _$MedicinalProductPackaged_PackageItemFromJson(Map<String, dynamic> json) {
  return MedicinalProductPackaged_PackageItem(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
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
        MedicinalProductPackaged_PackageItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'material': instance.material?.map((e) => e?.toJson())?.toList(),
      'alternateMaterial':
          instance.alternateMaterial?.map((e) => e?.toJson())?.toList(),
      'device': instance.device?.map((e) => e?.toJson())?.toList(),
      'manufacturedItem':
          instance.manufacturedItem?.map((e) => e?.toJson())?.toList(),
      'packageItem': instance.packageItem?.map((e) => e?.toJson())?.toList(),
      'physicalCharacteristics': instance.physicalCharacteristics?.toJson(),
      'otherCharacteristics':
          instance.otherCharacteristics?.map((e) => e?.toJson())?.toList(),
      'shelfLifeStorage':
          instance.shelfLifeStorage?.map((e) => e?.toJson())?.toList(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
    };
