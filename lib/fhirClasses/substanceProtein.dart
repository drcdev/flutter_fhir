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

class SubstanceProtein {
  static Future<SubstanceProtein> newInstance({
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
    List<String> disulfideLinkage,
    List<Element> elementDisulfideLinkage,
    List<SubstanceProtein_Subunit> subunit,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceProtein newSubstanceProtein = new SubstanceProtein(
      resourceType: 'SubstanceProtein',
      id: id ?? await fhirDb.newResourceId('SubstanceProtein'),
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
      disulfideLinkage: disulfideLinkage,
      elementDisulfideLinkage: elementDisulfideLinkage,
      subunit: subunit,
    );
    newSubstanceProtein.meta.createdAt = DateTime.now();
    newSubstanceProtein.meta.lastUpdated = newSubstanceProtein.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstanceProtein);
    return newSubstanceProtein;
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
  String resourceType = 'SubstanceProtein';
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
  List<String> disulfideLinkage;
  @HiveField(15)
  List<Element> elementDisulfideLinkage;
  @HiveField(16)
  List<SubstanceProtein_Subunit> subunit;

  SubstanceProtein({
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
    this.disulfideLinkage,
    this.elementDisulfideLinkage,
    this.subunit,
  });

  factory SubstanceProtein.fromJson(Map<String, dynamic> json) =>
      _$SubstanceProteinFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProteinToJson(this);
}

class SubstanceProtein_Subunit {
  static Future<SubstanceProtein_Subunit> newInstance({
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
    Identifier nTerminalModificationId,
    String nTerminalModification,
    Element elementNTerminalModification,
    Identifier cTerminalModificationId,
    String cTerminalModification,
    Element elementCTerminalModification,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceProtein_Subunit newSubstanceProtein_Subunit =
        new SubstanceProtein_Subunit(
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
      nTerminalModificationId: nTerminalModificationId,
      nTerminalModification: nTerminalModification,
      elementNTerminalModification: elementNTerminalModification,
      cTerminalModificationId: cTerminalModificationId,
      cTerminalModification: cTerminalModification,
      elementCTerminalModification: elementCTerminalModification,
    );
    return newSubstanceProtein_Subunit;
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
  Identifier nTerminalModificationId;
  @HiveField(11)
  String nTerminalModification;
  @HiveField(12)
  Element elementNTerminalModification;
  @HiveField(13)
  Identifier cTerminalModificationId;
  @HiveField(14)
  String cTerminalModification;
  @HiveField(15)
  Element elementCTerminalModification;

  SubstanceProtein_Subunit({
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
    this.nTerminalModificationId,
    this.nTerminalModification,
    this.elementNTerminalModification,
    this.cTerminalModificationId,
    this.cTerminalModification,
    this.elementCTerminalModification,
  });

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) =>
      _$SubstanceProtein_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProtein_SubunitToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceProtein _$SubstanceProteinFromJson(Map<String, dynamic> json) {
  return SubstanceProtein(
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
    disulfideLinkage:
        (json['disulfideLinkage'] as List)?.map((e) => e as String)?.toList(),
    elementDisulfideLinkage: (json['elementDisulfideLinkage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subunit: (json['subunit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceProtein_Subunit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceProteinToJson(SubstanceProtein instance) {
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
  writeNotNull('disulfideLinkage', instance.disulfideLinkage);
  writeNotNull('elementDisulfideLinkage',
      instance.elementDisulfideLinkage?.map((e) => e?.toJson())?.toList());
  writeNotNull('subunit', instance.subunit?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceProtein_Subunit _$SubstanceProtein_SubunitFromJson(
    Map<String, dynamic> json) {
  return SubstanceProtein_Subunit(
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
    nTerminalModificationId: json['nTerminalModificationId'] == null
        ? null
        : Identifier.fromJson(
            json['nTerminalModificationId'] as Map<String, dynamic>),
    nTerminalModification: json['nTerminalModification'] as String,
    elementNTerminalModification: json['elementNTerminalModification'] == null
        ? null
        : Element.fromJson(
            json['elementNTerminalModification'] as Map<String, dynamic>),
    cTerminalModificationId: json['cTerminalModificationId'] == null
        ? null
        : Identifier.fromJson(
            json['cTerminalModificationId'] as Map<String, dynamic>),
    cTerminalModification: json['cTerminalModification'] as String,
    elementCTerminalModification: json['elementCTerminalModification'] == null
        ? null
        : Element.fromJson(
            json['elementCTerminalModification'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceProtein_SubunitToJson(
    SubstanceProtein_Subunit instance) {
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
  writeNotNull(
      'nTerminalModificationId', instance.nTerminalModificationId?.toJson());
  writeNotNull('nTerminalModification', instance.nTerminalModification);
  writeNotNull('elementNTerminalModification',
      instance.elementNTerminalModification?.toJson());
  writeNotNull(
      'cTerminalModificationId', instance.cTerminalModificationId?.toJson());
  writeNotNull('cTerminalModification', instance.cTerminalModification);
  writeNotNull('elementCTerminalModification',
      instance.elementCTerminalModification?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceProteinAdapter extends TypeAdapter<SubstanceProtein> {
  @override
  SubstanceProtein read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceProtein(
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
      disulfideLinkage: (fields[14] as List)?.cast<String>(),
      elementDisulfideLinkage: (fields[15] as List)?.cast<Element>(),
      subunit: (fields[16] as List)?.cast<SubstanceProtein_Subunit>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceProtein obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.disulfideLinkage)
      ..writeByte(15)
      ..write(obj.elementDisulfideLinkage)
      ..writeByte(16)
      ..write(obj.subunit);
  }
}

class SubstanceProtein_SubunitAdapter
    extends TypeAdapter<SubstanceProtein_Subunit> {
  @override
  SubstanceProtein_Subunit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceProtein_Subunit(
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
      nTerminalModificationId: fields[10] as Identifier,
      nTerminalModification: fields[11] as String,
      elementNTerminalModification: fields[12] as Element,
      cTerminalModificationId: fields[13] as Identifier,
      cTerminalModification: fields[14] as String,
      elementCTerminalModification: fields[15] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceProtein_Subunit obj) {
    writer
      ..writeByte(16)
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
      ..write(obj.nTerminalModificationId)
      ..writeByte(11)
      ..write(obj.nTerminalModification)
      ..writeByte(12)
      ..write(obj.elementNTerminalModification)
      ..writeByte(13)
      ..write(obj.cTerminalModificationId)
      ..writeByte(14)
      ..write(obj.cTerminalModification)
      ..writeByte(15)
      ..write(obj.elementCTerminalModification);
  }
}
