import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/prodCharacteristic.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 142)
class MedicinalProductManufactured {

	static Future<MedicinalProductManufactured> newInstance({
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
		CodeableConcept manufacturedDoseForm,
		CodeableConcept unitOfPresentation,
		Quantity quantity,
		List<Reference> manufacturer,
		List<Reference> ingredient,
		ProdCharacteristic physicalCharacteristics,
		List<CodeableConcept> otherCharacteristics}) async {
	MedicinalProductManufactured newMedicinalProductManufactured = new MedicinalProductManufactured(
			id: await newId('MedicinalProductManufactured'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			manufacturedDoseForm: manufacturedDoseForm,
			unitOfPresentation: unitOfPresentation,
			quantity: quantity,
			manufacturer: manufacturer,
			ingredient: ingredient,
			physicalCharacteristics: physicalCharacteristics,
			otherCharacteristics: otherCharacteristics);
	var medicinalProductManufacturedBox = await Hive.openBox<MedicinalProductManufactured>('MedicinalProductManufacturedBox');
	medicinalProductManufacturedBox.put(newMedicinalProductManufactured.id, newMedicinalProductManufactured);
	return newMedicinalProductManufactured;
}
  @HiveField(0)
  final String resourceType= 'MedicinalProductManufactured';
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
  CodeableConcept manufacturedDoseForm;
  @HiveField(12)
  CodeableConcept unitOfPresentation;
  @HiveField(13)
  Quantity quantity;
  @HiveField(14)
  List<Reference> manufacturer;
  @HiveField(15)
  List<Reference> ingredient;
  @HiveField(16)
  ProdCharacteristic physicalCharacteristics;
  @HiveField(17)
  List<CodeableConcept> otherCharacteristics;

MedicinalProductManufactured(
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
    @required this.manufacturedDoseForm,
    this.unitOfPresentation,
    @required this.quantity,
    this.manufacturer,
    this.ingredient,
    this.physicalCharacteristics,
    this.otherCharacteristics
    });

  factory MedicinalProductManufactured.fromJson(Map<String, dynamic> json) => _$MedicinalProductManufacturedFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductManufacturedToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductManufacturedAdapter
    extends TypeAdapter<MedicinalProductManufactured> {
  @override
  final typeId = 142;

  @override
  MedicinalProductManufactured read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductManufactured(
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
      manufacturedDoseForm: fields[11] as CodeableConcept,
      unitOfPresentation: fields[12] as CodeableConcept,
      quantity: fields[13] as Quantity,
      manufacturer: (fields[14] as List)?.cast<Reference>(),
      ingredient: (fields[15] as List)?.cast<Reference>(),
      physicalCharacteristics: fields[16] as ProdCharacteristic,
      otherCharacteristics: (fields[17] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductManufactured obj) {
    writer
      ..writeByte(18)
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
      ..write(obj.manufacturedDoseForm)
      ..writeByte(12)
      ..write(obj.unitOfPresentation)
      ..writeByte(13)
      ..write(obj.quantity)
      ..writeByte(14)
      ..write(obj.manufacturer)
      ..writeByte(15)
      ..write(obj.ingredient)
      ..writeByte(16)
      ..write(obj.physicalCharacteristics)
      ..writeByte(17)
      ..write(obj.otherCharacteristics);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductManufactured _$MedicinalProductManufacturedFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductManufactured(
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
    manufacturedDoseForm: json['manufacturedDoseForm'] == null
        ? null
        : CodeableConcept.fromJson(
            json['manufacturedDoseForm'] as Map<String, dynamic>),
    unitOfPresentation: json['unitOfPresentation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfPresentation'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ingredient: (json['ingredient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
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
  );
}

Map<String, dynamic> _$MedicinalProductManufacturedToJson(
        MedicinalProductManufactured instance) =>
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
      'manufacturedDoseForm': instance.manufacturedDoseForm?.toJson(),
      'unitOfPresentation': instance.unitOfPresentation?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'physicalCharacteristics': instance.physicalCharacteristics?.toJson(),
      'otherCharacteristics':
          instance.otherCharacteristics?.map((e) => e?.toJson())?.toList(),
    };
