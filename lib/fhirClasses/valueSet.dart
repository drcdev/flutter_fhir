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

class ValueSet {
  static Future<ValueSet> newInstance({
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
    bool immutable,
    Element elementImmutable,
    String purpose,
    Element elementPurpose,
    String copyright,
    Element elementCopyright,
    ValueSet_Compose compose,
    ValueSet_Expansion expansion,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet newValueSet = new ValueSet(
      resourceType: 'ValueSet',
      id: id ?? await fhirDb.newResourceId('ValueSet'),
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
      immutable: immutable,
      elementImmutable: elementImmutable,
      purpose: purpose,
      elementPurpose: elementPurpose,
      copyright: copyright,
      elementCopyright: elementCopyright,
      compose: compose,
      expansion: expansion,
    );
    newValueSet.meta.createdAt = DateTime.now();
    newValueSet.meta.lastUpdated = newValueSet.meta.createdAt;
    int saved = await fhirDb.saveResource(newValueSet);
    return newValueSet;
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
  String resourceType = 'ValueSet';
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
  bool immutable;
  @HiveField(34)
  Element elementImmutable;
  @HiveField(35)
  String purpose;
  @HiveField(36)
  Element elementPurpose;
  @HiveField(37)
  String copyright;
  @HiveField(38)
  Element elementCopyright;
  @HiveField(39)
  ValueSet_Compose compose;
  @HiveField(40)
  ValueSet_Expansion expansion;

  ValueSet({
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
    this.immutable,
    this.elementImmutable,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.compose,
    this.expansion,
  });

  factory ValueSet.fromJson(Map<String, dynamic> json) =>
      _$ValueSetFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSetToJson(this);
}

class ValueSet_Compose {
  static Future<ValueSet_Compose> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String lockedDate,
    Element elementLockedDate,
    bool inactive,
    Element elementInactive,
    List<ValueSet_Include> include,
    List<ValueSet_Include> exclude,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Compose newValueSet_Compose = new ValueSet_Compose(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      lockedDate: lockedDate,
      elementLockedDate: elementLockedDate,
      inactive: inactive,
      elementInactive: elementInactive,
      include: include,
      exclude: exclude,
    );
    return newValueSet_Compose;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String lockedDate;
  @HiveField(4)
  Element elementLockedDate;
  @HiveField(5)
  bool inactive;
  @HiveField(6)
  Element elementInactive;
  @HiveField(7)
  List<ValueSet_Include> include;
  @HiveField(8)
  List<ValueSet_Include> exclude;

  ValueSet_Compose({
    this.id,
    this.extension,
    this.modifierExtension,
    this.lockedDate,
    this.elementLockedDate,
    this.inactive,
    this.elementInactive,
    @required this.include,
    this.exclude,
  });

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ComposeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ComposeToJson(this);
}

class ValueSet_Include {
  static Future<ValueSet_Include> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String system,
    Element elementSystem,
    String version,
    Element elementVersion,
    List<ValueSet_Concept> concept,
    List<ValueSet_Filter> filter,
    List<String> valueSet,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Include newValueSet_Include = new ValueSet_Include(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      system: system,
      elementSystem: elementSystem,
      version: version,
      elementVersion: elementVersion,
      concept: concept,
      filter: filter,
      valueSet: valueSet,
    );
    return newValueSet_Include;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String system;
  @HiveField(4)
  Element elementSystem;
  @HiveField(5)
  String version;
  @HiveField(6)
  Element elementVersion;
  @HiveField(7)
  List<ValueSet_Concept> concept;
  @HiveField(8)
  List<ValueSet_Filter> filter;
  @HiveField(9)
  List<String> valueSet;

  ValueSet_Include({
    this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this.elementSystem,
    this.version,
    this.elementVersion,
    this.concept,
    this.filter,
    this.valueSet,
  });

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_IncludeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_IncludeToJson(this);
}

class ValueSet_Concept {
  static Future<ValueSet_Concept> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    List<ValueSet_Designation> designation,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Concept newValueSet_Concept = new ValueSet_Concept(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      designation: designation,
    );
    return newValueSet_Concept;
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
  List<ValueSet_Designation> designation;

  ValueSet_Concept({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.designation,
  });

  factory ValueSet_Concept.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ConceptToJson(this);
}

class ValueSet_Designation {
  static Future<ValueSet_Designation> newInstance({
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
    ValueSet_Designation newValueSet_Designation = new ValueSet_Designation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      language: language,
      elementLanguage: elementLanguage,
      use: use,
      value: value,
      elementValue: elementValue,
    );
    return newValueSet_Designation;
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

  ValueSet_Designation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this.elementLanguage,
    this.use,
    this.value,
    this.elementValue,
  });

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_DesignationToJson(this);
}

class ValueSet_Filter {
  static Future<ValueSet_Filter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String property,
    Element elementProperty,
    String op,
    Element elementOp,
    String value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Filter newValueSet_Filter = new ValueSet_Filter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      property: property,
      elementProperty: elementProperty,
      op: op,
      elementOp: elementOp,
      value: value,
      elementValue: elementValue,
    );
    return newValueSet_Filter;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String property;
  @HiveField(4)
  Element elementProperty;
  @HiveField(5)
  String op;
  @HiveField(6)
  Element elementOp;
  @HiveField(7)
  String value;
  @HiveField(8)
  Element elementValue;

  ValueSet_Filter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.elementProperty,
    this.op,
    this.elementOp,
    this.value,
    this.elementValue,
  });

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_FilterToJson(this);
}

class ValueSet_Expansion {
  static Future<ValueSet_Expansion> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String identifier,
    Element elementIdentifier,
    DateTime timestamp,
    Element elementTimestamp,
    int total,
    Element elementTotal,
    int offset,
    Element elementOffset,
    List<ValueSet_Parameter> parameter,
    List<ValueSet_Contains> contains,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Expansion newValueSet_Expansion = new ValueSet_Expansion(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      elementIdentifier: elementIdentifier,
      timestamp: timestamp,
      elementTimestamp: elementTimestamp,
      total: total,
      elementTotal: elementTotal,
      offset: offset,
      elementOffset: elementOffset,
      parameter: parameter,
      contains: contains,
    );
    return newValueSet_Expansion;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String identifier;
  @HiveField(4)
  Element elementIdentifier;
  @HiveField(5)
  DateTime timestamp;
  @HiveField(6)
  Element elementTimestamp;
  @HiveField(7)
  int total;
  @HiveField(8)
  Element elementTotal;
  @HiveField(9)
  int offset;
  @HiveField(10)
  Element elementOffset;
  @HiveField(11)
  List<ValueSet_Parameter> parameter;
  @HiveField(12)
  List<ValueSet_Contains> contains;

  ValueSet_Expansion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.elementIdentifier,
    this.timestamp,
    this.elementTimestamp,
    this.total,
    this.elementTotal,
    this.offset,
    this.elementOffset,
    this.parameter,
    this.contains,
  });

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ExpansionToJson(this);
}

class ValueSet_Parameter {
  static Future<ValueSet_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String valueString,
    Element elementValueString,
    bool valueBoolean,
    Element elementValueBoolean,
    int valueInteger,
    Element elementValueInteger,
    int valueDecimal,
    Element elementValueDecimal,
    String valueUri,
    Element elementValueUri,
    String valueCode,
    Element elementValueCode,
    String valueDateTime,
    Element elementValueDateTime,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Parameter newValueSet_Parameter = new ValueSet_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      valueString: valueString,
      elementValueString: elementValueString,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueDecimal: valueDecimal,
      elementValueDecimal: elementValueDecimal,
      valueUri: valueUri,
      elementValueUri: elementValueUri,
      valueCode: valueCode,
      elementValueCode: elementValueCode,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
    );
    return newValueSet_Parameter;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String valueString;
  @HiveField(6)
  Element elementValueString;
  @HiveField(7)
  bool valueBoolean;
  @HiveField(8)
  Element elementValueBoolean;
  @HiveField(9)
  int valueInteger;
  @HiveField(10)
  Element elementValueInteger;
  @HiveField(11)
  int valueDecimal;
  @HiveField(12)
  Element elementValueDecimal;
  @HiveField(13)
  String valueUri;
  @HiveField(14)
  Element elementValueUri;
  @HiveField(15)
  String valueCode;
  @HiveField(16)
  Element elementValueCode;
  @HiveField(17)
  String valueDateTime;
  @HiveField(18)
  Element elementValueDateTime;

  ValueSet_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.valueString,
    this.elementValueString,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueUri,
    this.elementValueUri,
    this.valueCode,
    this.elementValueCode,
    this.valueDateTime,
    this.elementValueDateTime,
  });

  factory ValueSet_Parameter.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ParameterToJson(this);
}

class ValueSet_Contains {
  static Future<ValueSet_Contains> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String system,
    Element elementSystem,
    bool abstract,
    Element elementAbstract,
    bool inactive,
    Element elementInactive,
    String version,
    Element elementVersion,
    String code,
    Element elementCode,
    String display,
    Element elementDisplay,
    List<ValueSet_Designation> designation,
    List<ValueSet_Contains> contains,
  }) async {
    var fhirDb = new DatabaseHelper();
    ValueSet_Contains newValueSet_Contains = new ValueSet_Contains(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      system: system,
      elementSystem: elementSystem,
      abstract: abstract,
      elementAbstract: elementAbstract,
      inactive: inactive,
      elementInactive: elementInactive,
      version: version,
      elementVersion: elementVersion,
      code: code,
      elementCode: elementCode,
      display: display,
      elementDisplay: elementDisplay,
      designation: designation,
      contains: contains,
    );
    return newValueSet_Contains;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String system;
  @HiveField(4)
  Element elementSystem;
  @HiveField(5)
  bool abstract;
  @HiveField(6)
  Element elementAbstract;
  @HiveField(7)
  bool inactive;
  @HiveField(8)
  Element elementInactive;
  @HiveField(9)
  String version;
  @HiveField(10)
  Element elementVersion;
  @HiveField(11)
  String code;
  @HiveField(12)
  Element elementCode;
  @HiveField(13)
  String display;
  @HiveField(14)
  Element elementDisplay;
  @HiveField(15)
  List<ValueSet_Designation> designation;
  @HiveField(16)
  List<ValueSet_Contains> contains;

  ValueSet_Contains({
    this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this.elementSystem,
    this.abstract,
    this.elementAbstract,
    this.inactive,
    this.elementInactive,
    this.version,
    this.elementVersion,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.designation,
    this.contains,
  });

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ContainsFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ContainsToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueSet _$ValueSetFromJson(Map<String, dynamic> json) {
  return ValueSet(
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
    immutable: json['immutable'] as bool,
    elementImmutable: json['elementImmutable'] == null
        ? null
        : Element.fromJson(json['elementImmutable'] as Map<String, dynamic>),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    compose: json['compose'] == null
        ? null
        : ValueSet_Compose.fromJson(json['compose'] as Map<String, dynamic>),
    expansion: json['expansion'] == null
        ? null
        : ValueSet_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSetToJson(ValueSet instance) {
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
  writeNotNull('immutable', instance.immutable);
  writeNotNull('elementImmutable', instance.elementImmutable?.toJson());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('compose', instance.compose?.toJson());
  writeNotNull('expansion', instance.expansion?.toJson());
  return val;
}

ValueSet_Compose _$ValueSet_ComposeFromJson(Map<String, dynamic> json) {
  return ValueSet_Compose(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lockedDate: json['lockedDate'] as String,
    elementLockedDate: json['elementLockedDate'] == null
        ? null
        : Element.fromJson(json['elementLockedDate'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    elementInactive: json['elementInactive'] == null
        ? null
        : Element.fromJson(json['elementInactive'] as Map<String, dynamic>),
    include: (json['include'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Include.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exclude: (json['exclude'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Include.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ComposeToJson(ValueSet_Compose instance) {
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
  writeNotNull('lockedDate', instance.lockedDate);
  writeNotNull('elementLockedDate', instance.elementLockedDate?.toJson());
  writeNotNull('inactive', instance.inactive);
  writeNotNull('elementInactive', instance.elementInactive?.toJson());
  writeNotNull('include', instance.include?.map((e) => e?.toJson())?.toList());
  writeNotNull('exclude', instance.exclude?.map((e) => e?.toJson())?.toList());
  return val;
}

ValueSet_Include _$ValueSet_IncludeFromJson(Map<String, dynamic> json) {
  return ValueSet_Include(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Filter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueSet: (json['valueSet'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_IncludeToJson(ValueSet_Include instance) {
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
  writeNotNull('system', instance.system);
  writeNotNull('elementSystem', instance.elementSystem?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('concept', instance.concept?.map((e) => e?.toJson())?.toList());
  writeNotNull('filter', instance.filter?.map((e) => e?.toJson())?.toList());
  writeNotNull('valueSet', instance.valueSet);
  return val;
}

ValueSet_Concept _$ValueSet_ConceptFromJson(Map<String, dynamic> json) {
  return ValueSet_Concept(
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
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ConceptToJson(ValueSet_Concept instance) {
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
  writeNotNull(
      'designation', instance.designation?.map((e) => e?.toJson())?.toList());
  return val;
}

ValueSet_Designation _$ValueSet_DesignationFromJson(Map<String, dynamic> json) {
  return ValueSet_Designation(
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

Map<String, dynamic> _$ValueSet_DesignationToJson(
    ValueSet_Designation instance) {
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

ValueSet_Filter _$ValueSet_FilterFromJson(Map<String, dynamic> json) {
  return ValueSet_Filter(
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
    op: json['op'] as String,
    elementOp: json['elementOp'] == null
        ? null
        : Element.fromJson(json['elementOp'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_FilterToJson(ValueSet_Filter instance) {
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
  writeNotNull('op', instance.op);
  writeNotNull('elementOp', instance.elementOp?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

ValueSet_Expansion _$ValueSet_ExpansionFromJson(Map<String, dynamic> json) {
  return ValueSet_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] as String,
    elementIdentifier: json['elementIdentifier'] == null
        ? null
        : Element.fromJson(json['elementIdentifier'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    elementTimestamp: json['elementTimestamp'] == null
        ? null
        : Element.fromJson(json['elementTimestamp'] as Map<String, dynamic>),
    total: json['total'] as int,
    elementTotal: json['elementTotal'] == null
        ? null
        : Element.fromJson(json['elementTotal'] as Map<String, dynamic>),
    offset: json['offset'] as int,
    elementOffset: json['elementOffset'] == null
        ? null
        : Element.fromJson(json['elementOffset'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contains: (json['contains'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Contains.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ExpansionToJson(ValueSet_Expansion instance) {
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
  writeNotNull('identifier', instance.identifier);
  writeNotNull('elementIdentifier', instance.elementIdentifier?.toJson());
  writeNotNull('timestamp', instance.timestamp?.toIso8601String());
  writeNotNull('elementTimestamp', instance.elementTimestamp?.toJson());
  writeNotNull('total', instance.total);
  writeNotNull('elementTotal', instance.elementTotal?.toJson());
  writeNotNull('offset', instance.offset);
  writeNotNull('elementOffset', instance.elementOffset?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'contains', instance.contains?.map((e) => e?.toJson())?.toList());
  return val;
}

ValueSet_Parameter _$ValueSet_ParameterFromJson(Map<String, dynamic> json) {
  return ValueSet_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_ParameterToJson(ValueSet_Parameter instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  writeNotNull('valueUri', instance.valueUri);
  writeNotNull('elementValueUri', instance.elementValueUri?.toJson());
  writeNotNull('valueCode', instance.valueCode);
  writeNotNull('elementValueCode', instance.elementValueCode?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  return val;
}

ValueSet_Contains _$ValueSet_ContainsFromJson(Map<String, dynamic> json) {
  return ValueSet_Contains(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    abstract: json['abstract'] as bool,
    elementAbstract: json['elementAbstract'] == null
        ? null
        : Element.fromJson(json['elementAbstract'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    elementInactive: json['elementInactive'] == null
        ? null
        : Element.fromJson(json['elementInactive'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contains: (json['contains'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Contains.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ContainsToJson(ValueSet_Contains instance) {
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
  writeNotNull('system', instance.system);
  writeNotNull('elementSystem', instance.elementSystem?.toJson());
  writeNotNull('abstract', instance.abstract);
  writeNotNull('elementAbstract', instance.elementAbstract?.toJson());
  writeNotNull('inactive', instance.inactive);
  writeNotNull('elementInactive', instance.elementInactive?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('elementDisplay', instance.elementDisplay?.toJson());
  writeNotNull(
      'designation', instance.designation?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'contains', instance.contains?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValueSetAdapter extends TypeAdapter<ValueSet> {
  @override
  ValueSet read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet(
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
      immutable: fields[33] as bool,
      elementImmutable: fields[34] as Element,
      purpose: fields[35] as String,
      elementPurpose: fields[36] as Element,
      copyright: fields[37] as String,
      elementCopyright: fields[38] as Element,
      compose: fields[39] as ValueSet_Compose,
      expansion: fields[40] as ValueSet_Expansion,
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.immutable)
      ..writeByte(34)
      ..write(obj.elementImmutable)
      ..writeByte(35)
      ..write(obj.purpose)
      ..writeByte(36)
      ..write(obj.elementPurpose)
      ..writeByte(37)
      ..write(obj.copyright)
      ..writeByte(38)
      ..write(obj.elementCopyright)
      ..writeByte(39)
      ..write(obj.compose)
      ..writeByte(40)
      ..write(obj.expansion);
  }
}

class ValueSet_ComposeAdapter extends TypeAdapter<ValueSet_Compose> {
  @override
  ValueSet_Compose read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Compose(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      lockedDate: fields[3] as String,
      elementLockedDate: fields[4] as Element,
      inactive: fields[5] as bool,
      elementInactive: fields[6] as Element,
      include: (fields[7] as List)?.cast<ValueSet_Include>(),
      exclude: (fields[8] as List)?.cast<ValueSet_Include>(),
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Compose obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.lockedDate)
      ..writeByte(4)
      ..write(obj.elementLockedDate)
      ..writeByte(5)
      ..write(obj.inactive)
      ..writeByte(6)
      ..write(obj.elementInactive)
      ..writeByte(7)
      ..write(obj.include)
      ..writeByte(8)
      ..write(obj.exclude);
  }
}

class ValueSet_IncludeAdapter extends TypeAdapter<ValueSet_Include> {
  @override
  ValueSet_Include read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Include(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      system: fields[3] as String,
      elementSystem: fields[4] as Element,
      version: fields[5] as String,
      elementVersion: fields[6] as Element,
      concept: (fields[7] as List)?.cast<ValueSet_Concept>(),
      filter: (fields[8] as List)?.cast<ValueSet_Filter>(),
      valueSet: (fields[9] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Include obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.system)
      ..writeByte(4)
      ..write(obj.elementSystem)
      ..writeByte(5)
      ..write(obj.version)
      ..writeByte(6)
      ..write(obj.elementVersion)
      ..writeByte(7)
      ..write(obj.concept)
      ..writeByte(8)
      ..write(obj.filter)
      ..writeByte(9)
      ..write(obj.valueSet);
  }
}

class ValueSet_ConceptAdapter extends TypeAdapter<ValueSet_Concept> {
  @override
  ValueSet_Concept read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Concept(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      display: fields[5] as String,
      elementDisplay: fields[6] as Element,
      designation: (fields[7] as List)?.cast<ValueSet_Designation>(),
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Concept obj) {
    writer
      ..writeByte(8)
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
      ..write(obj.designation);
  }
}

class ValueSet_DesignationAdapter extends TypeAdapter<ValueSet_Designation> {
  @override
  ValueSet_Designation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Designation(
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
  void write(BinaryWriter writer, ValueSet_Designation obj) {
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

class ValueSet_FilterAdapter extends TypeAdapter<ValueSet_Filter> {
  @override
  ValueSet_Filter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Filter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      property: fields[3] as String,
      elementProperty: fields[4] as Element,
      op: fields[5] as String,
      elementOp: fields[6] as Element,
      value: fields[7] as String,
      elementValue: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Filter obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.property)
      ..writeByte(4)
      ..write(obj.elementProperty)
      ..writeByte(5)
      ..write(obj.op)
      ..writeByte(6)
      ..write(obj.elementOp)
      ..writeByte(7)
      ..write(obj.value)
      ..writeByte(8)
      ..write(obj.elementValue);
  }
}

class ValueSet_ExpansionAdapter extends TypeAdapter<ValueSet_Expansion> {
  @override
  ValueSet_Expansion read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Expansion(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as String,
      elementIdentifier: fields[4] as Element,
      timestamp: fields[5] as DateTime,
      elementTimestamp: fields[6] as Element,
      total: fields[7] as int,
      elementTotal: fields[8] as Element,
      offset: fields[9] as int,
      elementOffset: fields[10] as Element,
      parameter: (fields[11] as List)?.cast<ValueSet_Parameter>(),
      contains: (fields[12] as List)?.cast<ValueSet_Contains>(),
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Expansion obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.elementIdentifier)
      ..writeByte(5)
      ..write(obj.timestamp)
      ..writeByte(6)
      ..write(obj.elementTimestamp)
      ..writeByte(7)
      ..write(obj.total)
      ..writeByte(8)
      ..write(obj.elementTotal)
      ..writeByte(9)
      ..write(obj.offset)
      ..writeByte(10)
      ..write(obj.elementOffset)
      ..writeByte(11)
      ..write(obj.parameter)
      ..writeByte(12)
      ..write(obj.contains);
  }
}

class ValueSet_ParameterAdapter extends TypeAdapter<ValueSet_Parameter> {
  @override
  ValueSet_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      valueString: fields[5] as String,
      elementValueString: fields[6] as Element,
      valueBoolean: fields[7] as bool,
      elementValueBoolean: fields[8] as Element,
      valueInteger: fields[9] as int,
      elementValueInteger: fields[10] as Element,
      valueDecimal: fields[11] as int,
      elementValueDecimal: fields[12] as Element,
      valueUri: fields[13] as String,
      elementValueUri: fields[14] as Element,
      valueCode: fields[15] as String,
      elementValueCode: fields[16] as Element,
      valueDateTime: fields[17] as String,
      elementValueDateTime: fields[18] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Parameter obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.valueString)
      ..writeByte(6)
      ..write(obj.elementValueString)
      ..writeByte(7)
      ..write(obj.valueBoolean)
      ..writeByte(8)
      ..write(obj.elementValueBoolean)
      ..writeByte(9)
      ..write(obj.valueInteger)
      ..writeByte(10)
      ..write(obj.elementValueInteger)
      ..writeByte(11)
      ..write(obj.valueDecimal)
      ..writeByte(12)
      ..write(obj.elementValueDecimal)
      ..writeByte(13)
      ..write(obj.valueUri)
      ..writeByte(14)
      ..write(obj.elementValueUri)
      ..writeByte(15)
      ..write(obj.valueCode)
      ..writeByte(16)
      ..write(obj.elementValueCode)
      ..writeByte(17)
      ..write(obj.valueDateTime)
      ..writeByte(18)
      ..write(obj.elementValueDateTime);
  }
}

class ValueSet_ContainsAdapter extends TypeAdapter<ValueSet_Contains> {
  @override
  ValueSet_Contains read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValueSet_Contains(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      system: fields[3] as String,
      elementSystem: fields[4] as Element,
      abstract: fields[5] as bool,
      elementAbstract: fields[6] as Element,
      inactive: fields[7] as bool,
      elementInactive: fields[8] as Element,
      version: fields[9] as String,
      elementVersion: fields[10] as Element,
      code: fields[11] as String,
      elementCode: fields[12] as Element,
      display: fields[13] as String,
      elementDisplay: fields[14] as Element,
      designation: (fields[15] as List)?.cast<ValueSet_Designation>(),
      contains: (fields[16] as List)?.cast<ValueSet_Contains>(),
    );
  }

  @override
  void write(BinaryWriter writer, ValueSet_Contains obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.system)
      ..writeByte(4)
      ..write(obj.elementSystem)
      ..writeByte(5)
      ..write(obj.abstract)
      ..writeByte(6)
      ..write(obj.elementAbstract)
      ..writeByte(7)
      ..write(obj.inactive)
      ..writeByte(8)
      ..write(obj.elementInactive)
      ..writeByte(9)
      ..write(obj.version)
      ..writeByte(10)
      ..write(obj.elementVersion)
      ..writeByte(11)
      ..write(obj.code)
      ..writeByte(12)
      ..write(obj.elementCode)
      ..writeByte(13)
      ..write(obj.display)
      ..writeByte(14)
      ..write(obj.elementDisplay)
      ..writeByte(15)
      ..write(obj.designation)
      ..writeByte(16)
      ..write(obj.contains);
  }
}
