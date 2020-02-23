import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/elementDefinition.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class StructureDefinition {
  static Future<StructureDefinition> newInstance({
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
    String url,
    Element elementUrl,
    List<Identifier> identifier,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    String copyright,
    Element elementCopyright,
    List<Coding> keyword,
    String fhirVersion,
    Element elementFhirVersion,
    List<StructureDefinition_Mapping> mapping,
    String kind,
    Element elementKind,
    bool abstract,
    Element elementAbstract,
    List<StructureDefinition_Context> context,
    List<String> contextInvariant,
    List<Element> elementContextInvariant,
    String type,
    Element elementType,
    String baseDefinition,
    String derivation,
    Element elementDerivation,
    StructureDefinition_Snapshot snapshot,
    StructureDefinition_Differential differential,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureDefinition newStructureDefinition = new StructureDefinition(
      resourceType: 'StructureDefinition',
      id: id ?? await fhirDb.newResourceId('StructureDefinition'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      identifier: identifier,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      copyright: copyright,
      elementCopyright: elementCopyright,
      keyword: keyword,
      fhirVersion: fhirVersion,
      elementFhirVersion: elementFhirVersion,
      mapping: mapping,
      kind: kind,
      elementKind: elementKind,
      abstract: abstract,
      elementAbstract: elementAbstract,
      context: context,
      contextInvariant: contextInvariant,
      elementContextInvariant: elementContextInvariant,
      type: type,
      elementType: elementType,
      baseDefinition: baseDefinition,
      derivation: derivation,
      elementDerivation: elementDerivation,
      snapshot: snapshot,
      differential: differential,
    );
    newStructureDefinition.meta.createdAt = DateTime.now();
    newStructureDefinition.meta.lastUpdated =
        newStructureDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newStructureDefinition);
    return newStructureDefinition;
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
  String resourceType = 'StructureDefinition';
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
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String status;
  @HiveField(21)
  Element elementStatus;
  @HiveField(22)
  bool experimental;
  @HiveField(23)
  Element elementExperimental;
  @HiveField(24)
  DateTime date;
  @HiveField(25)
  Element elementDate;
  @HiveField(26)
  String publisher;
  @HiveField(27)
  Element elementPublisher;
  @HiveField(28)
  List<ContactDetail> contact;
  @HiveField(29)
  String description;
  @HiveField(30)
  Element elementDescription;
  @HiveField(31)
  List<UsageContext> useContext;
  @HiveField(32)
  List<CodeableConcept> jurisdiction;
  @HiveField(33)
  String purpose;
  @HiveField(34)
  Element elementPurpose;
  @HiveField(35)
  String copyright;
  @HiveField(36)
  Element elementCopyright;
  @HiveField(37)
  List<Coding> keyword;
  @HiveField(38)
  String fhirVersion;
  @HiveField(39)
  Element elementFhirVersion;
  @HiveField(40)
  List<StructureDefinition_Mapping> mapping;
  @HiveField(41)
  String kind;
  @HiveField(42)
  Element elementKind;
  @HiveField(43)
  bool abstract;
  @HiveField(44)
  Element elementAbstract;
  @HiveField(45)
  List<StructureDefinition_Context> context;
  @HiveField(46)
  List<String> contextInvariant;
  @HiveField(47)
  List<Element> elementContextInvariant;
  @HiveField(48)
  String type;
  @HiveField(49)
  Element elementType;
  @HiveField(50)
  String baseDefinition;
  @HiveField(51)
  String derivation;
  @HiveField(52)
  Element elementDerivation;
  @HiveField(53)
  StructureDefinition_Snapshot snapshot;
  @HiveField(54)
  StructureDefinition_Differential differential;

  StructureDefinition({
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.keyword,
    this.fhirVersion,
    this.elementFhirVersion,
    this.mapping,
    this.kind,
    this.elementKind,
    this.abstract,
    this.elementAbstract,
    this.context,
    this.contextInvariant,
    this.elementContextInvariant,
    this.type,
    this.elementType,
    this.baseDefinition,
    this.derivation,
    this.elementDerivation,
    this.snapshot,
    this.differential,
  });

  factory StructureDefinition.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinitionToJson(this);
}

class StructureDefinition_Mapping {
  static Future<StructureDefinition_Mapping> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String identity,
    Element elementIdentity,
    String uri,
    Element elementUri,
    String name,
    Element elementName,
    String comment,
    Element elementComment,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureDefinition_Mapping newStructureDefinition_Mapping =
        new StructureDefinition_Mapping(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identity: identity,
      elementIdentity: elementIdentity,
      uri: uri,
      elementUri: elementUri,
      name: name,
      elementName: elementName,
      comment: comment,
      elementComment: elementComment,
    );
    return newStructureDefinition_Mapping;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String identity;
  @HiveField(4)
  Element elementIdentity;
  @HiveField(5)
  String uri;
  @HiveField(6)
  Element elementUri;
  @HiveField(7)
  String name;
  @HiveField(8)
  Element elementName;
  @HiveField(9)
  String comment;
  @HiveField(10)
  Element elementComment;

  StructureDefinition_Mapping({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.elementIdentity,
    this.uri,
    this.elementUri,
    this.name,
    this.elementName,
    this.comment,
    this.elementComment,
  });

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_MappingToJson(this);
}

class StructureDefinition_Context {
  static Future<StructureDefinition_Context> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String expression,
    Element elementExpression,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureDefinition_Context newStructureDefinition_Context =
        new StructureDefinition_Context(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      expression: expression,
      elementExpression: elementExpression,
    );
    return newStructureDefinition_Context;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  String expression;
  @HiveField(6)
  Element elementExpression;

  StructureDefinition_Context({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.expression,
    this.elementExpression,
  });

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinition_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_ContextToJson(this);
}

class StructureDefinition_Snapshot {
  static Future<StructureDefinition_Snapshot> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<ElementDefinition> element,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureDefinition_Snapshot newStructureDefinition_Snapshot =
        new StructureDefinition_Snapshot(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      element: element,
    );
    return newStructureDefinition_Snapshot;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<ElementDefinition> element;

  StructureDefinition_Snapshot({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.element,
  });

  factory StructureDefinition_Snapshot.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinition_SnapshotFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_SnapshotToJson(this);
}

class StructureDefinition_Differential {
  static Future<StructureDefinition_Differential> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<ElementDefinition> element,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureDefinition_Differential newStructureDefinition_Differential =
        new StructureDefinition_Differential(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      element: element,
    );
    return newStructureDefinition_Differential;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<ElementDefinition> element;

  StructureDefinition_Differential({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.element,
  });

  factory StructureDefinition_Differential.fromJson(
          Map<String, dynamic> json) =>
      _$StructureDefinition_DifferentialFromJson(json);
  Map<String, dynamic> toJson() =>
      _$StructureDefinition_DifferentialToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructureDefinition _$StructureDefinitionFromJson(Map<String, dynamic> json) {
  return StructureDefinition(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    keyword: (json['keyword'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fhirVersion: json['fhirVersion'] as String,
    elementFhirVersion: json['elementFhirVersion'] == null
        ? null
        : Element.fromJson(json['elementFhirVersion'] as Map<String, dynamic>),
    mapping: (json['mapping'] as List)
        ?.map((e) => e == null
            ? null
            : StructureDefinition_Mapping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    abstract: json['abstract'] as bool,
    elementAbstract: json['elementAbstract'] == null
        ? null
        : Element.fromJson(json['elementAbstract'] as Map<String, dynamic>),
    context: (json['context'] as List)
        ?.map((e) => e == null
            ? null
            : StructureDefinition_Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contextInvariant:
        (json['contextInvariant'] as List)?.map((e) => e as String)?.toList(),
    elementContextInvariant: (json['elementContextInvariant'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    baseDefinition: json['baseDefinition'] as String,
    derivation: json['derivation'] as String,
    elementDerivation: json['elementDerivation'] == null
        ? null
        : Element.fromJson(json['elementDerivation'] as Map<String, dynamic>),
    snapshot: json['snapshot'] == null
        ? null
        : StructureDefinition_Snapshot.fromJson(
            json['snapshot'] as Map<String, dynamic>),
    differential: json['differential'] == null
        ? null
        : StructureDefinition_Differential.fromJson(
            json['differential'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureDefinitionToJson(StructureDefinition instance) {
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
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('keyword', instance.keyword?.map((e) => e?.toJson())?.toList());
  writeNotNull('fhirVersion', instance.fhirVersion);
  writeNotNull('elementFhirVersion', instance.elementFhirVersion?.toJson());
  writeNotNull('mapping', instance.mapping?.map((e) => e?.toJson())?.toList());
  writeNotNull('kind', instance.kind);
  writeNotNull('elementKind', instance.elementKind?.toJson());
  writeNotNull('abstract', instance.abstract);
  writeNotNull('elementAbstract', instance.elementAbstract?.toJson());
  writeNotNull('context', instance.context?.map((e) => e?.toJson())?.toList());
  writeNotNull('contextInvariant', instance.contextInvariant);
  writeNotNull('elementContextInvariant',
      instance.elementContextInvariant?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('baseDefinition', instance.baseDefinition);
  writeNotNull('derivation', instance.derivation);
  writeNotNull('elementDerivation', instance.elementDerivation?.toJson());
  writeNotNull('snapshot', instance.snapshot?.toJson());
  writeNotNull('differential', instance.differential?.toJson());
  return val;
}

StructureDefinition_Mapping _$StructureDefinition_MappingFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Mapping(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identity: json['identity'] as String,
    elementIdentity: json['elementIdentity'] == null
        ? null
        : Element.fromJson(json['elementIdentity'] as Map<String, dynamic>),
    uri: json['uri'] as String,
    elementUri: json['elementUri'] == null
        ? null
        : Element.fromJson(json['elementUri'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureDefinition_MappingToJson(
    StructureDefinition_Mapping instance) {
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
  writeNotNull('identity', instance.identity);
  writeNotNull('elementIdentity', instance.elementIdentity?.toJson());
  writeNotNull('uri', instance.uri);
  writeNotNull('elementUri', instance.elementUri?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  return val;
}

StructureDefinition_Context _$StructureDefinition_ContextFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Context(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureDefinition_ContextToJson(
    StructureDefinition_Context instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  return val;
}

StructureDefinition_Snapshot _$StructureDefinition_SnapshotFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Snapshot(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    element: (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureDefinition_SnapshotToJson(
    StructureDefinition_Snapshot instance) {
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
  writeNotNull('element', instance.element?.map((e) => e?.toJson())?.toList());
  return val;
}

StructureDefinition_Differential _$StructureDefinition_DifferentialFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Differential(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    element: (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureDefinition_DifferentialToJson(
    StructureDefinition_Differential instance) {
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
  writeNotNull('element', instance.element?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StructureDefinitionAdapter extends TypeAdapter<StructureDefinition> {
  @override
  StructureDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureDefinition(
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      experimental: fields[22] as bool,
      elementExperimental: fields[23] as Element,
      date: fields[24] as DateTime,
      elementDate: fields[25] as Element,
      publisher: fields[26] as String,
      elementPublisher: fields[27] as Element,
      contact: (fields[28] as List)?.cast<ContactDetail>(),
      description: fields[29] as String,
      elementDescription: fields[30] as Element,
      useContext: (fields[31] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[32] as List)?.cast<CodeableConcept>(),
      purpose: fields[33] as String,
      elementPurpose: fields[34] as Element,
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      keyword: (fields[37] as List)?.cast<Coding>(),
      fhirVersion: fields[38] as String,
      elementFhirVersion: fields[39] as Element,
      mapping: (fields[40] as List)?.cast<StructureDefinition_Mapping>(),
      kind: fields[41] as String,
      elementKind: fields[42] as Element,
      abstract: fields[43] as bool,
      elementAbstract: fields[44] as Element,
      context: (fields[45] as List)?.cast<StructureDefinition_Context>(),
      contextInvariant: (fields[46] as List)?.cast<String>(),
      elementContextInvariant: (fields[47] as List)?.cast<Element>(),
      type: fields[48] as String,
      elementType: fields[49] as Element,
      baseDefinition: fields[50] as String,
      derivation: fields[51] as String,
      elementDerivation: fields[52] as Element,
      snapshot: fields[53] as StructureDefinition_Snapshot,
      differential: fields[54] as StructureDefinition_Differential,
    );
  }

  @override
  void write(BinaryWriter writer, StructureDefinition obj) {
    writer
      ..writeByte(55)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.experimental)
      ..writeByte(23)
      ..write(obj.elementExperimental)
      ..writeByte(24)
      ..write(obj.date)
      ..writeByte(25)
      ..write(obj.elementDate)
      ..writeByte(26)
      ..write(obj.publisher)
      ..writeByte(27)
      ..write(obj.elementPublisher)
      ..writeByte(28)
      ..write(obj.contact)
      ..writeByte(29)
      ..write(obj.description)
      ..writeByte(30)
      ..write(obj.elementDescription)
      ..writeByte(31)
      ..write(obj.useContext)
      ..writeByte(32)
      ..write(obj.jurisdiction)
      ..writeByte(33)
      ..write(obj.purpose)
      ..writeByte(34)
      ..write(obj.elementPurpose)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.keyword)
      ..writeByte(38)
      ..write(obj.fhirVersion)
      ..writeByte(39)
      ..write(obj.elementFhirVersion)
      ..writeByte(40)
      ..write(obj.mapping)
      ..writeByte(41)
      ..write(obj.kind)
      ..writeByte(42)
      ..write(obj.elementKind)
      ..writeByte(43)
      ..write(obj.abstract)
      ..writeByte(44)
      ..write(obj.elementAbstract)
      ..writeByte(45)
      ..write(obj.context)
      ..writeByte(46)
      ..write(obj.contextInvariant)
      ..writeByte(47)
      ..write(obj.elementContextInvariant)
      ..writeByte(48)
      ..write(obj.type)
      ..writeByte(49)
      ..write(obj.elementType)
      ..writeByte(50)
      ..write(obj.baseDefinition)
      ..writeByte(51)
      ..write(obj.derivation)
      ..writeByte(52)
      ..write(obj.elementDerivation)
      ..writeByte(53)
      ..write(obj.snapshot)
      ..writeByte(54)
      ..write(obj.differential);
  }
}

class StructureDefinition_MappingAdapter
    extends TypeAdapter<StructureDefinition_Mapping> {
  @override
  StructureDefinition_Mapping read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureDefinition_Mapping(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identity: fields[3] as String,
      elementIdentity: fields[4] as Element,
      uri: fields[5] as String,
      elementUri: fields[6] as Element,
      name: fields[7] as String,
      elementName: fields[8] as Element,
      comment: fields[9] as String,
      elementComment: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureDefinition_Mapping obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identity)
      ..writeByte(4)
      ..write(obj.elementIdentity)
      ..writeByte(5)
      ..write(obj.uri)
      ..writeByte(6)
      ..write(obj.elementUri)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.elementName)
      ..writeByte(9)
      ..write(obj.comment)
      ..writeByte(10)
      ..write(obj.elementComment);
  }
}

class StructureDefinition_ContextAdapter
    extends TypeAdapter<StructureDefinition_Context> {
  @override
  StructureDefinition_Context read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureDefinition_Context(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      expression: fields[5] as String,
      elementExpression: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureDefinition_Context obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.expression)
      ..writeByte(6)
      ..write(obj.elementExpression);
  }
}

class StructureDefinition_SnapshotAdapter
    extends TypeAdapter<StructureDefinition_Snapshot> {
  @override
  StructureDefinition_Snapshot read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureDefinition_Snapshot(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      element: (fields[3] as List)?.cast<ElementDefinition>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureDefinition_Snapshot obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.element);
  }
}

class StructureDefinition_DifferentialAdapter
    extends TypeAdapter<StructureDefinition_Differential> {
  @override
  StructureDefinition_Differential read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureDefinition_Differential(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      element: (fields[3] as List)?.cast<ElementDefinition>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureDefinition_Differential obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.element);
  }
}
