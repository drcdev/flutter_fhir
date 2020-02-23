import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SearchParameter {
  static Future<SearchParameter> newInstance({
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
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String derivedFrom,
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
    String code,
    Element elementCode,
    List<String> base,
    List<Element> elementBase,
    String type,
    Element elementType,
    String expression,
    Element elementExpression,
    String xpath,
    Element elementXpath,
    String xpathUsage,
    Element elementXpathUsage,
    List<String> target,
    List<Element> elementTarget,
    bool multipleOr,
    Element elementMultipleOr,
    bool multipleAnd,
    Element elementMultipleAnd,
    String comparator,
    List<Element> elementComparator,
    String modifier,
    List<Element> elementModifier,
    List<String> chain,
    List<Element> elementChain,
    List<SearchParameter_Component> component,
  }) async {
    var fhirDb = new DatabaseHelper();
    SearchParameter newSearchParameter = new SearchParameter(
      resourceType: 'SearchParameter',
      id: id ?? await fhirDb.newResourceId('SearchParameter'),
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
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      derivedFrom: derivedFrom,
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
      code: code,
      elementCode: elementCode,
      base: base,
      elementBase: elementBase,
      type: type,
      elementType: elementType,
      expression: expression,
      elementExpression: elementExpression,
      xpath: xpath,
      elementXpath: elementXpath,
      xpathUsage: xpathUsage,
      elementXpathUsage: elementXpathUsage,
      target: target,
      elementTarget: elementTarget,
      multipleOr: multipleOr,
      elementMultipleOr: elementMultipleOr,
      multipleAnd: multipleAnd,
      elementMultipleAnd: elementMultipleAnd,
      comparator: comparator,
      elementComparator: elementComparator,
      modifier: modifier,
      elementModifier: elementModifier,
      chain: chain,
      elementChain: elementChain,
      component: component,
    );
    newSearchParameter.meta.createdAt = DateTime.now();
    newSearchParameter.meta.lastUpdated = newSearchParameter.meta.createdAt;
    int saved = await fhirDb.saveResource(newSearchParameter);
    return newSearchParameter;
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
  String resourceType = 'SearchParameter';
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
  String version;
  @HiveField(14)
  Element elementVersion;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  String derivedFrom;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  bool experimental;
  @HiveField(21)
  Element elementExperimental;
  @HiveField(22)
  DateTime date;
  @HiveField(23)
  Element elementDate;
  @HiveField(24)
  String publisher;
  @HiveField(25)
  Element elementPublisher;
  @HiveField(26)
  List<ContactDetail> contact;
  @HiveField(27)
  String description;
  @HiveField(28)
  Element elementDescription;
  @HiveField(29)
  List<UsageContext> useContext;
  @HiveField(30)
  List<CodeableConcept> jurisdiction;
  @HiveField(31)
  String purpose;
  @HiveField(32)
  Element elementPurpose;
  @HiveField(33)
  String code;
  @HiveField(34)
  Element elementCode;
  @HiveField(35)
  List<String> base;
  @HiveField(36)
  List<Element> elementBase;
  @HiveField(37)
  String type;
  @HiveField(38)
  Element elementType;
  @HiveField(39)
  String expression;
  @HiveField(40)
  Element elementExpression;
  @HiveField(41)
  String xpath;
  @HiveField(42)
  Element elementXpath;
  @HiveField(43)
  String xpathUsage;
  @HiveField(44)
  Element elementXpathUsage;
  @HiveField(45)
  List<String> target;
  @HiveField(46)
  List<Element> elementTarget;
  @HiveField(47)
  bool multipleOr;
  @HiveField(48)
  Element elementMultipleOr;
  @HiveField(49)
  bool multipleAnd;
  @HiveField(50)
  Element elementMultipleAnd;
  @HiveField(51)
  String comparator;
  @HiveField(52)
  List<Element> elementComparator;
  @HiveField(53)
  String modifier;
  @HiveField(54)
  List<Element> elementModifier;
  @HiveField(55)
  List<String> chain;
  @HiveField(56)
  List<Element> elementChain;
  @HiveField(57)
  List<SearchParameter_Component> component;

  SearchParameter({
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
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.derivedFrom,
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
    this.code,
    this.elementCode,
    this.base,
    this.elementBase,
    this.type,
    this.elementType,
    this.expression,
    this.elementExpression,
    this.xpath,
    this.elementXpath,
    this.xpathUsage,
    this.elementXpathUsage,
    this.target,
    this.elementTarget,
    this.multipleOr,
    this.elementMultipleOr,
    this.multipleAnd,
    this.elementMultipleAnd,
    this.comparator,
    this.elementComparator,
    this.modifier,
    this.elementModifier,
    this.chain,
    this.elementChain,
    this.component,
  });

  factory SearchParameter.fromJson(Map<String, dynamic> json) =>
      _$SearchParameterFromJson(json);
  Map<String, dynamic> toJson() => _$SearchParameterToJson(this);
}

class SearchParameter_Component {
  static Future<SearchParameter_Component> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String definition,
    String expression,
    Element elementExpression,
  }) async {
    var fhirDb = new DatabaseHelper();
    SearchParameter_Component newSearchParameter_Component =
        new SearchParameter_Component(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      definition: definition,
      expression: expression,
      elementExpression: elementExpression,
    );
    return newSearchParameter_Component;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String definition;
  @HiveField(4)
  String expression;
  @HiveField(5)
  Element elementExpression;

  SearchParameter_Component({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.definition,
    this.expression,
    this.elementExpression,
  });

  factory SearchParameter_Component.fromJson(Map<String, dynamic> json) =>
      _$SearchParameter_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$SearchParameter_ComponentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchParameter _$SearchParameterFromJson(Map<String, dynamic> json) {
  return SearchParameter(
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
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    derivedFrom: json['derivedFrom'] as String,
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
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    base: (json['base'] as List)?.map((e) => e as String)?.toList(),
    elementBase: (json['elementBase'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    elementXpath: json['elementXpath'] == null
        ? null
        : Element.fromJson(json['elementXpath'] as Map<String, dynamic>),
    xpathUsage: json['xpathUsage'] as String,
    elementXpathUsage: json['elementXpathUsage'] == null
        ? null
        : Element.fromJson(json['elementXpathUsage'] as Map<String, dynamic>),
    target: (json['target'] as List)?.map((e) => e as String)?.toList(),
    elementTarget: (json['elementTarget'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleOr: json['multipleOr'] as bool,
    elementMultipleOr: json['elementMultipleOr'] == null
        ? null
        : Element.fromJson(json['elementMultipleOr'] as Map<String, dynamic>),
    multipleAnd: json['multipleAnd'] as bool,
    elementMultipleAnd: json['elementMultipleAnd'] == null
        ? null
        : Element.fromJson(json['elementMultipleAnd'] as Map<String, dynamic>),
    comparator: json['comparator'] as String,
    elementComparator: (json['elementComparator'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: json['modifier'] as String,
    elementModifier: (json['elementModifier'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    chain: (json['chain'] as List)?.map((e) => e as String)?.toList(),
    elementChain: (json['elementChain'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : SearchParameter_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SearchParameterToJson(SearchParameter instance) {
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
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('derivedFrom', instance.derivedFrom);
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
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('base', instance.base);
  writeNotNull(
      'elementBase', instance.elementBase?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  writeNotNull('xpath', instance.xpath);
  writeNotNull('elementXpath', instance.elementXpath?.toJson());
  writeNotNull('xpathUsage', instance.xpathUsage);
  writeNotNull('elementXpathUsage', instance.elementXpathUsage?.toJson());
  writeNotNull('target', instance.target);
  writeNotNull('elementTarget',
      instance.elementTarget?.map((e) => e?.toJson())?.toList());
  writeNotNull('multipleOr', instance.multipleOr);
  writeNotNull('elementMultipleOr', instance.elementMultipleOr?.toJson());
  writeNotNull('multipleAnd', instance.multipleAnd);
  writeNotNull('elementMultipleAnd', instance.elementMultipleAnd?.toJson());
  writeNotNull('comparator', instance.comparator);
  writeNotNull('elementComparator',
      instance.elementComparator?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifier', instance.modifier);
  writeNotNull('elementModifier',
      instance.elementModifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('chain', instance.chain);
  writeNotNull(
      'elementChain', instance.elementChain?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'component', instance.component?.map((e) => e?.toJson())?.toList());
  return val;
}

SearchParameter_Component _$SearchParameter_ComponentFromJson(
    Map<String, dynamic> json) {
  return SearchParameter_Component(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definition: json['definition'] as String,
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchParameter_ComponentToJson(
    SearchParameter_Component instance) {
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
  writeNotNull('definition', instance.definition);
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchParameterAdapter extends TypeAdapter<SearchParameter> {
  @override
  SearchParameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchParameter(
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
      version: fields[13] as String,
      elementVersion: fields[14] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      derivedFrom: fields[17] as String,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      experimental: fields[20] as bool,
      elementExperimental: fields[21] as Element,
      date: fields[22] as DateTime,
      elementDate: fields[23] as Element,
      publisher: fields[24] as String,
      elementPublisher: fields[25] as Element,
      contact: (fields[26] as List)?.cast<ContactDetail>(),
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
      useContext: (fields[29] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[30] as List)?.cast<CodeableConcept>(),
      purpose: fields[31] as String,
      elementPurpose: fields[32] as Element,
      code: fields[33] as String,
      elementCode: fields[34] as Element,
      base: (fields[35] as List)?.cast<String>(),
      elementBase: (fields[36] as List)?.cast<Element>(),
      type: fields[37] as String,
      elementType: fields[38] as Element,
      expression: fields[39] as String,
      elementExpression: fields[40] as Element,
      xpath: fields[41] as String,
      elementXpath: fields[42] as Element,
      xpathUsage: fields[43] as String,
      elementXpathUsage: fields[44] as Element,
      target: (fields[45] as List)?.cast<String>(),
      elementTarget: (fields[46] as List)?.cast<Element>(),
      multipleOr: fields[47] as bool,
      elementMultipleOr: fields[48] as Element,
      multipleAnd: fields[49] as bool,
      elementMultipleAnd: fields[50] as Element,
      comparator: fields[51] as String,
      elementComparator: (fields[52] as List)?.cast<Element>(),
      modifier: fields[53] as String,
      elementModifier: (fields[54] as List)?.cast<Element>(),
      chain: (fields[55] as List)?.cast<String>(),
      elementChain: (fields[56] as List)?.cast<Element>(),
      component: (fields[57] as List)?.cast<SearchParameter_Component>(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchParameter obj) {
    writer
      ..writeByte(58)
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
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.derivedFrom)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.experimental)
      ..writeByte(21)
      ..write(obj.elementExperimental)
      ..writeByte(22)
      ..write(obj.date)
      ..writeByte(23)
      ..write(obj.elementDate)
      ..writeByte(24)
      ..write(obj.publisher)
      ..writeByte(25)
      ..write(obj.elementPublisher)
      ..writeByte(26)
      ..write(obj.contact)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription)
      ..writeByte(29)
      ..write(obj.useContext)
      ..writeByte(30)
      ..write(obj.jurisdiction)
      ..writeByte(31)
      ..write(obj.purpose)
      ..writeByte(32)
      ..write(obj.elementPurpose)
      ..writeByte(33)
      ..write(obj.code)
      ..writeByte(34)
      ..write(obj.elementCode)
      ..writeByte(35)
      ..write(obj.base)
      ..writeByte(36)
      ..write(obj.elementBase)
      ..writeByte(37)
      ..write(obj.type)
      ..writeByte(38)
      ..write(obj.elementType)
      ..writeByte(39)
      ..write(obj.expression)
      ..writeByte(40)
      ..write(obj.elementExpression)
      ..writeByte(41)
      ..write(obj.xpath)
      ..writeByte(42)
      ..write(obj.elementXpath)
      ..writeByte(43)
      ..write(obj.xpathUsage)
      ..writeByte(44)
      ..write(obj.elementXpathUsage)
      ..writeByte(45)
      ..write(obj.target)
      ..writeByte(46)
      ..write(obj.elementTarget)
      ..writeByte(47)
      ..write(obj.multipleOr)
      ..writeByte(48)
      ..write(obj.elementMultipleOr)
      ..writeByte(49)
      ..write(obj.multipleAnd)
      ..writeByte(50)
      ..write(obj.elementMultipleAnd)
      ..writeByte(51)
      ..write(obj.comparator)
      ..writeByte(52)
      ..write(obj.elementComparator)
      ..writeByte(53)
      ..write(obj.modifier)
      ..writeByte(54)
      ..write(obj.elementModifier)
      ..writeByte(55)
      ..write(obj.chain)
      ..writeByte(56)
      ..write(obj.elementChain)
      ..writeByte(57)
      ..write(obj.component);
  }
}

class SearchParameter_ComponentAdapter
    extends TypeAdapter<SearchParameter_Component> {
  @override
  SearchParameter_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchParameter_Component(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      definition: fields[3] as String,
      expression: fields[4] as String,
      elementExpression: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SearchParameter_Component obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.definition)
      ..writeByte(4)
      ..write(obj.expression)
      ..writeByte(5)
      ..write(obj.elementExpression);
  }
}
