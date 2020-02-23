import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SubstanceNucleicAcid {
  static Future<SubstanceNucleicAcid> newInstance({
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
    CodeableConcept sequenceType,
    int numberOfSubunits,
    Element elementNumberOfSubunits,
    String areaOfHybridisation,
    Element elementAreaOfHybridisation,
    CodeableConcept oligoNucleotideType,
    List<SubstanceNucleicAcid_Subunit> subunit,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceNucleicAcid newSubstanceNucleicAcid = new SubstanceNucleicAcid(
      resourceType: 'SubstanceNucleicAcid',
      id: id ?? await fhirDb.newResourceId('SubstanceNucleicAcid'),
      meta: meta ?? await Meta.newInstance(),
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
      subunit: subunit,
    );
    newSubstanceNucleicAcid.meta.createdAt = DateTime.now();
    newSubstanceNucleicAcid.meta.lastUpdated =
        newSubstanceNucleicAcid.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstanceNucleicAcid);
    return newSubstanceNucleicAcid;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'SubstanceNucleicAcid';
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

  SubstanceNucleicAcid({
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
    this.sequenceType,
    this.numberOfSubunits,
    this.elementNumberOfSubunits,
    this.areaOfHybridisation,
    this.elementAreaOfHybridisation,
    this.oligoNucleotideType,
    this.subunit,
  });

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcidToJson(this);
}

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
    List<SubstanceNucleicAcid_Sugar> sugar,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceNucleicAcid_Subunit newSubstanceNucleicAcid_Subunit =
        new SubstanceNucleicAcid_Subunit(
      id: id,
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
      sugar: sugar,
    );
    return newSubstanceNucleicAcid_Subunit;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int subunit;
  @HiveField(4)
  Element elementSubunit;
  @HiveField(5)
  String sequence;
  @HiveField(6)
  Element elementSequence;
  @HiveField(7)
  int length;
  @HiveField(8)
  Element elementLength;
  @HiveField(9)
  Attachment sequenceAttachment;
  @HiveField(10)
  CodeableConcept fivePrime;
  @HiveField(11)
  CodeableConcept threePrime;
  @HiveField(12)
  List<SubstanceNucleicAcid_Linkage> linkage;
  @HiveField(13)
  List<SubstanceNucleicAcid_Sugar> sugar;

  SubstanceNucleicAcid_Subunit({
    this.id,
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
    this.sugar,
  });

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SubunitToJson(this);
}

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
    Element elementResidueSite,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceNucleicAcid_Linkage newSubstanceNucleicAcid_Linkage =
        new SubstanceNucleicAcid_Linkage(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      connectivity: connectivity,
      elementConnectivity: elementConnectivity,
      identifier: identifier,
      name: name,
      elementName: elementName,
      residueSite: residueSite,
      elementResidueSite: elementResidueSite,
    );
    return newSubstanceNucleicAcid_Linkage;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String connectivity;
  @HiveField(4)
  Element elementConnectivity;
  @HiveField(5)
  Identifier identifier;
  @HiveField(6)
  String name;
  @HiveField(7)
  Element elementName;
  @HiveField(8)
  String residueSite;
  @HiveField(9)
  Element elementResidueSite;

  SubstanceNucleicAcid_Linkage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.connectivity,
    this.elementConnectivity,
    this.identifier,
    this.name,
    this.elementName,
    this.residueSite,
    this.elementResidueSite,
  });

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_LinkageToJson(this);
}

class SubstanceNucleicAcid_Sugar {
  static Future<SubstanceNucleicAcid_Sugar> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    String name,
    Element elementName,
    String residueSite,
    Element elementResidueSite,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceNucleicAcid_Sugar newSubstanceNucleicAcid_Sugar =
        new SubstanceNucleicAcid_Sugar(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      name: name,
      elementName: elementName,
      residueSite: residueSite,
      elementResidueSite: elementResidueSite,
    );
    return newSubstanceNucleicAcid_Sugar;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier identifier;
  @HiveField(4)
  String name;
  @HiveField(5)
  Element elementName;
  @HiveField(6)
  String residueSite;
  @HiveField(7)
  Element elementResidueSite;

  SubstanceNucleicAcid_Sugar({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.elementName,
    this.residueSite,
    this.elementResidueSite,
  });

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SugarToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceNucleicAcid _$SubstanceNucleicAcidFromJson(Map<String, dynamic> json) {
  return SubstanceNucleicAcid(
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
    SubstanceNucleicAcid instance) {
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
  writeNotNull('sequenceType', instance.sequenceType?.toJson());
  writeNotNull('numberOfSubunits', instance.numberOfSubunits);
  writeNotNull(
      'elementNumberOfSubunits', instance.elementNumberOfSubunits?.toJson());
  writeNotNull('areaOfHybridisation', instance.areaOfHybridisation);
  writeNotNull('elementAreaOfHybridisation',
      instance.elementAreaOfHybridisation?.toJson());
  writeNotNull('oligoNucleotideType', instance.oligoNucleotideType?.toJson());
  writeNotNull('subunit', instance.subunit?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    SubstanceNucleicAcid_Subunit instance) {
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
  writeNotNull('subunit', instance.subunit);
  writeNotNull('elementSubunit', instance.elementSubunit?.toJson());
  writeNotNull('sequence', instance.sequence);
  writeNotNull('elementSequence', instance.elementSequence?.toJson());
  writeNotNull('length', instance.length);
  writeNotNull('elementLength', instance.elementLength?.toJson());
  writeNotNull('sequenceAttachment', instance.sequenceAttachment?.toJson());
  writeNotNull('fivePrime', instance.fivePrime?.toJson());
  writeNotNull('threePrime', instance.threePrime?.toJson());
  writeNotNull('linkage', instance.linkage?.map((e) => e?.toJson())?.toList());
  writeNotNull('sugar', instance.sugar?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    SubstanceNucleicAcid_Linkage instance) {
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
  writeNotNull('connectivity', instance.connectivity);
  writeNotNull('elementConnectivity', instance.elementConnectivity?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('residueSite', instance.residueSite);
  writeNotNull('elementResidueSite', instance.elementResidueSite?.toJson());
  return val;
}

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
    SubstanceNucleicAcid_Sugar instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('residueSite', instance.residueSite);
  writeNotNull('elementResidueSite', instance.elementResidueSite?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceNucleicAcidAdapter extends TypeAdapter<SubstanceNucleicAcid> {
  @override
  SubstanceNucleicAcid read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid(
      resourceType: fields[0] as String,
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

class SubstanceNucleicAcid_SubunitAdapter
    extends TypeAdapter<SubstanceNucleicAcid_Subunit> {
  @override
  SubstanceNucleicAcid_Subunit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid_Subunit(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      subunit: fields[3] as int,
      elementSubunit: fields[4] as Element,
      sequence: fields[5] as String,
      elementSequence: fields[6] as Element,
      length: fields[7] as int,
      elementLength: fields[8] as Element,
      sequenceAttachment: fields[9] as Attachment,
      fivePrime: fields[10] as CodeableConcept,
      threePrime: fields[11] as CodeableConcept,
      linkage: (fields[12] as List)?.cast<SubstanceNucleicAcid_Linkage>(),
      sugar: (fields[13] as List)?.cast<SubstanceNucleicAcid_Sugar>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid_Subunit obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.subunit)
      ..writeByte(4)
      ..write(obj.elementSubunit)
      ..writeByte(5)
      ..write(obj.sequence)
      ..writeByte(6)
      ..write(obj.elementSequence)
      ..writeByte(7)
      ..write(obj.length)
      ..writeByte(8)
      ..write(obj.elementLength)
      ..writeByte(9)
      ..write(obj.sequenceAttachment)
      ..writeByte(10)
      ..write(obj.fivePrime)
      ..writeByte(11)
      ..write(obj.threePrime)
      ..writeByte(12)
      ..write(obj.linkage)
      ..writeByte(13)
      ..write(obj.sugar);
  }
}

class SubstanceNucleicAcid_LinkageAdapter
    extends TypeAdapter<SubstanceNucleicAcid_Linkage> {
  @override
  SubstanceNucleicAcid_Linkage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid_Linkage(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      connectivity: fields[3] as String,
      elementConnectivity: fields[4] as Element,
      identifier: fields[5] as Identifier,
      name: fields[6] as String,
      elementName: fields[7] as Element,
      residueSite: fields[8] as String,
      elementResidueSite: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid_Linkage obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.connectivity)
      ..writeByte(4)
      ..write(obj.elementConnectivity)
      ..writeByte(5)
      ..write(obj.identifier)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName)
      ..writeByte(8)
      ..write(obj.residueSite)
      ..writeByte(9)
      ..write(obj.elementResidueSite);
  }
}

class SubstanceNucleicAcid_SugarAdapter
    extends TypeAdapter<SubstanceNucleicAcid_Sugar> {
  @override
  SubstanceNucleicAcid_Sugar read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceNucleicAcid_Sugar(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      name: fields[4] as String,
      elementName: fields[5] as Element,
      residueSite: fields[6] as String,
      elementResidueSite: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceNucleicAcid_Sugar obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName)
      ..writeByte(6)
      ..write(obj.residueSite)
      ..writeByte(7)
      ..write(obj.elementResidueSite);
  }
}
