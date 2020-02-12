import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 191)
class SubstanceSourceMaterial {

	static Future<SubstanceSourceMaterial> newInstance({
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
		CodeableConcept sourceMaterialClass,
		CodeableConcept sourceMaterialType,
		CodeableConcept sourceMaterialState,
		Identifier organismId,
		String organismName,
		Element elementOrganismName,
		List<Identifier> parentSubstanceId,
		List<String> parentSubstanceName,
		List<Element> elementParentSubstanceName,
		List<CodeableConcept> countryOfOrigin,
		List<String> geographicalLocation,
		List<Element> elementGeographicalLocation,
		CodeableConcept developmentStage,
		List<SubstanceSourceMaterial_FractionDescription> fractionDescription,
		SubstanceSourceMaterial_Organism organism,
		List<SubstanceSourceMaterial_PartDescription> partDescription}) async {
	SubstanceSourceMaterial newSubstanceSourceMaterial = new SubstanceSourceMaterial(
			id: await newId('SubstanceSourceMaterial'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			sourceMaterialClass: sourceMaterialClass,
			sourceMaterialType: sourceMaterialType,
			sourceMaterialState: sourceMaterialState,
			organismId: organismId,
			organismName: organismName,
			elementOrganismName: elementOrganismName,
			parentSubstanceId: parentSubstanceId,
			parentSubstanceName: parentSubstanceName,
			elementParentSubstanceName: elementParentSubstanceName,
			countryOfOrigin: countryOfOrigin,
			geographicalLocation: geographicalLocation,
			elementGeographicalLocation: elementGeographicalLocation,
			developmentStage: developmentStage,
			fractionDescription: fractionDescription,
			organism: organism,
			partDescription: partDescription);
	var substanceSourceMaterialBox = await Hive.openBox<SubstanceSourceMaterial>('SubstanceSourceMaterialBox');
	substanceSourceMaterialBox.put(newSubstanceSourceMaterial.id, newSubstanceSourceMaterial);
	return newSubstanceSourceMaterial;
}
  @HiveField(0)
  final String resourceType= 'SubstanceSourceMaterial';
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
  CodeableConcept sourceMaterialClass;
  @HiveField(12)
  CodeableConcept sourceMaterialType;
  @HiveField(13)
  CodeableConcept sourceMaterialState;
  @HiveField(14)
  Identifier organismId;
  @HiveField(15)
  String organismName;
  @HiveField(16)
  Element elementOrganismName;
  @HiveField(17)
  List<Identifier> parentSubstanceId;
  @HiveField(18)
  List<String> parentSubstanceName;
  @HiveField(19)
  List<Element> elementParentSubstanceName;
  @HiveField(20)
  List<CodeableConcept> countryOfOrigin;
  @HiveField(21)
  List<String> geographicalLocation;
  @HiveField(22)
  List<Element> elementGeographicalLocation;
  @HiveField(23)
  CodeableConcept developmentStage;
  @HiveField(24)
  List<SubstanceSourceMaterial_FractionDescription> fractionDescription;
  @HiveField(25)
  SubstanceSourceMaterial_Organism organism;
  @HiveField(26)
  List<SubstanceSourceMaterial_PartDescription> partDescription;

SubstanceSourceMaterial(
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
    this.sourceMaterialClass,
    this.sourceMaterialType,
    this.sourceMaterialState,
    this.organismId,
    this.organismName,
    this.elementOrganismName,
    this.parentSubstanceId,
    this.parentSubstanceName,
    this.elementParentSubstanceName,
    this.countryOfOrigin,
    this.geographicalLocation,
    this.elementGeographicalLocation,
    this.developmentStage,
    this.fractionDescription,
    this.organism,
    this.partDescription
    });

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_FractionDescription {

	static Future<SubstanceSourceMaterial_FractionDescription> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String fraction,
		Element elementFraction,
		CodeableConcept materialType}) async {
	SubstanceSourceMaterial_FractionDescription newSubstanceSourceMaterial_FractionDescription = new SubstanceSourceMaterial_FractionDescription(
			id: await newId('SubstanceSourceMaterial_FractionDescription'),
			extension: extension,
			modifierExtension: modifierExtension,
			fraction: fraction,
			elementFraction: elementFraction,
			materialType: materialType);
	var substanceSourceMaterial_FractionDescriptionBox = await Hive.openBox<SubstanceSourceMaterial_FractionDescription>('SubstanceSourceMaterial_FractionDescriptionBox');
	substanceSourceMaterial_FractionDescriptionBox.put(newSubstanceSourceMaterial_FractionDescription.id, newSubstanceSourceMaterial_FractionDescription);
	return newSubstanceSourceMaterial_FractionDescription;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String fraction;
  Element elementFraction;
  CodeableConcept materialType;

SubstanceSourceMaterial_FractionDescription(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.fraction,
    this.elementFraction,
    this.materialType
    });

  factory SubstanceSourceMaterial_FractionDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_FractionDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_FractionDescriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Organism {

	static Future<SubstanceSourceMaterial_Organism> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept family,
		CodeableConcept genus,
		CodeableConcept species,
		CodeableConcept intraspecificType,
		String intraspecificDescription,
		Element elementIntraspecificDescription,
		List<SubstanceSourceMaterial_Author> author,
		SubstanceSourceMaterial_Hybrid hybrid,
		SubstanceSourceMaterial_OrganismGeneral organismGeneral}) async {
	SubstanceSourceMaterial_Organism newSubstanceSourceMaterial_Organism = new SubstanceSourceMaterial_Organism(
			id: await newId('SubstanceSourceMaterial_Organism'),
			extension: extension,
			modifierExtension: modifierExtension,
			family: family,
			genus: genus,
			species: species,
			intraspecificType: intraspecificType,
			intraspecificDescription: intraspecificDescription,
			elementIntraspecificDescription: elementIntraspecificDescription,
			author: author,
			hybrid: hybrid,
			organismGeneral: organismGeneral);
	var substanceSourceMaterial_OrganismBox = await Hive.openBox<SubstanceSourceMaterial_Organism>('SubstanceSourceMaterial_OrganismBox');
	substanceSourceMaterial_OrganismBox.put(newSubstanceSourceMaterial_Organism.id, newSubstanceSourceMaterial_Organism);
	return newSubstanceSourceMaterial_Organism;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept family;
  CodeableConcept genus;
  CodeableConcept species;
  CodeableConcept intraspecificType;
  String intraspecificDescription;
  Element elementIntraspecificDescription;
  List<SubstanceSourceMaterial_Author> author;
  SubstanceSourceMaterial_Hybrid hybrid;
  SubstanceSourceMaterial_OrganismGeneral organismGeneral;

SubstanceSourceMaterial_Organism(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.family,
    this.genus,
    this.species,
    this.intraspecificType,
    this.intraspecificDescription,
    this.elementIntraspecificDescription,
    this.author,
    this.hybrid,
    this.organismGeneral
    });

  factory SubstanceSourceMaterial_Organism.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_OrganismToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Author {

	static Future<SubstanceSourceMaterial_Author> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept authorType,
		String authorDescription,
		Element elementAuthorDescription}) async {
	SubstanceSourceMaterial_Author newSubstanceSourceMaterial_Author = new SubstanceSourceMaterial_Author(
			id: await newId('SubstanceSourceMaterial_Author'),
			extension: extension,
			modifierExtension: modifierExtension,
			authorType: authorType,
			authorDescription: authorDescription,
			elementAuthorDescription: elementAuthorDescription);
	var substanceSourceMaterial_AuthorBox = await Hive.openBox<SubstanceSourceMaterial_Author>('SubstanceSourceMaterial_AuthorBox');
	substanceSourceMaterial_AuthorBox.put(newSubstanceSourceMaterial_Author.id, newSubstanceSourceMaterial_Author);
	return newSubstanceSourceMaterial_Author;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept authorType;
  String authorDescription;
  Element elementAuthorDescription;

SubstanceSourceMaterial_Author(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.authorType,
    this.authorDescription,
    this.elementAuthorDescription
    });

  factory SubstanceSourceMaterial_Author.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_AuthorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_Hybrid {

	static Future<SubstanceSourceMaterial_Hybrid> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String maternalOrganismId,
		Element elementMaternalOrganismId,
		String maternalOrganismName,
		Element elementMaternalOrganismName,
		String paternalOrganismId,
		Element elementPaternalOrganismId,
		String paternalOrganismName,
		Element elementPaternalOrganismName,
		CodeableConcept hybridType}) async {
	SubstanceSourceMaterial_Hybrid newSubstanceSourceMaterial_Hybrid = new SubstanceSourceMaterial_Hybrid(
			id: await newId('SubstanceSourceMaterial_Hybrid'),
			extension: extension,
			modifierExtension: modifierExtension,
			maternalOrganismId: maternalOrganismId,
			elementMaternalOrganismId: elementMaternalOrganismId,
			maternalOrganismName: maternalOrganismName,
			elementMaternalOrganismName: elementMaternalOrganismName,
			paternalOrganismId: paternalOrganismId,
			elementPaternalOrganismId: elementPaternalOrganismId,
			paternalOrganismName: paternalOrganismName,
			elementPaternalOrganismName: elementPaternalOrganismName,
			hybridType: hybridType);
	var substanceSourceMaterial_HybridBox = await Hive.openBox<SubstanceSourceMaterial_Hybrid>('SubstanceSourceMaterial_HybridBox');
	substanceSourceMaterial_HybridBox.put(newSubstanceSourceMaterial_Hybrid.id, newSubstanceSourceMaterial_Hybrid);
	return newSubstanceSourceMaterial_Hybrid;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String maternalOrganismId;
  Element elementMaternalOrganismId;
  String maternalOrganismName;
  Element elementMaternalOrganismName;
  String paternalOrganismId;
  Element elementPaternalOrganismId;
  String paternalOrganismName;
  Element elementPaternalOrganismName;
  CodeableConcept hybridType;

SubstanceSourceMaterial_Hybrid(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.maternalOrganismId,
    this.elementMaternalOrganismId,
    this.maternalOrganismName,
    this.elementMaternalOrganismName,
    this.paternalOrganismId,
    this.elementPaternalOrganismId,
    this.paternalOrganismName,
    this.elementPaternalOrganismName,
    this.hybridType
    });

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_HybridFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_HybridToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_OrganismGeneral {

	static Future<SubstanceSourceMaterial_OrganismGeneral> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept kingdom,
		CodeableConcept phylum,
		CodeableConcept classs,
		CodeableConcept order}) async {
	SubstanceSourceMaterial_OrganismGeneral newSubstanceSourceMaterial_OrganismGeneral = new SubstanceSourceMaterial_OrganismGeneral(
			id: await newId('SubstanceSourceMaterial_OrganismGeneral'),
			extension: extension,
			modifierExtension: modifierExtension,
			kingdom: kingdom,
			phylum: phylum,
			classs: classs,
			order: order);
	var substanceSourceMaterial_OrganismGeneralBox = await Hive.openBox<SubstanceSourceMaterial_OrganismGeneral>('SubstanceSourceMaterial_OrganismGeneralBox');
	substanceSourceMaterial_OrganismGeneralBox.put(newSubstanceSourceMaterial_OrganismGeneral.id, newSubstanceSourceMaterial_OrganismGeneral);
	return newSubstanceSourceMaterial_OrganismGeneral;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept kingdom;
  CodeableConcept phylum;
  CodeableConcept classs;
  CodeableConcept order;

SubstanceSourceMaterial_OrganismGeneral(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.kingdom,
    this.phylum,
    this.classs,
    this.order
    });

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_OrganismGeneralToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial_PartDescription {

	static Future<SubstanceSourceMaterial_PartDescription> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept part,
		CodeableConcept partLocation}) async {
	SubstanceSourceMaterial_PartDescription newSubstanceSourceMaterial_PartDescription = new SubstanceSourceMaterial_PartDescription(
			id: await newId('SubstanceSourceMaterial_PartDescription'),
			extension: extension,
			modifierExtension: modifierExtension,
			part: part,
			partLocation: partLocation);
	var substanceSourceMaterial_PartDescriptionBox = await Hive.openBox<SubstanceSourceMaterial_PartDescription>('SubstanceSourceMaterial_PartDescriptionBox');
	substanceSourceMaterial_PartDescriptionBox.put(newSubstanceSourceMaterial_PartDescription.id, newSubstanceSourceMaterial_PartDescription);
	return newSubstanceSourceMaterial_PartDescription;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept part;
  CodeableConcept partLocation;

SubstanceSourceMaterial_PartDescription(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.part,
    this.partLocation
    });

  factory SubstanceSourceMaterial_PartDescription.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterial_PartDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_PartDescriptionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceSourceMaterialAdapter
    extends TypeAdapter<SubstanceSourceMaterial> {
  @override
  final typeId = 191;

  @override
  SubstanceSourceMaterial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial(
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
      sourceMaterialClass: fields[11] as CodeableConcept,
      sourceMaterialType: fields[12] as CodeableConcept,
      sourceMaterialState: fields[13] as CodeableConcept,
      organismId: fields[14] as Identifier,
      organismName: fields[15] as String,
      elementOrganismName: fields[16] as Element,
      parentSubstanceId: (fields[17] as List)?.cast<Identifier>(),
      parentSubstanceName: (fields[18] as List)?.cast<String>(),
      elementParentSubstanceName: (fields[19] as List)?.cast<Element>(),
      countryOfOrigin: (fields[20] as List)?.cast<CodeableConcept>(),
      geographicalLocation: (fields[21] as List)?.cast<String>(),
      elementGeographicalLocation: (fields[22] as List)?.cast<Element>(),
      developmentStage: fields[23] as CodeableConcept,
      fractionDescription: (fields[24] as List)
          ?.cast<SubstanceSourceMaterial_FractionDescription>(),
      organism: fields[25] as SubstanceSourceMaterial_Organism,
      partDescription:
          (fields[26] as List)?.cast<SubstanceSourceMaterial_PartDescription>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.sourceMaterialClass)
      ..writeByte(12)
      ..write(obj.sourceMaterialType)
      ..writeByte(13)
      ..write(obj.sourceMaterialState)
      ..writeByte(14)
      ..write(obj.organismId)
      ..writeByte(15)
      ..write(obj.organismName)
      ..writeByte(16)
      ..write(obj.elementOrganismName)
      ..writeByte(17)
      ..write(obj.parentSubstanceId)
      ..writeByte(18)
      ..write(obj.parentSubstanceName)
      ..writeByte(19)
      ..write(obj.elementParentSubstanceName)
      ..writeByte(20)
      ..write(obj.countryOfOrigin)
      ..writeByte(21)
      ..write(obj.geographicalLocation)
      ..writeByte(22)
      ..write(obj.elementGeographicalLocation)
      ..writeByte(23)
      ..write(obj.developmentStage)
      ..writeByte(24)
      ..write(obj.fractionDescription)
      ..writeByte(25)
      ..write(obj.organism)
      ..writeByte(26)
      ..write(obj.partDescription);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceSourceMaterial _$SubstanceSourceMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial(
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
    sourceMaterialClass: json['sourceMaterialClass'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialClass'] as Map<String, dynamic>),
    sourceMaterialType: json['sourceMaterialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialType'] as Map<String, dynamic>),
    sourceMaterialState: json['sourceMaterialState'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialState'] as Map<String, dynamic>),
    organismId: json['organismId'] == null
        ? null
        : Identifier.fromJson(json['organismId'] as Map<String, dynamic>),
    organismName: json['organismName'] as String,
    elementOrganismName: json['elementOrganismName'] == null
        ? null
        : Element.fromJson(json['elementOrganismName'] as Map<String, dynamic>),
    parentSubstanceId: (json['parentSubstanceId'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parentSubstanceName: (json['parentSubstanceName'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementParentSubstanceName: (json['elementParentSubstanceName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countryOfOrigin: (json['countryOfOrigin'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    geographicalLocation: (json['geographicalLocation'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementGeographicalLocation: (json['elementGeographicalLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    developmentStage: json['developmentStage'] == null
        ? null
        : CodeableConcept.fromJson(
            json['developmentStage'] as Map<String, dynamic>),
    fractionDescription: (json['fractionDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_FractionDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    organism: json['organism'] == null
        ? null
        : SubstanceSourceMaterial_Organism.fromJson(
            json['organism'] as Map<String, dynamic>),
    partDescription: (json['partDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_PartDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterialToJson(
        SubstanceSourceMaterial instance) =>
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
      'sourceMaterialClass': instance.sourceMaterialClass?.toJson(),
      'sourceMaterialType': instance.sourceMaterialType?.toJson(),
      'sourceMaterialState': instance.sourceMaterialState?.toJson(),
      'organismId': instance.organismId?.toJson(),
      'organismName': instance.organismName,
      'elementOrganismName': instance.elementOrganismName?.toJson(),
      'parentSubstanceId':
          instance.parentSubstanceId?.map((e) => e?.toJson())?.toList(),
      'parentSubstanceName': instance.parentSubstanceName,
      'elementParentSubstanceName': instance.elementParentSubstanceName
          ?.map((e) => e?.toJson())
          ?.toList(),
      'countryOfOrigin':
          instance.countryOfOrigin?.map((e) => e?.toJson())?.toList(),
      'geographicalLocation': instance.geographicalLocation,
      'elementGeographicalLocation': instance.elementGeographicalLocation
          ?.map((e) => e?.toJson())
          ?.toList(),
      'developmentStage': instance.developmentStage?.toJson(),
      'fractionDescription':
          instance.fractionDescription?.map((e) => e?.toJson())?.toList(),
      'organism': instance.organism?.toJson(),
      'partDescription':
          instance.partDescription?.map((e) => e?.toJson())?.toList(),
    };

SubstanceSourceMaterial_FractionDescription
    _$SubstanceSourceMaterial_FractionDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_FractionDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fraction: json['fraction'] as String,
    elementFraction: json['elementFraction'] == null
        ? null
        : Element.fromJson(json['elementFraction'] as Map<String, dynamic>),
    materialType: json['materialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['materialType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_FractionDescriptionToJson(
        SubstanceSourceMaterial_FractionDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'fraction': instance.fraction,
      'elementFraction': instance.elementFraction?.toJson(),
      'materialType': instance.materialType?.toJson(),
    };

SubstanceSourceMaterial_Organism _$SubstanceSourceMaterial_OrganismFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Organism(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    family: json['family'] == null
        ? null
        : CodeableConcept.fromJson(json['family'] as Map<String, dynamic>),
    genus: json['genus'] == null
        ? null
        : CodeableConcept.fromJson(json['genus'] as Map<String, dynamic>),
    species: json['species'] == null
        ? null
        : CodeableConcept.fromJson(json['species'] as Map<String, dynamic>),
    intraspecificType: json['intraspecificType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intraspecificType'] as Map<String, dynamic>),
    intraspecificDescription: json['intraspecificDescription'] as String,
    elementIntraspecificDescription: json['elementIntraspecificDescription'] ==
            null
        ? null
        : Element.fromJson(
            json['elementIntraspecificDescription'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_Author.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    hybrid: json['hybrid'] == null
        ? null
        : SubstanceSourceMaterial_Hybrid.fromJson(
            json['hybrid'] as Map<String, dynamic>),
    organismGeneral: json['organismGeneral'] == null
        ? null
        : SubstanceSourceMaterial_OrganismGeneral.fromJson(
            json['organismGeneral'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismToJson(
        SubstanceSourceMaterial_Organism instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'family': instance.family?.toJson(),
      'genus': instance.genus?.toJson(),
      'species': instance.species?.toJson(),
      'intraspecificType': instance.intraspecificType?.toJson(),
      'intraspecificDescription': instance.intraspecificDescription,
      'elementIntraspecificDescription':
          instance.elementIntraspecificDescription?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'hybrid': instance.hybrid?.toJson(),
      'organismGeneral': instance.organismGeneral?.toJson(),
    };

SubstanceSourceMaterial_Author _$SubstanceSourceMaterial_AuthorFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Author(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorType: json['authorType'] == null
        ? null
        : CodeableConcept.fromJson(json['authorType'] as Map<String, dynamic>),
    authorDescription: json['authorDescription'] as String,
    elementAuthorDescription: json['elementAuthorDescription'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_AuthorToJson(
        SubstanceSourceMaterial_Author instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'authorType': instance.authorType?.toJson(),
      'authorDescription': instance.authorDescription,
      'elementAuthorDescription': instance.elementAuthorDescription?.toJson(),
    };

SubstanceSourceMaterial_Hybrid _$SubstanceSourceMaterial_HybridFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Hybrid(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maternalOrganismId: json['maternalOrganismId'] as String,
    elementMaternalOrganismId: json['elementMaternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['elementMaternalOrganismId'] as Map<String, dynamic>),
    maternalOrganismName: json['maternalOrganismName'] as String,
    elementMaternalOrganismName: json['elementMaternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['elementMaternalOrganismName'] as Map<String, dynamic>),
    paternalOrganismId: json['paternalOrganismId'] as String,
    elementPaternalOrganismId: json['elementPaternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['elementPaternalOrganismId'] as Map<String, dynamic>),
    paternalOrganismName: json['paternalOrganismName'] as String,
    elementPaternalOrganismName: json['elementPaternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['elementPaternalOrganismName'] as Map<String, dynamic>),
    hybridType: json['hybridType'] == null
        ? null
        : CodeableConcept.fromJson(json['hybridType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_HybridToJson(
        SubstanceSourceMaterial_Hybrid instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'maternalOrganismId': instance.maternalOrganismId,
      'elementMaternalOrganismId': instance.elementMaternalOrganismId?.toJson(),
      'maternalOrganismName': instance.maternalOrganismName,
      'elementMaternalOrganismName':
          instance.elementMaternalOrganismName?.toJson(),
      'paternalOrganismId': instance.paternalOrganismId,
      'elementPaternalOrganismId': instance.elementPaternalOrganismId?.toJson(),
      'paternalOrganismName': instance.paternalOrganismName,
      'elementPaternalOrganismName':
          instance.elementPaternalOrganismName?.toJson(),
      'hybridType': instance.hybridType?.toJson(),
    };

SubstanceSourceMaterial_OrganismGeneral
    _$SubstanceSourceMaterial_OrganismGeneralFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_OrganismGeneral(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kingdom: json['kingdom'] == null
        ? null
        : CodeableConcept.fromJson(json['kingdom'] as Map<String, dynamic>),
    phylum: json['phylum'] == null
        ? null
        : CodeableConcept.fromJson(json['phylum'] as Map<String, dynamic>),
    classs: json['classs'] == null
        ? null
        : CodeableConcept.fromJson(json['classs'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : CodeableConcept.fromJson(json['order'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismGeneralToJson(
        SubstanceSourceMaterial_OrganismGeneral instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kingdom': instance.kingdom?.toJson(),
      'phylum': instance.phylum?.toJson(),
      'classs': instance.classs?.toJson(),
      'order': instance.order?.toJson(),
    };

SubstanceSourceMaterial_PartDescription
    _$SubstanceSourceMaterial_PartDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_PartDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    part: json['part'] == null
        ? null
        : CodeableConcept.fromJson(json['part'] as Map<String, dynamic>),
    partLocation: json['partLocation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['partLocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_PartDescriptionToJson(
        SubstanceSourceMaterial_PartDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'part': instance.part?.toJson(),
      'partLocation': instance.partLocation?.toJson(),
    };
