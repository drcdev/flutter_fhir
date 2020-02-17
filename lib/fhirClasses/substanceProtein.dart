import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
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
      resourceType: resourceType,
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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept sequenceType;
  int numberOfSubunits;
  Element elementNumberOfSubunits;
  List<String> disulfideLinkage;
  List<Element> elementDisulfideLinkage;
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

@JsonSerializable(explicitToJson: true)
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
      id: id ?? await fhirDb.newResourceId('SubstanceProtein_Subunit'),
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
  Identifier nTerminalModificationId;
  String nTerminalModification;
  Element elementNTerminalModification;
  Identifier cTerminalModificationId;
  String cTerminalModification;
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

Map<String, dynamic> _$SubstanceProteinToJson(SubstanceProtein instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'disulfideLinkage': instance.disulfideLinkage,
      'elementDisulfideLinkage':
          instance.elementDisulfideLinkage?.map((e) => e?.toJson())?.toList(),
      'subunit': instance.subunit?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstanceProtein_Subunit instance) =>
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
      'nTerminalModificationId': instance.nTerminalModificationId?.toJson(),
      'nTerminalModification': instance.nTerminalModification,
      'elementNTerminalModification':
          instance.elementNTerminalModification?.toJson(),
      'cTerminalModificationId': instance.cTerminalModificationId?.toJson(),
      'cTerminalModification': instance.cTerminalModification,
      'elementCTerminalModification':
          instance.elementCTerminalModification?.toJson(),
    };
