import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/marketingStatus.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 136)
class MedicinalProduct {

	static Future<MedicinalProduct> newInstance({
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
		Coding domain,
		CodeableConcept combinedPharmaceuticalDoseForm,
		CodeableConcept legalStatusOfSupply,
		CodeableConcept additionalMonitoringIndicator,
		List<String> specialMeasures,
		List<Element> elementSpecialMeasures,
		CodeableConcept paediatricUseIndicator,
		List<CodeableConcept> productClassification,
		List<MarketingStatus> marketingStatus,
		List<Reference> pharmaceuticalProduct,
		List<Reference> packagedMedicinalProduct,
		List<Reference> attachedDocument,
		List<Reference> masterFile,
		List<Reference> contact,
		List<Reference> clinicalTrial,
		List<MedicinalProduct_Name> name,
		List<Identifier> crossReference,
		List<MedicinalProduct_ManufacturingBusinessOperation> manufacturingBusinessOperation,
		List<MedicinalProduct_SpecialDesignation> specialDesignation}) async {
	MedicinalProduct newMedicinalProduct = new MedicinalProduct(
			id: await newId('MedicinalProduct'),
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
			domain: domain,
			combinedPharmaceuticalDoseForm: combinedPharmaceuticalDoseForm,
			legalStatusOfSupply: legalStatusOfSupply,
			additionalMonitoringIndicator: additionalMonitoringIndicator,
			specialMeasures: specialMeasures,
			elementSpecialMeasures: elementSpecialMeasures,
			paediatricUseIndicator: paediatricUseIndicator,
			productClassification: productClassification,
			marketingStatus: marketingStatus,
			pharmaceuticalProduct: pharmaceuticalProduct,
			packagedMedicinalProduct: packagedMedicinalProduct,
			attachedDocument: attachedDocument,
			masterFile: masterFile,
			contact: contact,
			clinicalTrial: clinicalTrial,
			name: name,
			crossReference: crossReference,
			manufacturingBusinessOperation: manufacturingBusinessOperation,
			specialDesignation: specialDesignation);
	var medicinalProductBox = await Hive.openBox<MedicinalProduct>('MedicinalProductBox');
	medicinalProductBox.add(newMedicinalProduct);
	return newMedicinalProduct;
}
  @HiveField(0)
  final String resourceType= 'MedicinalProduct';
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
  Coding domain;
  @HiveField(14)
  CodeableConcept combinedPharmaceuticalDoseForm;
  @HiveField(15)
  CodeableConcept legalStatusOfSupply;
  @HiveField(16)
  CodeableConcept additionalMonitoringIndicator;
  @HiveField(17)
  List<String> specialMeasures;
  @HiveField(18)
  List<Element> elementSpecialMeasures;
  @HiveField(19)
  CodeableConcept paediatricUseIndicator;
  @HiveField(20)
  List<CodeableConcept> productClassification;
  @HiveField(21)
  List<MarketingStatus> marketingStatus;
  @HiveField(22)
  List<Reference> pharmaceuticalProduct;
  @HiveField(23)
  List<Reference> packagedMedicinalProduct;
  @HiveField(24)
  List<Reference> attachedDocument;
  @HiveField(25)
  List<Reference> masterFile;
  @HiveField(26)
  List<Reference> contact;
  @HiveField(27)
  List<Reference> clinicalTrial;
  @HiveField(28)
  List<MedicinalProduct_Name> name;
  @HiveField(29)
  List<Identifier> crossReference;
  @HiveField(30)
  List<MedicinalProduct_ManufacturingBusinessOperation> manufacturingBusinessOperation;
  @HiveField(31)
  List<MedicinalProduct_SpecialDesignation> specialDesignation;

MedicinalProduct(
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
    this.domain,
    this.combinedPharmaceuticalDoseForm,
    this.legalStatusOfSupply,
    this.additionalMonitoringIndicator,
    this.specialMeasures,
    this.elementSpecialMeasures,
    this.paediatricUseIndicator,
    this.productClassification,
    this.marketingStatus,
    this.pharmaceuticalProduct,
    this.packagedMedicinalProduct,
    this.attachedDocument,
    this.masterFile,
    this.contact,
    this.clinicalTrial,
    @required this.name,
    this.crossReference,
    this.manufacturingBusinessOperation,
    this.specialDesignation
    });

  factory MedicinalProduct.fromJson(Map<String, dynamic> json) => _$MedicinalProductFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_Name {

	static Future<MedicinalProduct_Name> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String productName,
		Element elementProductName,
		List<MedicinalProduct_NamePart> namePart,
		List<MedicinalProduct_CountryLanguage> countryLanguage}) async {
	MedicinalProduct_Name newMedicinalProduct_Name = new MedicinalProduct_Name(
			id: await newId('MedicinalProduct_Name'),
			extension: extension,
			modifierExtension: modifierExtension,
			productName: productName,
			elementProductName: elementProductName,
			namePart: namePart,
			countryLanguage: countryLanguage);
	var medicinalProduct_NameBox = await Hive.openBox<MedicinalProduct_Name>('MedicinalProduct_NameBox');
	medicinalProduct_NameBox.add(newMedicinalProduct_Name);
	return newMedicinalProduct_Name;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String productName;
  Element elementProductName;
  List<MedicinalProduct_NamePart> namePart;
  List<MedicinalProduct_CountryLanguage> countryLanguage;

MedicinalProduct_Name(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.productName,
    this.elementProductName,
    this.namePart,
    this.countryLanguage
    });

  factory MedicinalProduct_Name.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NameFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

	static Future<MedicinalProduct_NamePart> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String part,
		Element elementPart,
		Coding type}) async {
	MedicinalProduct_NamePart newMedicinalProduct_NamePart = new MedicinalProduct_NamePart(
			id: await newId('MedicinalProduct_NamePart'),
			extension: extension,
			modifierExtension: modifierExtension,
			part: part,
			elementPart: elementPart,
			type: type);
	var medicinalProduct_NamePartBox = await Hive.openBox<MedicinalProduct_NamePart>('MedicinalProduct_NamePartBox');
	medicinalProduct_NamePartBox.add(newMedicinalProduct_NamePart);
	return newMedicinalProduct_NamePart;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String part;
  Element elementPart;
  Coding type;

MedicinalProduct_NamePart(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.part,
    this.elementPart,
    @required this.type
    });

  factory MedicinalProduct_NamePart.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NamePartFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NamePartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_CountryLanguage {

	static Future<MedicinalProduct_CountryLanguage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept country,
		CodeableConcept jurisdiction,
		CodeableConcept language}) async {
	MedicinalProduct_CountryLanguage newMedicinalProduct_CountryLanguage = new MedicinalProduct_CountryLanguage(
			id: await newId('MedicinalProduct_CountryLanguage'),
			extension: extension,
			modifierExtension: modifierExtension,
			country: country,
			jurisdiction: jurisdiction,
			language: language);
	var medicinalProduct_CountryLanguageBox = await Hive.openBox<MedicinalProduct_CountryLanguage>('MedicinalProduct_CountryLanguageBox');
	medicinalProduct_CountryLanguageBox.add(newMedicinalProduct_CountryLanguage);
	return newMedicinalProduct_CountryLanguage;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept country;
  CodeableConcept jurisdiction;
  CodeableConcept language;

MedicinalProduct_CountryLanguage(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.country,
    this.jurisdiction,
    @required this.language
    });

  factory MedicinalProduct_CountryLanguage.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_CountryLanguageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_CountryLanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_ManufacturingBusinessOperation {

	static Future<MedicinalProduct_ManufacturingBusinessOperation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept operationType,
		Identifier authorisationReferenceNumber,
		DateTime effectiveDate,
		Element elementEffectiveDate,
		CodeableConcept confidentialityIndicator,
		List<Reference> manufacturer,
		Reference regulator}) async {
	MedicinalProduct_ManufacturingBusinessOperation newMedicinalProduct_ManufacturingBusinessOperation = new MedicinalProduct_ManufacturingBusinessOperation(
			id: await newId('MedicinalProduct_ManufacturingBusinessOperation'),
			extension: extension,
			modifierExtension: modifierExtension,
			operationType: operationType,
			authorisationReferenceNumber: authorisationReferenceNumber,
			effectiveDate: effectiveDate,
			elementEffectiveDate: elementEffectiveDate,
			confidentialityIndicator: confidentialityIndicator,
			manufacturer: manufacturer,
			regulator: regulator);
	var medicinalProduct_ManufacturingBusinessOperationBox = await Hive.openBox<MedicinalProduct_ManufacturingBusinessOperation>('MedicinalProduct_ManufacturingBusinessOperationBox');
	medicinalProduct_ManufacturingBusinessOperationBox.add(newMedicinalProduct_ManufacturingBusinessOperation);
	return newMedicinalProduct_ManufacturingBusinessOperation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept operationType;
  Identifier authorisationReferenceNumber;
  DateTime effectiveDate;
  Element elementEffectiveDate;
  CodeableConcept confidentialityIndicator;
  List<Reference> manufacturer;
  Reference regulator;

MedicinalProduct_ManufacturingBusinessOperation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.operationType,
    this.authorisationReferenceNumber,
    this.effectiveDate,
    this.elementEffectiveDate,
    this.confidentialityIndicator,
    this.manufacturer,
    this.regulator
    });

  factory MedicinalProduct_ManufacturingBusinessOperation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_ManufacturingBusinessOperationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_ManufacturingBusinessOperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_SpecialDesignation {

	static Future<MedicinalProduct_SpecialDesignation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		CodeableConcept type,
		CodeableConcept intendedUse,
		CodeableConcept indicationCodeableConcept,
		Reference indicationReference,
		CodeableConcept status,
		DateTime date,
		Element elementDate,
		CodeableConcept species}) async {
	MedicinalProduct_SpecialDesignation newMedicinalProduct_SpecialDesignation = new MedicinalProduct_SpecialDesignation(
			id: await newId('MedicinalProduct_SpecialDesignation'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			type: type,
			intendedUse: intendedUse,
			indicationCodeableConcept: indicationCodeableConcept,
			indicationReference: indicationReference,
			status: status,
			date: date,
			elementDate: elementDate,
			species: species);
	var medicinalProduct_SpecialDesignationBox = await Hive.openBox<MedicinalProduct_SpecialDesignation>('MedicinalProduct_SpecialDesignationBox');
	medicinalProduct_SpecialDesignationBox.add(newMedicinalProduct_SpecialDesignation);
	return newMedicinalProduct_SpecialDesignation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  CodeableConcept intendedUse;
  CodeableConcept indicationCodeableConcept;
  Reference indicationReference;
  CodeableConcept status;
  DateTime date;
  Element elementDate;
  CodeableConcept species;

MedicinalProduct_SpecialDesignation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.intendedUse,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.status,
    this.date,
    this.elementDate,
    this.species
    });

  factory MedicinalProduct_SpecialDesignation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_SpecialDesignationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_SpecialDesignationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductAdapter extends TypeAdapter<MedicinalProduct> {
  @override
  final typeId = 136;

  @override
  MedicinalProduct read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProduct(
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
      domain: fields[13] as Coding,
      combinedPharmaceuticalDoseForm: fields[14] as CodeableConcept,
      legalStatusOfSupply: fields[15] as CodeableConcept,
      additionalMonitoringIndicator: fields[16] as CodeableConcept,
      specialMeasures: (fields[17] as List)?.cast<String>(),
      elementSpecialMeasures: (fields[18] as List)?.cast<Element>(),
      paediatricUseIndicator: fields[19] as CodeableConcept,
      productClassification: (fields[20] as List)?.cast<CodeableConcept>(),
      marketingStatus: (fields[21] as List)?.cast<MarketingStatus>(),
      pharmaceuticalProduct: (fields[22] as List)?.cast<Reference>(),
      packagedMedicinalProduct: (fields[23] as List)?.cast<Reference>(),
      attachedDocument: (fields[24] as List)?.cast<Reference>(),
      masterFile: (fields[25] as List)?.cast<Reference>(),
      contact: (fields[26] as List)?.cast<Reference>(),
      clinicalTrial: (fields[27] as List)?.cast<Reference>(),
      name: (fields[28] as List)?.cast<MedicinalProduct_Name>(),
      crossReference: (fields[29] as List)?.cast<Identifier>(),
      manufacturingBusinessOperation: (fields[30] as List)
          ?.cast<MedicinalProduct_ManufacturingBusinessOperation>(),
      specialDesignation:
          (fields[31] as List)?.cast<MedicinalProduct_SpecialDesignation>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProduct obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.domain)
      ..writeByte(14)
      ..write(obj.combinedPharmaceuticalDoseForm)
      ..writeByte(15)
      ..write(obj.legalStatusOfSupply)
      ..writeByte(16)
      ..write(obj.additionalMonitoringIndicator)
      ..writeByte(17)
      ..write(obj.specialMeasures)
      ..writeByte(18)
      ..write(obj.elementSpecialMeasures)
      ..writeByte(19)
      ..write(obj.paediatricUseIndicator)
      ..writeByte(20)
      ..write(obj.productClassification)
      ..writeByte(21)
      ..write(obj.marketingStatus)
      ..writeByte(22)
      ..write(obj.pharmaceuticalProduct)
      ..writeByte(23)
      ..write(obj.packagedMedicinalProduct)
      ..writeByte(24)
      ..write(obj.attachedDocument)
      ..writeByte(25)
      ..write(obj.masterFile)
      ..writeByte(26)
      ..write(obj.contact)
      ..writeByte(27)
      ..write(obj.clinicalTrial)
      ..writeByte(28)
      ..write(obj.name)
      ..writeByte(29)
      ..write(obj.crossReference)
      ..writeByte(30)
      ..write(obj.manufacturingBusinessOperation)
      ..writeByte(31)
      ..write(obj.specialDesignation);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProduct _$MedicinalProductFromJson(Map<String, dynamic> json) {
  return MedicinalProduct(
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
    domain: json['domain'] == null
        ? null
        : Coding.fromJson(json['domain'] as Map<String, dynamic>),
    combinedPharmaceuticalDoseForm:
        json['combinedPharmaceuticalDoseForm'] == null
            ? null
            : CodeableConcept.fromJson(
                json['combinedPharmaceuticalDoseForm'] as Map<String, dynamic>),
    legalStatusOfSupply: json['legalStatusOfSupply'] == null
        ? null
        : CodeableConcept.fromJson(
            json['legalStatusOfSupply'] as Map<String, dynamic>),
    additionalMonitoringIndicator: json['additionalMonitoringIndicator'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additionalMonitoringIndicator'] as Map<String, dynamic>),
    specialMeasures:
        (json['specialMeasures'] as List)?.map((e) => e as String)?.toList(),
    elementSpecialMeasures: (json['elementSpecialMeasures'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    paediatricUseIndicator: json['paediatricUseIndicator'] == null
        ? null
        : CodeableConcept.fromJson(
            json['paediatricUseIndicator'] as Map<String, dynamic>),
    productClassification: (json['productClassification'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    marketingStatus: (json['marketingStatus'] as List)
        ?.map((e) => e == null
            ? null
            : MarketingStatus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pharmaceuticalProduct: (json['pharmaceuticalProduct'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    packagedMedicinalProduct: (json['packagedMedicinalProduct'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attachedDocument: (json['attachedDocument'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    masterFile: (json['masterFile'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    clinicalTrial: (json['clinicalTrial'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: (json['name'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    crossReference: (json['crossReference'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    manufacturingBusinessOperation:
        (json['manufacturingBusinessOperation'] as List)
            ?.map((e) => e == null
                ? null
                : MedicinalProduct_ManufacturingBusinessOperation.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
    specialDesignation: (json['specialDesignation'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_SpecialDesignation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductToJson(MedicinalProduct instance) =>
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
      'domain': instance.domain?.toJson(),
      'combinedPharmaceuticalDoseForm':
          instance.combinedPharmaceuticalDoseForm?.toJson(),
      'legalStatusOfSupply': instance.legalStatusOfSupply?.toJson(),
      'additionalMonitoringIndicator':
          instance.additionalMonitoringIndicator?.toJson(),
      'specialMeasures': instance.specialMeasures,
      'elementSpecialMeasures':
          instance.elementSpecialMeasures?.map((e) => e?.toJson())?.toList(),
      'paediatricUseIndicator': instance.paediatricUseIndicator?.toJson(),
      'productClassification':
          instance.productClassification?.map((e) => e?.toJson())?.toList(),
      'marketingStatus':
          instance.marketingStatus?.map((e) => e?.toJson())?.toList(),
      'pharmaceuticalProduct':
          instance.pharmaceuticalProduct?.map((e) => e?.toJson())?.toList(),
      'packagedMedicinalProduct':
          instance.packagedMedicinalProduct?.map((e) => e?.toJson())?.toList(),
      'attachedDocument':
          instance.attachedDocument?.map((e) => e?.toJson())?.toList(),
      'masterFile': instance.masterFile?.map((e) => e?.toJson())?.toList(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'clinicalTrial':
          instance.clinicalTrial?.map((e) => e?.toJson())?.toList(),
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'crossReference':
          instance.crossReference?.map((e) => e?.toJson())?.toList(),
      'manufacturingBusinessOperation': instance.manufacturingBusinessOperation
          ?.map((e) => e?.toJson())
          ?.toList(),
      'specialDesignation':
          instance.specialDesignation?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProduct_Name _$MedicinalProduct_NameFromJson(
    Map<String, dynamic> json) {
  return MedicinalProduct_Name(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productName: json['productName'] as String,
    elementProductName: json['elementProductName'] == null
        ? null
        : Element.fromJson(json['elementProductName'] as Map<String, dynamic>),
    namePart: (json['namePart'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_NamePart.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countryLanguage: (json['countryLanguage'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_CountryLanguage.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProduct_NameToJson(
        MedicinalProduct_Name instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productName': instance.productName,
      'elementProductName': instance.elementProductName?.toJson(),
      'namePart': instance.namePart?.map((e) => e?.toJson())?.toList(),
      'countryLanguage':
          instance.countryLanguage?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProduct_NamePart _$MedicinalProduct_NamePartFromJson(
    Map<String, dynamic> json) {
  return MedicinalProduct_NamePart(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    part: json['part'] as String,
    elementPart: json['elementPart'] == null
        ? null
        : Element.fromJson(json['elementPart'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_NamePartToJson(
        MedicinalProduct_NamePart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'part': instance.part,
      'elementPart': instance.elementPart?.toJson(),
      'type': instance.type?.toJson(),
    };

MedicinalProduct_CountryLanguage _$MedicinalProduct_CountryLanguageFromJson(
    Map<String, dynamic> json) {
  return MedicinalProduct_CountryLanguage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    country: json['country'] == null
        ? null
        : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
    jurisdiction: json['jurisdiction'] == null
        ? null
        : CodeableConcept.fromJson(
            json['jurisdiction'] as Map<String, dynamic>),
    language: json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_CountryLanguageToJson(
        MedicinalProduct_CountryLanguage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'country': instance.country?.toJson(),
      'jurisdiction': instance.jurisdiction?.toJson(),
      'language': instance.language?.toJson(),
    };

MedicinalProduct_ManufacturingBusinessOperation
    _$MedicinalProduct_ManufacturingBusinessOperationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProduct_ManufacturingBusinessOperation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    operationType: json['operationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['operationType'] as Map<String, dynamic>),
    authorisationReferenceNumber: json['authorisationReferenceNumber'] == null
        ? null
        : Identifier.fromJson(
            json['authorisationReferenceNumber'] as Map<String, dynamic>),
    effectiveDate: json['effectiveDate'] == null
        ? null
        : DateTime.parse(json['effectiveDate'] as String),
    elementEffectiveDate: json['elementEffectiveDate'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDate'] as Map<String, dynamic>),
    confidentialityIndicator: json['confidentialityIndicator'] == null
        ? null
        : CodeableConcept.fromJson(
            json['confidentialityIndicator'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    regulator: json['regulator'] == null
        ? null
        : Reference.fromJson(json['regulator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_ManufacturingBusinessOperationToJson(
        MedicinalProduct_ManufacturingBusinessOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operationType': instance.operationType?.toJson(),
      'authorisationReferenceNumber':
          instance.authorisationReferenceNumber?.toJson(),
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'elementEffectiveDate': instance.elementEffectiveDate?.toJson(),
      'confidentialityIndicator': instance.confidentialityIndicator?.toJson(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
      'regulator': instance.regulator?.toJson(),
    };

MedicinalProduct_SpecialDesignation
    _$MedicinalProduct_SpecialDesignationFromJson(Map<String, dynamic> json) {
  return MedicinalProduct_SpecialDesignation(
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
    intendedUse: json['intendedUse'] == null
        ? null
        : CodeableConcept.fromJson(json['intendedUse'] as Map<String, dynamic>),
    indicationCodeableConcept: json['indicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['indicationCodeableConcept'] as Map<String, dynamic>),
    indicationReference: json['indicationReference'] == null
        ? null
        : Reference.fromJson(
            json['indicationReference'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    species: json['species'] == null
        ? null
        : CodeableConcept.fromJson(json['species'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_SpecialDesignationToJson(
        MedicinalProduct_SpecialDesignation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'intendedUse': instance.intendedUse?.toJson(),
      'indicationCodeableConcept': instance.indicationCodeableConcept?.toJson(),
      'indicationReference': instance.indicationReference?.toJson(),
      'status': instance.status?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'species': instance.species?.toJson(),
    };
