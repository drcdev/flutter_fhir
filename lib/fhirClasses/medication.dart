import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 130)
class Medication {

	static Future<Medication> newInstance({
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
		CodeableConcept code,
		String status,
		Element elementStatus,
		Reference manufacturer,
		CodeableConcept form,
		Ratio amount,
		List<Medication_Ingredient> ingredient,
		Medication_Batch batch}) async {
	Medication newMedication = new Medication(
			id: await newId('Medication'),
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
			code: code,
			status: status,
			elementStatus: elementStatus,
			manufacturer: manufacturer,
			form: form,
			amount: amount,
			ingredient: ingredient,
			batch: batch);
	var medicationBox = await Hive.openBox<Medication>('MedicationBox');
	medicationBox.put(newMedication.id, newMedication);
	return newMedication;
}
  @HiveField(0)
  final String resourceType= 'Medication';
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
  CodeableConcept code;
  @HiveField(13)
  String status;
  @HiveField(14)
  Element elementStatus;
  @HiveField(15)
  Reference manufacturer;
  @HiveField(16)
  CodeableConcept form;
  @HiveField(17)
  Ratio amount;
  @HiveField(18)
  List<Medication_Ingredient> ingredient;
  @HiveField(19)
  Medication_Batch batch;

Medication(
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
    this.code,
    this.status,
    this.elementStatus,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch
    });

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medication_Ingredient {

	static Future<Medication_Ingredient> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept itemCodeableConcept,
		Reference itemReference,
		bool isActive,
		Element elementIsActive,
		Ratio strength}) async {
	Medication_Ingredient newMedication_Ingredient = new Medication_Ingredient(
			id: await newId('Medication_Ingredient'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemCodeableConcept: itemCodeableConcept,
			itemReference: itemReference,
			isActive: isActive,
			elementIsActive: elementIsActive,
			strength: strength);
	var medication_IngredientBox = await Hive.openBox<Medication_Ingredient>('Medication_IngredientBox');
	medication_IngredientBox.put(newMedication_Ingredient.id, newMedication_Ingredient);
	return newMedication_Ingredient;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Element elementIsActive;
  Ratio strength;

Medication_Ingredient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.elementIsActive,
    this.strength
    });

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) => _$Medication_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medication_Batch {

	static Future<Medication_Batch> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String lotNumber,
		Element elementLotNumber,
		DateTime expirationDate,
		Element elementExpirationDate}) async {
	Medication_Batch newMedication_Batch = new Medication_Batch(
			id: await newId('Medication_Batch'),
			extension: extension,
			modifierExtension: modifierExtension,
			lotNumber: lotNumber,
			elementLotNumber: elementLotNumber,
			expirationDate: expirationDate,
			elementExpirationDate: elementExpirationDate);
	var medication_BatchBox = await Hive.openBox<Medication_Batch>('Medication_BatchBox');
	medication_BatchBox.put(newMedication_Batch.id, newMedication_Batch);
	return newMedication_Batch;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String lotNumber;
  Element elementLotNumber;
  DateTime expirationDate;
  Element elementExpirationDate;

Medication_Batch(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.lotNumber,
    this.elementLotNumber,
    this.expirationDate,
    this.elementExpirationDate
    });

  factory Medication_Batch.fromJson(Map<String, dynamic> json) => _$Medication_BatchFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_BatchToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationAdapter extends TypeAdapter<Medication> {
  @override
  final typeId = 130;

  @override
  Medication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication(
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
      code: fields[12] as CodeableConcept,
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      manufacturer: fields[15] as Reference,
      form: fields[16] as CodeableConcept,
      amount: fields[17] as Ratio,
      ingredient: (fields[18] as List)?.cast<Medication_Ingredient>(),
      batch: fields[19] as Medication_Batch,
    );
  }

  @override
  void write(BinaryWriter writer, Medication obj) {
    writer
      ..writeByte(20)
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
      ..write(obj.code)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.manufacturer)
      ..writeByte(16)
      ..write(obj.form)
      ..writeByte(17)
      ..write(obj.amount)
      ..writeByte(18)
      ..write(obj.ingredient)
      ..writeByte(19)
      ..write(obj.batch);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medication _$MedicationFromJson(Map<String, dynamic> json) {
  return Medication(
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Ratio.fromJson(json['amount'] as Map<String, dynamic>),
    ingredient: (json['ingredient'] as List)
        ?.map((e) => e == null
            ? null
            : Medication_Ingredient.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    batch: json['batch'] == null
        ? null
        : Medication_Batch.fromJson(json['batch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationToJson(Medication instance) =>
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
      'code': instance.code?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'manufacturer': instance.manufacturer?.toJson(),
      'form': instance.form?.toJson(),
      'amount': instance.amount?.toJson(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'batch': instance.batch?.toJson(),
    };

Medication_Ingredient _$Medication_IngredientFromJson(
    Map<String, dynamic> json) {
  return Medication_Ingredient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    isActive: json['isActive'] as bool,
    elementIsActive: json['elementIsActive'] == null
        ? null
        : Element.fromJson(json['elementIsActive'] as Map<String, dynamic>),
    strength: json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Medication_IngredientToJson(
        Medication_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'isActive': instance.isActive,
      'elementIsActive': instance.elementIsActive?.toJson(),
      'strength': instance.strength?.toJson(),
    };

Medication_Batch _$Medication_BatchFromJson(Map<String, dynamic> json) {
  return Medication_Batch(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lotNumber: json['lotNumber'] as String,
    elementLotNumber: json['elementLotNumber'] == null
        ? null
        : Element.fromJson(json['elementLotNumber'] as Map<String, dynamic>),
    expirationDate: json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate'] as String),
    elementExpirationDate: json['elementExpirationDate'] == null
        ? null
        : Element.fromJson(
            json['elementExpirationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Medication_BatchToJson(Medication_Batch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'lotNumber': instance.lotNumber,
      'elementLotNumber': instance.elementLotNumber?.toJson(),
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'elementExpirationDate': instance.elementExpirationDate?.toJson(),
    };
