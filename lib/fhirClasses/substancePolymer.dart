import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/substanceAmount.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 188)
class SubstancePolymer {

	static Future<SubstancePolymer> newInstance({
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
		CodeableConcept classs,
		CodeableConcept geometry,
		List<CodeableConcept> copolymerConnectivity,
		List<String> modification,
		List<Element> elementModification,
		List<SubstancePolymer_MonomerSet> monomerSet,
		List<SubstancePolymer_Repeat> repeat}) async {
	SubstancePolymer newSubstancePolymer = new SubstancePolymer(
			id: await newId('SubstancePolymer'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			classs: classs,
			geometry: geometry,
			copolymerConnectivity: copolymerConnectivity,
			modification: modification,
			elementModification: elementModification,
			monomerSet: monomerSet,
			repeat: repeat);
	var substancePolymerBox = await Hive.openBox<SubstancePolymer>('SubstancePolymerBox');
	substancePolymerBox.put(newSubstancePolymer.id, newSubstancePolymer);
	return newSubstancePolymer;
}
  @HiveField(0)
  final String resourceType= 'SubstancePolymer';
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
  CodeableConcept classs;
  @HiveField(12)
  CodeableConcept geometry;
  @HiveField(13)
  List<CodeableConcept> copolymerConnectivity;
  @HiveField(14)
  List<String> modification;
  @HiveField(15)
  List<Element> elementModification;
  @HiveField(16)
  List<SubstancePolymer_MonomerSet> monomerSet;
  @HiveField(17)
  List<SubstancePolymer_Repeat> repeat;

SubstancePolymer(
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
    this.classs,
    this.geometry,
    this.copolymerConnectivity,
    this.modification,
    this.elementModification,
    this.monomerSet,
    this.repeat
    });

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) => _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

	static Future<SubstancePolymer_MonomerSet> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept ratioType,
		List<SubstancePolymer_StartingMaterial> startingMaterial}) async {
	SubstancePolymer_MonomerSet newSubstancePolymer_MonomerSet = new SubstancePolymer_MonomerSet(
			id: await newId('SubstancePolymer_MonomerSet'),
			extension: extension,
			modifierExtension: modifierExtension,
			ratioType: ratioType,
			startingMaterial: startingMaterial);
	var substancePolymer_MonomerSetBox = await Hive.openBox<SubstancePolymer_MonomerSet>('SubstancePolymer_MonomerSetBox');
	substancePolymer_MonomerSetBox.put(newSubstancePolymer_MonomerSet.id, newSubstancePolymer_MonomerSet);
	return newSubstancePolymer_MonomerSet;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept ratioType;
  List<SubstancePolymer_StartingMaterial> startingMaterial;

SubstancePolymer_MonomerSet(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.ratioType,
    this.startingMaterial
    });

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_MonomerSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StartingMaterial {

	static Future<SubstancePolymer_StartingMaterial> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept material,
		CodeableConcept type,
		bool isDefining,
		Element elementIsDefining,
		SubstanceAmount amount}) async {
	SubstancePolymer_StartingMaterial newSubstancePolymer_StartingMaterial = new SubstancePolymer_StartingMaterial(
			id: await newId('SubstancePolymer_StartingMaterial'),
			extension: extension,
			modifierExtension: modifierExtension,
			material: material,
			type: type,
			isDefining: isDefining,
			elementIsDefining: elementIsDefining,
			amount: amount);
	var substancePolymer_StartingMaterialBox = await Hive.openBox<SubstancePolymer_StartingMaterial>('SubstancePolymer_StartingMaterialBox');
	substancePolymer_StartingMaterialBox.put(newSubstancePolymer_StartingMaterial.id, newSubstancePolymer_StartingMaterial);
	return newSubstancePolymer_StartingMaterial;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept material;
  CodeableConcept type;
  bool isDefining;
  Element elementIsDefining;
  SubstanceAmount amount;

SubstancePolymer_StartingMaterial(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.isDefining,
    this.elementIsDefining,
    this.amount
    });

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StartingMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_Repeat {

	static Future<SubstancePolymer_Repeat> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int numberOfUnits,
		Element elementNumberOfUnits,
		String averageMolecularFormula,
		Element elementAverageMolecularFormula,
		CodeableConcept repeatUnitAmountType,
		List<SubstancePolymer_RepeatUnit> repeatUnit}) async {
	SubstancePolymer_Repeat newSubstancePolymer_Repeat = new SubstancePolymer_Repeat(
			id: await newId('SubstancePolymer_Repeat'),
			extension: extension,
			modifierExtension: modifierExtension,
			numberOfUnits: numberOfUnits,
			elementNumberOfUnits: elementNumberOfUnits,
			averageMolecularFormula: averageMolecularFormula,
			elementAverageMolecularFormula: elementAverageMolecularFormula,
			repeatUnitAmountType: repeatUnitAmountType,
			repeatUnit: repeatUnit);
	var substancePolymer_RepeatBox = await Hive.openBox<SubstancePolymer_Repeat>('SubstancePolymer_RepeatBox');
	substancePolymer_RepeatBox.put(newSubstancePolymer_Repeat.id, newSubstancePolymer_Repeat);
	return newSubstancePolymer_Repeat;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int numberOfUnits;
  Element elementNumberOfUnits;
  String averageMolecularFormula;
  Element elementAverageMolecularFormula;
  CodeableConcept repeatUnitAmountType;
  List<SubstancePolymer_RepeatUnit> repeatUnit;

SubstancePolymer_Repeat(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.numberOfUnits,
    this.elementNumberOfUnits,
    this.averageMolecularFormula,
    this.elementAverageMolecularFormula,
    this.repeatUnitAmountType,
    this.repeatUnit
    });

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_RepeatUnit {

	static Future<SubstancePolymer_RepeatUnit> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept orientationOfPolymerisation,
		String repeatUnit,
		Element elementRepeatUnit,
		SubstanceAmount amount,
		List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation,
		List<SubstancePolymer_StructuralRepresentation> structuralRepresentation}) async {
	SubstancePolymer_RepeatUnit newSubstancePolymer_RepeatUnit = new SubstancePolymer_RepeatUnit(
			id: await newId('SubstancePolymer_RepeatUnit'),
			extension: extension,
			modifierExtension: modifierExtension,
			orientationOfPolymerisation: orientationOfPolymerisation,
			repeatUnit: repeatUnit,
			elementRepeatUnit: elementRepeatUnit,
			amount: amount,
			degreeOfPolymerisation: degreeOfPolymerisation,
			structuralRepresentation: structuralRepresentation);
	var substancePolymer_RepeatUnitBox = await Hive.openBox<SubstancePolymer_RepeatUnit>('SubstancePolymer_RepeatUnitBox');
	substancePolymer_RepeatUnitBox.put(newSubstancePolymer_RepeatUnit.id, newSubstancePolymer_RepeatUnit);
	return newSubstancePolymer_RepeatUnit;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept orientationOfPolymerisation;
  String repeatUnit;
  Element elementRepeatUnit;
  SubstanceAmount amount;
  List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;
  List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;

SubstancePolymer_RepeatUnit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.orientationOfPolymerisation,
    this.repeatUnit,
    this.elementRepeatUnit,
    this.amount,
    this.degreeOfPolymerisation,
    this.structuralRepresentation
    });

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatUnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

	static Future<SubstancePolymer_DegreeOfPolymerisation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept degree,
		SubstanceAmount amount}) async {
	SubstancePolymer_DegreeOfPolymerisation newSubstancePolymer_DegreeOfPolymerisation = new SubstancePolymer_DegreeOfPolymerisation(
			id: await newId('SubstancePolymer_DegreeOfPolymerisation'),
			extension: extension,
			modifierExtension: modifierExtension,
			degree: degree,
			amount: amount);
	var substancePolymer_DegreeOfPolymerisationBox = await Hive.openBox<SubstancePolymer_DegreeOfPolymerisation>('SubstancePolymer_DegreeOfPolymerisationBox');
	substancePolymer_DegreeOfPolymerisationBox.put(newSubstancePolymer_DegreeOfPolymerisation.id, newSubstancePolymer_DegreeOfPolymerisation);
	return newSubstancePolymer_DegreeOfPolymerisation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept degree;
  SubstanceAmount amount;

SubstancePolymer_DegreeOfPolymerisation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.degree,
    this.amount
    });

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StructuralRepresentation {

	static Future<SubstancePolymer_StructuralRepresentation> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		String representation,
		Element elementRepresentation,
		Attachment attachment}) async {
	SubstancePolymer_StructuralRepresentation newSubstancePolymer_StructuralRepresentation = new SubstancePolymer_StructuralRepresentation(
			id: await newId('SubstancePolymer_StructuralRepresentation'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			representation: representation,
			elementRepresentation: elementRepresentation,
			attachment: attachment);
	var substancePolymer_StructuralRepresentationBox = await Hive.openBox<SubstancePolymer_StructuralRepresentation>('SubstancePolymer_StructuralRepresentationBox');
	substancePolymer_StructuralRepresentationBox.put(newSubstancePolymer_StructuralRepresentation.id, newSubstancePolymer_StructuralRepresentation);
	return newSubstancePolymer_StructuralRepresentation;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String representation;
  Element elementRepresentation;
  Attachment attachment;

SubstancePolymer_StructuralRepresentation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.elementRepresentation,
    this.attachment
    });

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StructuralRepresentationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstancePolymerAdapter extends TypeAdapter<SubstancePolymer> {
  @override
  final typeId = 188;

  @override
  SubstancePolymer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer(
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
      classs: fields[11] as CodeableConcept,
      geometry: fields[12] as CodeableConcept,
      copolymerConnectivity: (fields[13] as List)?.cast<CodeableConcept>(),
      modification: (fields[14] as List)?.cast<String>(),
      elementModification: (fields[15] as List)?.cast<Element>(),
      monomerSet: (fields[16] as List)?.cast<SubstancePolymer_MonomerSet>(),
      repeat: (fields[17] as List)?.cast<SubstancePolymer_Repeat>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer obj) {
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
      ..write(obj.classs)
      ..writeByte(12)
      ..write(obj.geometry)
      ..writeByte(13)
      ..write(obj.copolymerConnectivity)
      ..writeByte(14)
      ..write(obj.modification)
      ..writeByte(15)
      ..write(obj.elementModification)
      ..writeByte(16)
      ..write(obj.monomerSet)
      ..writeByte(17)
      ..write(obj.repeat);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstancePolymer _$SubstancePolymerFromJson(Map<String, dynamic> json) {
  return SubstancePolymer(
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
    classs: json['classs'] == null
        ? null
        : CodeableConcept.fromJson(json['classs'] as Map<String, dynamic>),
    geometry: json['geometry'] == null
        ? null
        : CodeableConcept.fromJson(json['geometry'] as Map<String, dynamic>),
    copolymerConnectivity: (json['copolymerConnectivity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modification:
        (json['modification'] as List)?.map((e) => e as String)?.toList(),
    elementModification: (json['elementModification'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    monomerSet: (json['monomerSet'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_MonomerSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    repeat: (json['repeat'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_Repeat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymerToJson(SubstancePolymer instance) =>
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
      'classs': instance.classs?.toJson(),
      'geometry': instance.geometry?.toJson(),
      'copolymerConnectivity':
          instance.copolymerConnectivity?.map((e) => e?.toJson())?.toList(),
      'modification': instance.modification,
      'elementModification':
          instance.elementModification?.map((e) => e?.toJson())?.toList(),
      'monomerSet': instance.monomerSet?.map((e) => e?.toJson())?.toList(),
      'repeat': instance.repeat?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_MonomerSet _$SubstancePolymer_MonomerSetFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_MonomerSet(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ratioType: json['ratioType'] == null
        ? null
        : CodeableConcept.fromJson(json['ratioType'] as Map<String, dynamic>),
    startingMaterial: (json['startingMaterial'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_StartingMaterial.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_MonomerSetToJson(
        SubstancePolymer_MonomerSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'ratioType': instance.ratioType?.toJson(),
      'startingMaterial':
          instance.startingMaterial?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_StartingMaterial _$SubstancePolymer_StartingMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_StartingMaterial(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    material: json['material'] == null
        ? null
        : CodeableConcept.fromJson(json['material'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    isDefining: json['isDefining'] as bool,
    elementIsDefining: json['elementIsDefining'] == null
        ? null
        : Element.fromJson(json['elementIsDefining'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_StartingMaterialToJson(
        SubstancePolymer_StartingMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'material': instance.material?.toJson(),
      'type': instance.type?.toJson(),
      'isDefining': instance.isDefining,
      'elementIsDefining': instance.elementIsDefining?.toJson(),
      'amount': instance.amount?.toJson(),
    };

SubstancePolymer_Repeat _$SubstancePolymer_RepeatFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_Repeat(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numberOfUnits: json['numberOfUnits'] as int,
    elementNumberOfUnits: json['elementNumberOfUnits'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfUnits'] as Map<String, dynamic>),
    averageMolecularFormula: json['averageMolecularFormula'] as String,
    elementAverageMolecularFormula:
        json['elementAverageMolecularFormula'] == null
            ? null
            : Element.fromJson(
                json['elementAverageMolecularFormula'] as Map<String, dynamic>),
    repeatUnitAmountType: json['repeatUnitAmountType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['repeatUnitAmountType'] as Map<String, dynamic>),
    repeatUnit: (json['repeatUnit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_RepeatUnit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_RepeatToJson(
        SubstancePolymer_Repeat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'numberOfUnits': instance.numberOfUnits,
      'elementNumberOfUnits': instance.elementNumberOfUnits?.toJson(),
      'averageMolecularFormula': instance.averageMolecularFormula,
      'elementAverageMolecularFormula':
          instance.elementAverageMolecularFormula?.toJson(),
      'repeatUnitAmountType': instance.repeatUnitAmountType?.toJson(),
      'repeatUnit': instance.repeatUnit?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_RepeatUnit _$SubstancePolymer_RepeatUnitFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_RepeatUnit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    orientationOfPolymerisation: json['orientationOfPolymerisation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['orientationOfPolymerisation'] as Map<String, dynamic>),
    repeatUnit: json['repeatUnit'] as String,
    elementRepeatUnit: json['elementRepeatUnit'] == null
        ? null
        : Element.fromJson(json['elementRepeatUnit'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
    degreeOfPolymerisation: (json['degreeOfPolymerisation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_DegreeOfPolymerisation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    structuralRepresentation: (json['structuralRepresentation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_StructuralRepresentation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_RepeatUnitToJson(
        SubstancePolymer_RepeatUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'orientationOfPolymerisation':
          instance.orientationOfPolymerisation?.toJson(),
      'repeatUnit': instance.repeatUnit,
      'elementRepeatUnit': instance.elementRepeatUnit?.toJson(),
      'amount': instance.amount?.toJson(),
      'degreeOfPolymerisation':
          instance.degreeOfPolymerisation?.map((e) => e?.toJson())?.toList(),
      'structuralRepresentation':
          instance.structuralRepresentation?.map((e) => e?.toJson())?.toList(),
    };

SubstancePolymer_DegreeOfPolymerisation
    _$SubstancePolymer_DegreeOfPolymerisationFromJson(
        Map<String, dynamic> json) {
  return SubstancePolymer_DegreeOfPolymerisation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    degree: json['degree'] == null
        ? null
        : CodeableConcept.fromJson(json['degree'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_DegreeOfPolymerisationToJson(
        SubstancePolymer_DegreeOfPolymerisation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'degree': instance.degree?.toJson(),
      'amount': instance.amount?.toJson(),
    };

SubstancePolymer_StructuralRepresentation
    _$SubstancePolymer_StructuralRepresentationFromJson(
        Map<String, dynamic> json) {
  return SubstancePolymer_StructuralRepresentation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    representation: json['representation'] as String,
    elementRepresentation: json['elementRepresentation'] == null
        ? null
        : Element.fromJson(
            json['elementRepresentation'] as Map<String, dynamic>),
    attachment: json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_StructuralRepresentationToJson(
        SubstancePolymer_StructuralRepresentation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'representation': instance.representation,
      'elementRepresentation': instance.elementRepresentation?.toJson(),
      'attachment': instance.attachment?.toJson(),
    };
