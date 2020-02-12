import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 186)
class Substance {

	static Future<Substance> newInstance({
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
		String status,
		Element elementStatus,
		List<CodeableConcept> category,
		CodeableConcept code,
		String description,
		Element elementDescription,
		List<Substance_Instance> instance,
		List<Substance_Ingredient> ingredient}) async {
	Substance newSubstance = new Substance(
			id: await newId('Substance'),
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
			status: status,
			elementStatus: elementStatus,
			category: category,
			code: code,
			description: description,
			elementDescription: elementDescription,
			instance: instance,
			ingredient: ingredient);
	var substanceBox = await Hive.openBox<Substance>('SubstanceBox');
	substanceBox.add(newSubstance);
	return newSubstance;
}
  @HiveField(0)
  final String resourceType= 'Substance';
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
  String status; // <code> enum: active/inactive/entered-in-error;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  List<CodeableConcept> category;
  @HiveField(15)
  CodeableConcept code;
  @HiveField(16)
  String description;
  @HiveField(17)
  Element elementDescription;
  @HiveField(18)
  List<Substance_Instance> instance;
  @HiveField(19)
  List<Substance_Ingredient> ingredient;

Substance(
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
    this.status,
    this.elementStatus,
    this.category,
    @required this.code,
    this.description,
    this.elementDescription,
    this.instance,
    this.ingredient
    });

  factory Substance.fromJson(Map<String, dynamic> json) => _$SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Instance {

	static Future<Substance_Instance> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier identifier,
		DateTime expiry,
		Element elementExpiry,
		Quantity quantity}) async {
	Substance_Instance newSubstance_Instance = new Substance_Instance(
			id: await newId('Substance_Instance'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			expiry: expiry,
			elementExpiry: elementExpiry,
			quantity: quantity);
	var substance_InstanceBox = await Hive.openBox<Substance_Instance>('Substance_InstanceBox');
	substance_InstanceBox.add(newSubstance_Instance);
	return newSubstance_Instance;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  DateTime expiry;
  Element elementExpiry;
  Quantity quantity;

Substance_Instance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.expiry,
    this.elementExpiry,
    this.quantity
    });

  factory Substance_Instance.fromJson(Map<String, dynamic> json) => _$Substance_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Ingredient {

	static Future<Substance_Ingredient> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Ratio quantity,
		CodeableConcept substanceCodeableConcept,
		Reference substanceReference}) async {
	Substance_Ingredient newSubstance_Ingredient = new Substance_Ingredient(
			id: await newId('Substance_Ingredient'),
			extension: extension,
			modifierExtension: modifierExtension,
			quantity: quantity,
			substanceCodeableConcept: substanceCodeableConcept,
			substanceReference: substanceReference);
	var substance_IngredientBox = await Hive.openBox<Substance_Ingredient>('Substance_IngredientBox');
	substance_IngredientBox.add(newSubstance_Ingredient);
	return newSubstance_Ingredient;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Ratio quantity;
  CodeableConcept substanceCodeableConcept;
  Reference substanceReference;

Substance_Ingredient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.substanceCodeableConcept,
    this.substanceReference
    });

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) => _$Substance_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_IngredientToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceAdapter extends TypeAdapter<Substance> {
  @override
  final typeId = 186;

  @override
  Substance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Substance(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      category: (fields[14] as List)?.cast<CodeableConcept>(),
      code: fields[15] as CodeableConcept,
      description: fields[16] as String,
      elementDescription: fields[17] as Element,
      instance: (fields[18] as List)?.cast<Substance_Instance>(),
      ingredient: (fields[19] as List)?.cast<Substance_Ingredient>(),
    );
  }

  @override
  void write(BinaryWriter writer, Substance obj) {
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.code)
      ..writeByte(16)
      ..write(obj.description)
      ..writeByte(17)
      ..write(obj.elementDescription)
      ..writeByte(18)
      ..write(obj.instance)
      ..writeByte(19)
      ..write(obj.ingredient);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Substance _$SubstanceFromJson(Map<String, dynamic> json) {
  return Substance(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : Substance_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ingredient: (json['ingredient'] as List)
        ?.map((e) => e == null
            ? null
            : Substance_Ingredient.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceToJson(Substance instance) => <String, dynamic>{
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
    };

Substance_Instance _$Substance_InstanceFromJson(Map<String, dynamic> json) {
  return Substance_Instance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    elementExpiry: json['elementExpiry'] == null
        ? null
        : Element.fromJson(json['elementExpiry'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Substance_InstanceToJson(Substance_Instance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'expiry': instance.expiry?.toIso8601String(),
      'elementExpiry': instance.elementExpiry?.toJson(),
      'quantity': instance.quantity?.toJson(),
    };

Substance_Ingredient _$Substance_IngredientFromJson(Map<String, dynamic> json) {
  return Substance_Ingredient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Ratio.fromJson(json['quantity'] as Map<String, dynamic>),
    substanceCodeableConcept: json['substanceCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['substanceCodeableConcept'] as Map<String, dynamic>),
    substanceReference: json['substanceReference'] == null
        ? null
        : Reference.fromJson(
            json['substanceReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Substance_IngredientToJson(
        Substance_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'substanceCodeableConcept': instance.substanceCodeableConcept?.toJson(),
      'substanceReference': instance.substanceReference?.toJson(),
    };
