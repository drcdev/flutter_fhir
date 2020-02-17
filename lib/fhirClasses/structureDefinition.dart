import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true)
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
      resourceType: resourceType,
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
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String status;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  String copyright;
  Element elementCopyright;
  List<Coding> keyword;
  String fhirVersion;
  Element elementFhirVersion;
  List<StructureDefinition_Mapping> mapping;
  String kind;
  Element elementKind;
  bool abstract;
  Element elementAbstract;
  List<StructureDefinition_Context> context;
  List<String> contextInvariant;
  List<Element> elementContextInvariant;
  String type;
  Element elementType;
  String baseDefinition;
  String derivation;
  Element elementDerivation;
  StructureDefinition_Snapshot snapshot;
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

@JsonSerializable(explicitToJson: true)
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
      id: id ?? await fhirDb.newResourceId('StructureDefinition_Mapping'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identity;
  Element elementIdentity;
  String uri;
  Element elementUri;
  String name;
  Element elementName;
  String comment;
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

@JsonSerializable(explicitToJson: true)
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
      id: id ?? await fhirDb.newResourceId('StructureDefinition_Context'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      expression: expression,
      elementExpression: elementExpression,
    );
    return newStructureDefinition_Context;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String expression;
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

@JsonSerializable(explicitToJson: true)
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
      id: id ?? await fhirDb.newResourceId('StructureDefinition_Snapshot'),
      extension: extension,
      modifierExtension: modifierExtension,
      element: element,
    );
    return newStructureDefinition_Snapshot;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
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

@JsonSerializable(explicitToJson: true)
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
      id: id ?? await fhirDb.newResourceId('StructureDefinition_Differential'),
      extension: extension,
      modifierExtension: modifierExtension,
      element: element,
    );
    return newStructureDefinition_Differential;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
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

Map<String, dynamic> _$StructureDefinitionToJson(
        StructureDefinition instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'keyword': instance.keyword?.map((e) => e?.toJson())?.toList(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion': instance.elementFhirVersion?.toJson(),
      'mapping': instance.mapping?.map((e) => e?.toJson())?.toList(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'abstract': instance.abstract,
      'elementAbstract': instance.elementAbstract?.toJson(),
      'context': instance.context?.map((e) => e?.toJson())?.toList(),
      'contextInvariant': instance.contextInvariant,
      'elementContextInvariant':
          instance.elementContextInvariant?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'baseDefinition': instance.baseDefinition,
      'derivation': instance.derivation,
      'elementDerivation': instance.elementDerivation?.toJson(),
      'snapshot': instance.snapshot?.toJson(),
      'differential': instance.differential?.toJson(),
    };

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
        StructureDefinition_Mapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identity': instance.identity,
      'elementIdentity': instance.elementIdentity?.toJson(),
      'uri': instance.uri,
      'elementUri': instance.elementUri?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };

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
        StructureDefinition_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
    };

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
        StructureDefinition_Snapshot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'element': instance.element?.map((e) => e?.toJson())?.toList(),
    };

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
        StructureDefinition_Differential instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'element': instance.element?.map((e) => e?.toJson())?.toList(),
    };
