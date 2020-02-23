import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ConceptMap {
  static Future<ConceptMap> newInstance({
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
    Identifier identifier,
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
    String sourceUri,
    Element elementSourceUri,
    String sourceCanonical,
    Element elementSourceCanonical,
    String targetUri,
    Element elementTargetUri,
    String targetCanonical,
    Element elementTargetCanonical,
    List<ConceptMap_Group> group,
  }) async {
    var fhirDb = new DatabaseHelper();
    ConceptMap newConceptMap = new ConceptMap(
      resourceType: 'ConceptMap',
      id: id ?? await fhirDb.newResourceId('ConceptMap'),
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
      sourceUri: sourceUri,
      elementSourceUri: elementSourceUri,
      sourceCanonical: sourceCanonical,
      elementSourceCanonical: elementSourceCanonical,
      targetUri: targetUri,
      elementTargetUri: elementTargetUri,
      targetCanonical: targetCanonical,
      elementTargetCanonical: elementTargetCanonical,
      group: group,
    );
    newConceptMap.meta.createdAt = DateTime.now();
    newConceptMap.meta.lastUpdated = newConceptMap.meta.createdAt;
    int saved = await fhirDb.saveResource(newConceptMap);
    return newConceptMap;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ConceptMap';
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
  Identifier identifier;
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
  String sourceUri;
  Element elementSourceUri;
  String sourceCanonical;
  Element elementSourceCanonical;
  String targetUri;
  Element elementTargetUri;
  String targetCanonical;
  Element elementTargetCanonical;
  List<ConceptMap_Group> group;

  ConceptMap({
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
    this.sourceUri,
    this.elementSourceUri,
    this.sourceCanonical,
    this.elementSourceCanonical,
    this.targetUri,
    this.elementTargetUri,
    this.targetCanonical,
    this.elementTargetCanonical,
    this.group,
  });

  factory ConceptMap.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMapToJson(this);
}

class ConceptMap_Group {
  static Future<ConceptMap_Group> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String source,
    Element elementSource,
    String sourceVersion,
    Element elementSourceVersion,
    String target,
    Element elementTarget,
    String targetVersion,
    Element elementTargetVersion,
    List<ConceptMap_Element> element,
    ConceptMap_Unmapped unmapped,
  }) async {
    var fhirDb = new DatabaseHelper();
    ConceptMap_Group newConceptMap_Group = new ConceptMap_Group(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      source: source,
      elementSource: elementSource,
      sourceVersion: sourceVersion,
      elementSourceVersion: elementSourceVersion,
      target: target,
      elementTarget: elementTarget,
      targetVersion: targetVersion,
      elementTargetVersion: elementTargetVersion,
      element: element,
      unmapped: unmapped,
    );
    return newConceptMap_Group;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String source;
  Element elementSource;
  String sourceVersion;
  Element elementSourceVersion;
  String target;
  Element elementTarget;
  String targetVersion;
  Element elementTargetVersion;
  List<ConceptMap_Element> element;
  ConceptMap_Unmapped unmapped;

  ConceptMap_Group({
    this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource,
    this.sourceVersion,
    this.elementSourceVersion,
    this.target,
    this.elementTarget,
    this.targetVersion,
    this.elementTargetVersion,
    @required this.element,
    this.unmapped,
  });

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_GroupToJson(this);
}

class ConceptMap_Element {
  static Future<ConceptMap_Element> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    List<ConceptMap_Target> target,
  }) async {
    var fhirDb = new DatabaseHelper();
    ConceptMap_Element newConceptMap_Element = new ConceptMap_Element(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      target: target,
    );
    return newConceptMap_Element;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  List<ConceptMap_Target> target;

  ConceptMap_Element({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.target,
  });

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_ElementToJson(this);
}

class ConceptMap_Target {
  static Future<ConceptMap_Target> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    String equivalence,
    Element elementEquivalence,
    String comment,
    Element elementComment,
    List<ConceptMap_DependsOn> dependsOn,
    List<ConceptMap_DependsOn> product,
  }) async {
    var fhirDb = new DatabaseHelper();
    ConceptMap_Target newConceptMap_Target = new ConceptMap_Target(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      equivalence: equivalence,
      elementEquivalence: elementEquivalence,
      comment: comment,
      elementComment: elementComment,
      dependsOn: dependsOn,
      product: product,
    );
    return newConceptMap_Target;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  String equivalence;
  Element elementEquivalence;
  String comment;
  Element elementComment;
  List<ConceptMap_DependsOn> dependsOn;
  List<ConceptMap_DependsOn> product;

  ConceptMap_Target({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.equivalence,
    this.elementEquivalence,
    this.comment,
    this.elementComment,
    this.dependsOn,
    this.product,
  });

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_TargetToJson(this);
}

class ConceptMap_DependsOn {
  static Future<ConceptMap_DependsOn> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String property,
    Element elementProperty,
    String system,
    String value,
    Element elementValue,
    String display,
    Element elementDisplay,
  }) async {
    var fhirDb = new DatabaseHelper();
    ConceptMap_DependsOn newConceptMap_DependsOn = new ConceptMap_DependsOn(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      property: property,
      elementProperty: elementProperty,
      system: system,
      value: value,
      elementValue: elementValue,
      display: display,
      elementDisplay: elementDisplay,
    );
    return newConceptMap_DependsOn;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String property;
  Element elementProperty;
  String system;
  String value;
  Element elementValue;
  String display;
  Element elementDisplay;

  ConceptMap_DependsOn({
    this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.elementProperty,
    this.system,
    this.value,
    this.elementValue,
    this.display,
    this.elementDisplay,
  });

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_DependsOnToJson(this);
}

class ConceptMap_Unmapped {
  static Future<ConceptMap_Unmapped> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String mode,
    Element elementMode,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    String url,
  }) async {
    var fhirDb = new DatabaseHelper();
    ConceptMap_Unmapped newConceptMap_Unmapped = new ConceptMap_Unmapped(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      mode: mode,
      elementMode: elementMode,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      url: url,
    );
    return newConceptMap_Unmapped;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode;
  Element elementMode;
  String code;
  Element elementCode;
  String display;
  Element elementDisplay;
  String url;

  ConceptMap_Unmapped({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.url,
  });

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_UnmappedFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_UnmappedToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConceptMap _$ConceptMapFromJson(Map<String, dynamic> json) {
  return ConceptMap(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
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
    sourceUri: json['sourceUri'] as String,
    elementSourceUri: json['elementSourceUri'] == null
        ? null
        : Element.fromJson(json['elementSourceUri'] as Map<String, dynamic>),
    sourceCanonical: json['sourceCanonical'] as String,
    elementSourceCanonical: json['elementSourceCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementSourceCanonical'] as Map<String, dynamic>),
    targetUri: json['targetUri'] as String,
    elementTargetUri: json['elementTargetUri'] == null
        ? null
        : Element.fromJson(json['elementTargetUri'] as Map<String, dynamic>),
    targetCanonical: json['targetCanonical'] as String,
    elementTargetCanonical: json['elementTargetCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementTargetCanonical'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMapToJson(ConceptMap instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
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
  writeNotNull('sourceUri', instance.sourceUri);
  writeNotNull('elementSourceUri', instance.elementSourceUri?.toJson());
  writeNotNull('sourceCanonical', instance.sourceCanonical);
  writeNotNull(
      'elementSourceCanonical', instance.elementSourceCanonical?.toJson());
  writeNotNull('targetUri', instance.targetUri);
  writeNotNull('elementTargetUri', instance.elementTargetUri?.toJson());
  writeNotNull('targetCanonical', instance.targetCanonical);
  writeNotNull(
      'elementTargetCanonical', instance.elementTargetCanonical?.toJson());
  writeNotNull('group', instance.group?.map((e) => e?.toJson())?.toList());
  return val;
}

ConceptMap_Group _$ConceptMap_GroupFromJson(Map<String, dynamic> json) {
  return ConceptMap_Group(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    sourceVersion: json['sourceVersion'] as String,
    elementSourceVersion: json['elementSourceVersion'] == null
        ? null
        : Element.fromJson(
            json['elementSourceVersion'] as Map<String, dynamic>),
    target: json['target'] as String,
    elementTarget: json['elementTarget'] == null
        ? null
        : Element.fromJson(json['elementTarget'] as Map<String, dynamic>),
    targetVersion: json['targetVersion'] as String,
    elementTargetVersion: json['elementTargetVersion'] == null
        ? null
        : Element.fromJson(
            json['elementTargetVersion'] as Map<String, dynamic>),
    element: (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    unmapped: json['unmapped'] == null
        ? null
        : ConceptMap_Unmapped.fromJson(
            json['unmapped'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConceptMap_GroupToJson(ConceptMap_Group instance) {
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
  writeNotNull('source', instance.source);
  writeNotNull('elementSource', instance.elementSource?.toJson());
  writeNotNull('sourceVersion', instance.sourceVersion);
  writeNotNull('elementSourceVersion', instance.elementSourceVersion?.toJson());
  writeNotNull('target', instance.target);
  writeNotNull('elementTarget', instance.elementTarget?.toJson());
  writeNotNull('targetVersion', instance.targetVersion);
  writeNotNull('elementTargetVersion', instance.elementTargetVersion?.toJson());
  writeNotNull('element', instance.element?.map((e) => e?.toJson())?.toList());
  writeNotNull('unmapped', instance.unmapped?.toJson());
  return val;
}

ConceptMap_Element _$ConceptMap_ElementFromJson(Map<String, dynamic> json) {
  return ConceptMap_Element(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMap_ElementToJson(ConceptMap_Element instance) {
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
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  writeNotNull('target', instance.target?.map((e) => e?.toJson())?.toList());
  return val;
}

ConceptMap_Target _$ConceptMap_TargetFromJson(Map<String, dynamic> json) {
  return ConceptMap_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    equivalence: json['equivalence'] as String,
    elementEquivalence: json['elementEquivalence'] == null
        ? null
        : Element.fromJson(json['elementEquivalence'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    dependsOn: (json['dependsOn'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    product: (json['product'] as List)
        ?.map((e) => e == null
            ? null
            : ConceptMap_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConceptMap_TargetToJson(ConceptMap_Target instance) {
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
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  writeNotNull('equivalence', instance.equivalence);
  writeNotNull('elementEquivalence', instance.elementEquivalence?.toJson());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  writeNotNull(
      'dependsOn', instance.dependsOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('product', instance.product?.map((e) => e?.toJson())?.toList());
  return val;
}

ConceptMap_DependsOn _$ConceptMap_DependsOnFromJson(Map<String, dynamic> json) {
  return ConceptMap_DependsOn(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: json['property'] as String,
    elementProperty: json['elementProperty'] == null
        ? null
        : Element.fromJson(json['elementProperty'] as Map<String, dynamic>),
    system: json['system'] as String,
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConceptMap_DependsOnToJson(
    ConceptMap_DependsOn instance) {
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
  writeNotNull('property', instance.property);
  writeNotNull('elementProperty', instance.elementProperty?.toJson());
  writeNotNull('system', instance.system);
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  return val;
}

ConceptMap_Unmapped _$ConceptMap_UnmappedFromJson(Map<String, dynamic> json) {
  return ConceptMap_Unmapped(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ConceptMap_UnmappedToJson(ConceptMap_Unmapped instance) {
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
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  writeNotNull('url', instance.url);
  return val;
}
