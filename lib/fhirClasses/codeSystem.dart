import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

class CodeSystem {
  static Future<CodeSystem> newInstance({
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
    bool caseSensitive,
    Element elementCaseSensitive,
    String valueSet,
    String hierarchyMeaning,
    Element elementHierarchyMeaning,
    bool compositional,
    Element elementCompositional,
    bool versionNeeded,
    Element elementVersionNeeded,
    String content,
    Element elementContent,
    String supplements,
    int count,
    Element elementCount,
    List<CodeSystem_Filter> filter,
    List<CodeSystem_Property> property,
    List<CodeSystem_Concept> concept,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeSystem newCodeSystem = new CodeSystem(
      resourceType: 'CodeSystem',
      id: id ?? await fhirDb.newResourceId('CodeSystem'),
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
      caseSensitive: caseSensitive,
      elementCaseSensitive: elementCaseSensitive,
      valueSet: valueSet,
      hierarchyMeaning: hierarchyMeaning,
      elementHierarchyMeaning: elementHierarchyMeaning,
      compositional: compositional,
      elementCompositional: elementCompositional,
      versionNeeded: versionNeeded,
      elementVersionNeeded: elementVersionNeeded,
      content: content,
      elementContent: elementContent,
      supplements: supplements,
      count: count,
      elementCount: elementCount,
      filter: filter,
      property: property,
      concept: concept,
    );
    newCodeSystem.meta.createdAt = DateTime.now();
    newCodeSystem.meta.lastUpdated = newCodeSystem.meta.createdAt;
    int saved = await fhirDb.saveResource(newCodeSystem);
    return newCodeSystem;
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
  String resourceType = 'CodeSystem';
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
  bool caseSensitive;
  @HiveField(38)
  Element elementCaseSensitive;
  @HiveField(39)
  String valueSet;
  @HiveField(40)
  String hierarchyMeaning;
  @HiveField(41)
  Element elementHierarchyMeaning;
  @HiveField(42)
  bool compositional;
  @HiveField(43)
  Element elementCompositional;
  @HiveField(44)
  bool versionNeeded;
  @HiveField(45)
  Element elementVersionNeeded;
  @HiveField(46)
  String content;
  @HiveField(47)
  Element elementContent;
  @HiveField(48)
  String supplements;
  @HiveField(49)
  int count;
  @HiveField(50)
  Element elementCount;
  @HiveField(51)
  List<CodeSystem_Filter> filter;
  @HiveField(52)
  List<CodeSystem_Property> property;
  @HiveField(53)
  List<CodeSystem_Concept> concept;

  CodeSystem({
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
    this.caseSensitive,
    this.elementCaseSensitive,
    this.valueSet,
    this.hierarchyMeaning,
    this.elementHierarchyMeaning,
    this.compositional,
    this.elementCompositional,
    this.versionNeeded,
    this.elementVersionNeeded,
    this.content,
    this.elementContent,
    this.supplements,
    this.count,
    this.elementCount,
    this.filter,
    this.property,
    this.concept,
  });

  factory CodeSystem.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystemToJson(this);
}

class CodeSystem_Filter {
  static Future<CodeSystem_Filter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String description,
    Element elementDescription,
    List<String> operator,
    List<Element> elementOperator,
    String value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeSystem_Filter newCodeSystem_Filter = new CodeSystem_Filter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      description: description,
      elementDescription: elementDescription,
      operator: operator,
      elementOperator: elementOperator,
      value: value,
      elementValue: elementValue,
    );
    return newCodeSystem_Filter;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String code;
  @HiveField(4)
  Element elementCode;
  @HiveField(5)
  String description;
  @HiveField(6)
  Element elementDescription;
  @HiveField(7)
  List<String> operator;
  @HiveField(8)
  List<Element> elementOperator;
  @HiveField(9)
  String value;
  @HiveField(10)
  Element elementValue;

  CodeSystem_Filter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.description,
    this.elementDescription,
    this.operator,
    this.elementOperator,
    this.value,
    this.elementValue,
  });

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_FilterToJson(this);
}

class CodeSystem_Property {
  static Future<CodeSystem_Property> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String uri,
    Element elementUri,
    String description,
    Element elementDescription,
    String type,
    Element elementType,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeSystem_Property newCodeSystem_Property = new CodeSystem_Property(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      uri: uri,
      elementUri: elementUri,
      description: description,
      elementDescription: elementDescription,
      type: type,
      elementType: elementType,
    );
    return newCodeSystem_Property;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String code;
  @HiveField(4)
  Element elementCode;
  @HiveField(5)
  String uri;
  @HiveField(6)
  Element elementUri;
  @HiveField(7)
  String description;
  @HiveField(8)
  Element elementDescription;
  @HiveField(9)
  String type;
  @HiveField(10)
  Element elementType;

  CodeSystem_Property({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.uri,
    this.elementUri,
    this.description,
    this.elementDescription,
    this.type,
    this.elementType,
  });

  factory CodeSystem_Property.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_PropertyToJson(this);
}

class CodeSystem_Concept {
  static Future<CodeSystem_Concept> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    String definition,
    Element elementDefinition,
    List<CodeSystem_Designation> designation,
    List<CodeSystem_Property1> property,
    List<CodeSystem_Concept> concept,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeSystem_Concept newCodeSystem_Concept = new CodeSystem_Concept(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      definition: definition,
      elementDefinition: elementDefinition,
      designation: designation,
      property: property,
      concept: concept,
    );
    return newCodeSystem_Concept;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String code;
  @HiveField(4)
  Element elementCode;
  @HiveField(5)
  String display;
  @HiveField(6)
  Element elementDisplay;
  @HiveField(7)
  String definition;
  @HiveField(8)
  Element elementDefinition;
  @HiveField(9)
  List<CodeSystem_Designation> designation;
  @HiveField(10)
  List<CodeSystem_Property1> property;
  @HiveField(11)
  List<CodeSystem_Concept> concept;

  CodeSystem_Concept({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.definition,
    this.elementDefinition,
    this.designation,
    this.property,
    this.concept,
  });

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_ConceptToJson(this);
}

class CodeSystem_Designation {
  static Future<CodeSystem_Designation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String language,
    Element elementLanguage,
    Coding use,
    String value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeSystem_Designation newCodeSystem_Designation =
        new CodeSystem_Designation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      language: language,
      elementLanguage: elementLanguage,
      use: use,
      value: value,
      elementValue: elementValue,
    );
    return newCodeSystem_Designation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String language;
  @HiveField(4)
  Element elementLanguage;
  @HiveField(5)
  Coding use;
  @HiveField(6)
  String value;
  @HiveField(7)
  Element elementValue;

  CodeSystem_Designation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this.elementLanguage,
    this.use,
    this.value,
    this.elementValue,
  });

  factory CodeSystem_Designation.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_DesignationToJson(this);
}

class CodeSystem_Property1 {
  static Future<CodeSystem_Property1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String valueCode,
    Element elementValueCode,
    Coding valueCoding,
    String valueString,
    Element elementValueString,
    int valueInteger,
    Element elementValueInteger,
    bool valueBoolean,
    Element elementValueBoolean,
    String valueDateTime,
    Element elementValueDateTime,
    int valueDecimal,
    Element elementValueDecimal,
  }) async {
    var fhirDb = new DatabaseHelper();
    CodeSystem_Property1 newCodeSystem_Property1 = new CodeSystem_Property1(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      valueCode: valueCode,
      elementValueCode: elementValueCode,
      valueCoding: valueCoding,
      valueString: valueString,
      elementValueString: elementValueString,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valueDecimal: valueDecimal,
      elementValueDecimal: elementValueDecimal,
    );
    return newCodeSystem_Property1;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String code;
  @HiveField(4)
  Element elementCode;
  @HiveField(5)
  String valueCode;
  @HiveField(6)
  Element elementValueCode;
  @HiveField(7)
  Coding valueCoding;
  @HiveField(8)
  String valueString;
  @HiveField(9)
  Element elementValueString;
  @HiveField(10)
  int valueInteger;
  @HiveField(11)
  Element elementValueInteger;
  @HiveField(12)
  bool valueBoolean;
  @HiveField(13)
  Element elementValueBoolean;
  @HiveField(14)
  String valueDateTime;
  @HiveField(15)
  Element elementValueDateTime;
  @HiveField(16)
  int valueDecimal;
  @HiveField(17)
  Element elementValueDecimal;

  CodeSystem_Property1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.valueCode,
    this.elementValueCode,
    this.valueCoding,
    this.valueString,
    this.elementValueString,
    this.valueInteger,
    this.elementValueInteger,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal,
  });

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_Property1FromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_Property1ToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSystem _$CodeSystemFromJson(Map<String, dynamic> json) {
  return CodeSystem(
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
    caseSensitive: json['caseSensitive'] as bool,
    elementCaseSensitive: json['elementCaseSensitive'] == null
        ? null
        : Element.fromJson(
            json['elementCaseSensitive'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
    hierarchyMeaning: json['hierarchyMeaning'] as String,
    elementHierarchyMeaning: json['elementHierarchyMeaning'] == null
        ? null
        : Element.fromJson(
            json['elementHierarchyMeaning'] as Map<String, dynamic>),
    compositional: json['compositional'] as bool,
    elementCompositional: json['elementCompositional'] == null
        ? null
        : Element.fromJson(
            json['elementCompositional'] as Map<String, dynamic>),
    versionNeeded: json['versionNeeded'] as bool,
    elementVersionNeeded: json['elementVersionNeeded'] == null
        ? null
        : Element.fromJson(
            json['elementVersionNeeded'] as Map<String, dynamic>),
    content: json['content'] as String,
    elementContent: json['elementContent'] == null
        ? null
        : Element.fromJson(json['elementContent'] as Map<String, dynamic>),
    supplements: json['supplements'] as String,
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Filter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Property.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CodeSystemToJson(CodeSystem instance) {
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
  writeNotNull('caseSensitive', instance.caseSensitive);
  writeNotNull('elementCaseSensitive', instance.elementCaseSensitive?.toJson());
  writeNotNull('valueSet', instance.valueSet);
  writeNotNull('hierarchyMeaning', instance.hierarchyMeaning);
  writeNotNull(
      'elementHierarchyMeaning', instance.elementHierarchyMeaning?.toJson());
  writeNotNull('compositional', instance.compositional);
  writeNotNull('elementCompositional', instance.elementCompositional?.toJson());
  writeNotNull('versionNeeded', instance.versionNeeded);
  writeNotNull('elementVersionNeeded', instance.elementVersionNeeded?.toJson());
  writeNotNull('content', instance.content);
  writeNotNull('elementContent', instance.elementContent?.toJson());
  writeNotNull('supplements', instance.supplements);
  writeNotNull('count', instance.count);
  writeNotNull('elementCount', instance.elementCount?.toJson());
  writeNotNull('filter', instance.filter?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'property', instance.property?.map((e) => e?.toJson())?.toList());
  writeNotNull('concept', instance.concept?.map((e) => e?.toJson())?.toList());
  return val;
}

CodeSystem_Filter _$CodeSystem_FilterFromJson(Map<String, dynamic> json) {
  return CodeSystem_Filter(
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    operator: (json['operator'] as List)?.map((e) => e as String)?.toList(),
    elementOperator: (json['elementOperator'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_FilterToJson(CodeSystem_Filter instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('operator', instance.operator);
  writeNotNull('elementOperator',
      instance.elementOperator?.map((e) => e?.toJson())?.toList());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

CodeSystem_Property _$CodeSystem_PropertyFromJson(Map<String, dynamic> json) {
  return CodeSystem_Property(
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
    uri: json['uri'] as String,
    elementUri: json['elementUri'] == null
        ? null
        : Element.fromJson(json['elementUri'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_PropertyToJson(CodeSystem_Property instance) {
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
  writeNotNull('uri', instance.uri);
  writeNotNull('elementUri', instance.elementUri?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  return val;
}

CodeSystem_Concept _$CodeSystem_ConceptFromJson(Map<String, dynamic> json) {
  return CodeSystem_Concept(
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
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Property1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeSystem_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CodeSystem_ConceptToJson(CodeSystem_Concept instance) {
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
  writeNotNull('definition', instance.definition);
  writeNotNull('elementDefinition', instance.elementDefinition?.toJson());
  writeNotNull(
      'designation', instance.designation?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'property', instance.property?.map((e) => e?.toJson())?.toList());
  writeNotNull('concept', instance.concept?.map((e) => e?.toJson())?.toList());
  return val;
}

CodeSystem_Designation _$CodeSystem_DesignationFromJson(
    Map<String, dynamic> json) {
  return CodeSystem_Designation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    use: json['use'] == null
        ? null
        : Coding.fromJson(json['use'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_DesignationToJson(
    CodeSystem_Designation instance) {
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
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('use', instance.use?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

CodeSystem_Property1 _$CodeSystem_Property1FromJson(Map<String, dynamic> json) {
  return CodeSystem_Property1(
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
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodeSystem_Property1ToJson(
    CodeSystem_Property1 instance) {
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
  writeNotNull('valueCode', instance.valueCode);
  writeNotNull('elementValueCode', instance.elementValueCode?.toJson());
  writeNotNull('valueCoding', instance.valueCoding?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodeSystemAdapter extends TypeAdapter<CodeSystem> {
  @override
  CodeSystem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem(
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
      caseSensitive: fields[37] as bool,
      elementCaseSensitive: fields[38] as Element,
      valueSet: fields[39] as String,
      hierarchyMeaning: fields[40] as String,
      elementHierarchyMeaning: fields[41] as Element,
      compositional: fields[42] as bool,
      elementCompositional: fields[43] as Element,
      versionNeeded: fields[44] as bool,
      elementVersionNeeded: fields[45] as Element,
      content: fields[46] as String,
      elementContent: fields[47] as Element,
      supplements: fields[48] as String,
      count: fields[49] as int,
      elementCount: fields[50] as Element,
      filter: (fields[51] as List)?.cast<CodeSystem_Filter>(),
      property: (fields[52] as List)?.cast<CodeSystem_Property>(),
      concept: (fields[53] as List)?.cast<CodeSystem_Concept>(),
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem obj) {
    writer
      ..writeByte(54)
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
      ..write(obj.caseSensitive)
      ..writeByte(38)
      ..write(obj.elementCaseSensitive)
      ..writeByte(39)
      ..write(obj.valueSet)
      ..writeByte(40)
      ..write(obj.hierarchyMeaning)
      ..writeByte(41)
      ..write(obj.elementHierarchyMeaning)
      ..writeByte(42)
      ..write(obj.compositional)
      ..writeByte(43)
      ..write(obj.elementCompositional)
      ..writeByte(44)
      ..write(obj.versionNeeded)
      ..writeByte(45)
      ..write(obj.elementVersionNeeded)
      ..writeByte(46)
      ..write(obj.content)
      ..writeByte(47)
      ..write(obj.elementContent)
      ..writeByte(48)
      ..write(obj.supplements)
      ..writeByte(49)
      ..write(obj.count)
      ..writeByte(50)
      ..write(obj.elementCount)
      ..writeByte(51)
      ..write(obj.filter)
      ..writeByte(52)
      ..write(obj.property)
      ..writeByte(53)
      ..write(obj.concept);
  }
}

class CodeSystem_FilterAdapter extends TypeAdapter<CodeSystem_Filter> {
  @override
  CodeSystem_Filter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem_Filter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
      operator: (fields[7] as List)?.cast<String>(),
      elementOperator: (fields[8] as List)?.cast<Element>(),
      value: fields[9] as String,
      elementValue: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem_Filter obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.elementCode)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription)
      ..writeByte(7)
      ..write(obj.operator)
      ..writeByte(8)
      ..write(obj.elementOperator)
      ..writeByte(9)
      ..write(obj.value)
      ..writeByte(10)
      ..write(obj.elementValue);
  }
}

class CodeSystem_PropertyAdapter extends TypeAdapter<CodeSystem_Property> {
  @override
  CodeSystem_Property read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem_Property(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      uri: fields[5] as String,
      elementUri: fields[6] as Element,
      description: fields[7] as String,
      elementDescription: fields[8] as Element,
      type: fields[9] as String,
      elementType: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem_Property obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.elementCode)
      ..writeByte(5)
      ..write(obj.uri)
      ..writeByte(6)
      ..write(obj.elementUri)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.elementDescription)
      ..writeByte(9)
      ..write(obj.type)
      ..writeByte(10)
      ..write(obj.elementType);
  }
}

class CodeSystem_ConceptAdapter extends TypeAdapter<CodeSystem_Concept> {
  @override
  CodeSystem_Concept read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem_Concept(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      display: fields[5] as String,
      elementDisplay: fields[6] as Element,
      definition: fields[7] as String,
      elementDefinition: fields[8] as Element,
      designation: (fields[9] as List)?.cast<CodeSystem_Designation>(),
      property: (fields[10] as List)?.cast<CodeSystem_Property1>(),
      concept: (fields[11] as List)?.cast<CodeSystem_Concept>(),
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem_Concept obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.elementCode)
      ..writeByte(5)
      ..write(obj.display)
      ..writeByte(6)
      ..write(obj.elementDisplay)
      ..writeByte(7)
      ..write(obj.definition)
      ..writeByte(8)
      ..write(obj.elementDefinition)
      ..writeByte(9)
      ..write(obj.designation)
      ..writeByte(10)
      ..write(obj.property)
      ..writeByte(11)
      ..write(obj.concept);
  }
}

class CodeSystem_DesignationAdapter
    extends TypeAdapter<CodeSystem_Designation> {
  @override
  CodeSystem_Designation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem_Designation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      language: fields[3] as String,
      elementLanguage: fields[4] as Element,
      use: fields[5] as Coding,
      value: fields[6] as String,
      elementValue: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem_Designation obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(4)
      ..write(obj.elementLanguage)
      ..writeByte(5)
      ..write(obj.use)
      ..writeByte(6)
      ..write(obj.value)
      ..writeByte(7)
      ..write(obj.elementValue);
  }
}

class CodeSystem_Property1Adapter extends TypeAdapter<CodeSystem_Property1> {
  @override
  CodeSystem_Property1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeSystem_Property1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      valueCode: fields[5] as String,
      elementValueCode: fields[6] as Element,
      valueCoding: fields[7] as Coding,
      valueString: fields[8] as String,
      elementValueString: fields[9] as Element,
      valueInteger: fields[10] as int,
      elementValueInteger: fields[11] as Element,
      valueBoolean: fields[12] as bool,
      elementValueBoolean: fields[13] as Element,
      valueDateTime: fields[14] as String,
      elementValueDateTime: fields[15] as Element,
      valueDecimal: fields[16] as int,
      elementValueDecimal: fields[17] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CodeSystem_Property1 obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.elementCode)
      ..writeByte(5)
      ..write(obj.valueCode)
      ..writeByte(6)
      ..write(obj.elementValueCode)
      ..writeByte(7)
      ..write(obj.valueCoding)
      ..writeByte(8)
      ..write(obj.valueString)
      ..writeByte(9)
      ..write(obj.elementValueString)
      ..writeByte(10)
      ..write(obj.valueInteger)
      ..writeByte(11)
      ..write(obj.elementValueInteger)
      ..writeByte(12)
      ..write(obj.valueBoolean)
      ..writeByte(13)
      ..write(obj.elementValueBoolean)
      ..writeByte(14)
      ..write(obj.valueDateTime)
      ..writeByte(15)
      ..write(obj.elementValueDateTime)
      ..writeByte(16)
      ..write(obj.valueDecimal)
      ..writeByte(17)
      ..write(obj.elementValueDecimal);
  }
}
