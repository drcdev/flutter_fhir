import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 187)
class SubstanceNucleicAcid {

	static Future<SubstanceNucleicAcid> newInstance({
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
		CodeableConcept sequenceType,
		int numberOfSubunits,
		Element elementNumberOfSubunits,
		String areaOfHybridisation,
		Element elementAreaOfHybridisation,
		CodeableConcept oligoNucleotideType,
		List<SubstanceNucleicAcid_Subunit> subunit}) async {
	SubstanceNucleicAcid newSubstanceNucleicAcid = new SubstanceNucleicAcid(
			id: await newId('SubstanceNucleicAcid'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			sequenceType: sequenceType,
			numberOfSubunits: numberOfSubunits,
			elementNumberOfSubunits: elementNumberOfSubunits,
			areaOfHybridisation: areaOfHybridisation,
			elementAreaOfHybridisation: elementAreaOfHybridisation,
			oligoNucleotideType: oligoNucleotideType,
			subunit: subunit);
	var substanceNucleicAcidBox = await Hive.openBox<SubstanceNucleicAcid>('SubstanceNucleicAcidBox');
	substanceNucleicAcidBox.put(newSubstanceNucleicAcid.id, newSubstanceNucleicAcid);
	return newSubstanceNucleicAcid;
}
  @HiveField(0)
  final String resourceType= 'SubstanceNucleicAcid';
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
  CodeableConcept sequenceType;
  @HiveField(12)
  int numberOfSubunits;
  @HiveField(13)
  Element elementNumberOfSubunits;
  @HiveField(14)
  String areaOfHybridisation;
  @HiveField(15)
  Element elementAreaOfHybridisation;
  @HiveField(16)
  CodeableConcept oligoNucleotideType;
  @HiveField(17)
  List<SubstanceNucleicAcid_Subunit> subunit;

SubstanceNucleicAcid(
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
    this.sequenceType,
    this.numberOfSubunits,
    this.elementNumberOfSubunits,
    this.areaOfHybridisation,
    this.elementAreaOfHybridisation,
    this.oligoNucleotideType,
    this.subunit
    });

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcidToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Subunit {

	static Future<SubstanceNucleicAcid_Subunit> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int subunit,
		Element elementSubunit,
		String sequence,
		Element elementSequence,
		int length,
		Element elementLength,
		Attachment sequenceAttachment,
		CodeableConcept fivePrime,
		CodeableConcept threePrime,
		List<SubstanceNucleicAcid_Linkage> linkage,
		List<SubstanceNucleicAcid_Sugar> sugar}) async {
	SubstanceNucleicAcid_Subunit newSubstanceNucleicAcid_Subunit = new SubstanceNucleicAcid_Subunit(
			id: await newId('SubstanceNucleicAcid_Subunit'),
			extension: extension,
			modifierExtension: modifierExtension,
			subunit: subunit,
			elementSubunit: elementSubunit,
			sequence: sequence,
			elementSequence: elementSequence,
			length: length,
			elementLength: elementLength,
			sequenceAttachment: sequenceAttachment,
			fivePrime: fivePrime,
			threePrime: threePrime,
			linkage: linkage,
			sugar: sugar);
	var substanceNucleicAcid_SubunitBox = await Hive.openBox<SubstanceNucleicAcid_Subunit>('SubstanceNucleicAcid_SubunitBox');
	substanceNucleicAcid_SubunitBox.put(newSubstanceNucleicAcid_Subunit.id, newSubstanceNucleicAcid_Subunit);
	return newSubstanceNucleicAcid_Subunit;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int subunit;
  Element elementSubunit;
  String sequence;
  Element elementSequence;
  int length;
  Element elementLength;
  Attachment sequenceAttachment;
  CodeableConcept fivePrime;
  CodeableConcept threePrime;
  List<SubstanceNucleicAcid_Linkage> linkage;
  List<SubstanceNucleicAcid_Sugar> sugar;

SubstanceNucleicAcid_Subunit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.subunit,
    this.elementSubunit,
    this.sequence,
    this.elementSequence,
    this.length,
    this.elementLength,
    this.sequenceAttachment,
    this.fivePrime,
    this.threePrime,
    this.linkage,
    this.sugar
    });

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SubunitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Linkage {

	static Future<SubstanceNucleicAcid_Linkage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String connectivity,
		Element elementConnectivity,
		Identifier identifier,
		String name,
		Element elementName,
		String residueSite,
		Element elementResidueSite}) async {
	SubstanceNucleicAcid_Linkage newSubstanceNucleicAcid_Linkage = new SubstanceNucleicAcid_Linkage(
			id: await newId('SubstanceNucleicAcid_Linkage'),
			extension: extension,
			modifierExtension: modifierExtension,
			connectivity: connectivity,
			elementConnectivity: elementConnectivity,
			identifier: identifier,
			name: name,
			elementName: elementName,
			residueSite: residueSite,
			elementResidueSite: elementResidueSite);
	var substanceNucleicAcid_LinkageBox = await Hive.openBox<SubstanceNucleicAcid_Linkage>('SubstanceNucleicAcid_LinkageBox');
	substanceNucleicAcid_LinkageBox.put(newSubstanceNucleicAcid_Linkage.id, newSubstanceNucleicAcid_Linkage);
	return newSubstanceNucleicAcid_Linkage;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String connectivity;
  Element elementConnectivity;
  Identifier identifier;
  String name;
  Element elementName;
  String residueSite;
  Element elementResidueSite;

SubstanceNucleicAcid_Linkage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.connectivity,
    this.elementConnectivity,
    this.identifier,
    this.name,
    this.elementName,
    this.residueSite,
    this.elementResidueSite
    });

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_LinkageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Sugar {

	static Future<SubstanceNucleicAcid_Sugar> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier identifier,
		String name,
		Element elementName,
		String residueSite,
		Element elementResidueSite}) async {
	SubstanceNucleicAcid_Sugar newSubstanceNucleicAcid_Sugar = new SubstanceNucleicAcid_Sugar(
			id: await newId('SubstanceNucleicAcid_Sugar'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			name: name,
			elementName: elementName,
			residueSite: residueSite,
			elementResidueSite: elementResidueSite);
	var substanceNucleicAcid_SugarBox = await Hive.openBox<SubstanceNucleicAcid_Sugar>('SubstanceNucleicAcid_SugarBox');
	substanceNucleicAcid_SugarBox.put(newSubstanceNucleicAcid_Sugar.id, newSubstanceNucleicAcid_Sugar);
	return newSubstanceNucleicAcid_Sugar;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  String name;
  Element elementName;
  String residueSite;
  Element elementResidueSite;

SubstanceNucleicAcid_Sugar(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.elementName,
    this.residueSite,
    this.elementResidueSite
    });

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SugarToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceNucleicAcidAdapter extends TypeAdapter<SubstanceNucleicAcid> {
  @override
  final typeId = 187;

  @override
  SubstanceNucleicAcid read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid(
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
      sequenceType: fields[11] as CodeableConcept,
      numberOfSubunits: fields[12] as int,
      elementNumberOfSubunits: fields[13] as Element,
      areaOfHybridisation: fields[14] as String,
      elementAreaOfHybridisation: fields[15] as Element,
      oligoNucleotideType: fields[16] as CodeableConcept,
      subunit: (fields[17] as List)?.cast<SubstanceNucleicAcid_Subunit>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid obj) {
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
      ..write(obj.sequenceType)
      ..writeByte(12)
      ..write(obj.numberOfSubunits)
      ..writeByte(13)
      ..write(obj.elementNumberOfSubunits)
      ..writeByte(14)
      ..write(obj.areaOfHybridisation)
      ..writeByte(15)
      ..write(obj.elementAreaOfHybridisation)
      ..writeByte(16)
      ..write(obj.oligoNucleotideType)
      ..writeByte(17)
      ..write(obj.subunit);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceNucleicAcid _$SubstanceNucleicAcidFromJson(Map<String, dynamic> json) {
  return SubstanceNucleicAcid(
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
    sequenceType: json['sequenceType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sequenceType'] as Map<String, dynamic>),
    numberOfSubunits: json['numberOfSubunits'] as int,
    elementNumberOfSubunits: json['elementNumberOfSubunits'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfSubunits'] as Map<String, dynamic>),
    areaOfHybridisation: json['areaOfHybridisation'] as String,
    elementAreaOfHybridisation: json['elementAreaOfHybridisation'] == null
        ? null
        : Element.fromJson(
            json['elementAreaOfHybridisation'] as Map<String, dynamic>),
    oligoNucleotideType: json['oligoNucleotideType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['oligoNucleotideType'] as Map<String, dynamic>),
    subunit: (json['subunit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceNucleicAcid_Subunit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcidToJson(
        SubstanceNucleicAcid instance) =>
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
      'sequenceType': instance.sequenceType?.toJson(),
      'numberOfSubunits': instance.numberOfSubunits,
      'elementNumberOfSubunits': instance.elementNumberOfSubunits?.toJson(),
      'areaOfHybridisation': instance.areaOfHybridisation,
      'elementAreaOfHybridisation':
          instance.elementAreaOfHybridisation?.toJson(),
      'oligoNucleotideType': instance.oligoNucleotideType?.toJson(),
      'subunit': instance.subunit?.map((e) => e?.toJson())?.toList(),
    };

SubstanceNucleicAcid_Subunit _$SubstanceNucleicAcid_SubunitFromJson(
    Map<String, dynamic> json) {
  return SubstanceNucleicAcid_Subunit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subunit: json['subunit'] as int,
    elementSubunit: json['elementSubunit'] == null
        ? null
        : Element.fromJson(json['elementSubunit'] as Map<String, dynamic>),
    sequence: json['sequence'] as String,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    length: json['length'] as int,
    elementLength: json['elementLength'] == null
        ? null
        : Element.fromJson(json['elementLength'] as Map<String, dynamic>),
    sequenceAttachment: json['sequenceAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['sequenceAttachment'] as Map<String, dynamic>),
    fivePrime: json['fivePrime'] == null
        ? null
        : CodeableConcept.fromJson(json['fivePrime'] as Map<String, dynamic>),
    threePrime: json['threePrime'] == null
        ? null
        : CodeableConcept.fromJson(json['threePrime'] as Map<String, dynamic>),
    linkage: (json['linkage'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceNucleicAcid_Linkage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sugar: (json['sugar'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceNucleicAcid_Sugar.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcid_SubunitToJson(
        SubstanceNucleicAcid_Subunit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'subunit': instance.subunit,
      'elementSubunit': instance.elementSubunit?.toJson(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'length': instance.length,
      'elementLength': instance.elementLength?.toJson(),
      'sequenceAttachment': instance.sequenceAttachment?.toJson(),
      'fivePrime': instance.fivePrime?.toJson(),
      'threePrime': instance.threePrime?.toJson(),
      'linkage': instance.linkage?.map((e) => e?.toJson())?.toList(),
      'sugar': instance.sugar?.map((e) => e?.toJson())?.toList(),
    };

SubstanceNucleicAcid_Linkage _$SubstanceNucleicAcid_LinkageFromJson(
    Map<String, dynamic> json) {
  return SubstanceNucleicAcid_Linkage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    connectivity: json['connectivity'] as String,
    elementConnectivity: json['elementConnectivity'] == null
        ? null
        : Element.fromJson(json['elementConnectivity'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    residueSite: json['residueSite'] as String,
    elementResidueSite: json['elementResidueSite'] == null
        ? null
        : Element.fromJson(json['elementResidueSite'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcid_LinkageToJson(
        SubstanceNucleicAcid_Linkage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'connectivity': instance.connectivity,
      'elementConnectivity': instance.elementConnectivity?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'residueSite': instance.residueSite,
      'elementResidueSite': instance.elementResidueSite?.toJson(),
    };

SubstanceNucleicAcid_Sugar _$SubstanceNucleicAcid_SugarFromJson(
    Map<String, dynamic> json) {
  return SubstanceNucleicAcid_Sugar(
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    residueSite: json['residueSite'] as String,
    elementResidueSite: json['elementResidueSite'] == null
        ? null
        : Element.fromJson(json['elementResidueSite'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceNucleicAcid_SugarToJson(
        SubstanceNucleicAcid_Sugar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'residueSite': instance.residueSite,
      'elementResidueSite': instance.elementResidueSite?.toJson(),
    };
