import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/productShelfLife.dart';
import 'package:flutter_fhir/fhirClasses/prodCharacteristic.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/marketingStatus.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 143)
class MedicinalProductPackaged {

	static Future<MedicinalProductPackaged> newInstance({
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
		List<MedicinalProductPackaged_PackageItem> packageItem}) async {
	MedicinalProductPackaged newMedicinalProductPackaged = new MedicinalProductPackaged(
			id: await newId('MedicinalProductPackaged'),
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
			subject: subject,
			description: description,
			elementDescription: elementDescription,
			legalStatusOfSupply: legalStatusOfSupply,
			marketingStatus: marketingStatus,
			marketingAuthorization: marketingAuthorization,
			manufacturer: manufacturer,
			batchIdentifier: batchIdentifier,
			packageItem: packageItem);
	var medicinalProductPackagedBox = await Hive.openBox<MedicinalProductPackaged>('MedicinalProductPackagedBox');
	medicinalProductPackagedBox.put(newMedicinalProductPackaged.id, newMedicinalProductPackaged);
	return newMedicinalProductPackaged;
}
  @HiveField(0)
  final String resourceType= 'MedicinalProductPackaged';
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
  List<Reference> subject;
  @HiveField(13)
  String description;
  @HiveField(14)
  Element elementDescription;
  @HiveField(15)
  CodeableConcept legalStatusOfSupply;
  @HiveField(16)
  List<MarketingStatus> marketingStatus;
  @HiveField(17)
  Reference marketingAuthorization;
  @HiveField(18)
  List<Reference> manufacturer;
  @HiveField(19)
  List<MedicinalProductPackaged_BatchIdentifier> batchIdentifier;
  @HiveField(20)
  List<MedicinalProductPackaged_PackageItem> packageItem;

MedicinalProductPackaged(
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
    this.subject,
    this.description,
    this.elementDescription,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.marketingAuthorization,
    this.manufacturer,
    this.batchIdentifier,
    @required this.packageItem
    });

  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackagedFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackagedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_BatchIdentifier {

	static Future<MedicinalProductPackaged_BatchIdentifier> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier outerPackaging,
		Identifier immediatePackaging}) async {
	MedicinalProductPackaged_BatchIdentifier newMedicinalProductPackaged_BatchIdentifier = new MedicinalProductPackaged_BatchIdentifier(
			id: await newId('MedicinalProductPackaged_BatchIdentifier'),
			extension: extension,
			modifierExtension: modifierExtension,
			outerPackaging: outerPackaging,
			immediatePackaging: immediatePackaging);
	var medicinalProductPackaged_BatchIdentifierBox = await Hive.openBox<MedicinalProductPackaged_BatchIdentifier>('MedicinalProductPackaged_BatchIdentifierBox');
	medicinalProductPackaged_BatchIdentifierBox.put(newMedicinalProductPackaged_BatchIdentifier.id, newMedicinalProductPackaged_BatchIdentifier);
	return newMedicinalProductPackaged_BatchIdentifier;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier outerPackaging;
  Identifier immediatePackaging;

MedicinalProductPackaged_BatchIdentifier(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.outerPackaging,
    this.immediatePackaging
    });

  factory MedicinalProductPackaged_BatchIdentifier.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_BatchIdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackaged_BatchIdentifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Reference> manufacturer}) async {
	MedicinalProductPackaged_PackageItem newMedicinalProductPackaged_PackageItem = new MedicinalProductPackaged_PackageItem(
			id: await newId('MedicinalProductPackaged_PackageItem'),
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
			manufacturer: manufacturer);
	var medicinalProductPackaged_PackageItemBox = await Hive.openBox<MedicinalProductPackaged_PackageItem>('MedicinalProductPackaged_PackageItemBox');
	medicinalProductPackaged_PackageItemBox.put(newMedicinalProductPackaged_PackageItem.id, newMedicinalProductPackaged_PackageItem);
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

MedicinalProductPackaged_PackageItem(
  {this.id,
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
    this.manufacturer
    });

  factory MedicinalProductPackaged_PackageItem.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_PackageItemFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackaged_PackageItemToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductPackagedAdapter
    extends TypeAdapter<MedicinalProductPackaged> {
  @override
  final typeId = 143;

  @override
  MedicinalProductPackaged read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPackaged(
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
      subject: (fields[12] as List)?.cast<Reference>(),
      description: fields[13] as String,
      elementDescription: fields[14] as Element,
      legalStatusOfSupply: fields[15] as CodeableConcept,
      marketingStatus: (fields[16] as List)?.cast<MarketingStatus>(),
      marketingAuthorization: fields[17] as Reference,
      manufacturer: (fields[18] as List)?.cast<Reference>(),
      batchIdentifier: (fields[19] as List)
          ?.cast<MedicinalProductPackaged_BatchIdentifier>(),
      packageItem:
          (fields[20] as List)?.cast<MedicinalProductPackaged_PackageItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductPackaged obj) {
    writer
      ..writeByte(21)
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
      ..write(obj.subject)
      ..writeByte(13)
      ..write(obj.description)
      ..writeByte(14)
      ..write(obj.elementDescription)
      ..writeByte(15)
      ..write(obj.legalStatusOfSupply)
      ..writeByte(16)
      ..write(obj.marketingStatus)
      ..writeByte(17)
      ..write(obj.marketingAuthorization)
      ..writeByte(18)
      ..write(obj.manufacturer)
      ..writeByte(19)
      ..write(obj.batchIdentifier)
      ..writeByte(20)
      ..write(obj.packageItem);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPackaged _$MedicinalProductPackagedFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPackaged(
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
    packageItem: (json['packageItem'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPackaged_PackageItem.fromJson(
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
      'contained': instance.contained,
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
