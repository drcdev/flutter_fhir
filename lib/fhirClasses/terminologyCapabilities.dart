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

class TerminologyCapabilities {
  static Future<TerminologyCapabilities> newInstance({
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
    String kind,
    Element elementKind,
    TerminologyCapabilities_Software software,
    TerminologyCapabilities_Implementation implementation,
    bool lockedDate,
    Element elementLockedDate,
    List<TerminologyCapabilities_CodeSystem> codeSystem,
    TerminologyCapabilities_Expansion expansion,
    String codeSearch,
    Element elementCodeSearch,
    TerminologyCapabilities_ValidateCode validateCode,
    TerminologyCapabilities_Translation translation,
    TerminologyCapabilities_Closure closure,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities newTerminologyCapabilities =
        new TerminologyCapabilities(
      resourceType: 'TerminologyCapabilities',
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities'),
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
      kind: kind,
      elementKind: elementKind,
      software: software,
      implementation: implementation,
      lockedDate: lockedDate,
      elementLockedDate: elementLockedDate,
      codeSystem: codeSystem,
      expansion: expansion,
      codeSearch: codeSearch,
      elementCodeSearch: elementCodeSearch,
      validateCode: validateCode,
      translation: translation,
      closure: closure,
    );
    newTerminologyCapabilities.meta.createdAt = DateTime.now();
    newTerminologyCapabilities.meta.lastUpdated =
        newTerminologyCapabilities.meta.createdAt;
    int saved = await fhirDb.saveResource(newTerminologyCapabilities);
    return newTerminologyCapabilities;
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
  String resourceType = 'TerminologyCapabilities';
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
  String title;
  @HiveField(18)
  Element elementTitle;
  @HiveField(19)
  String status;
  @HiveField(20)
  Element elementStatus;
  @HiveField(21)
  bool experimental;
  @HiveField(22)
  Element elementExperimental;
  @HiveField(23)
  DateTime date;
  @HiveField(24)
  Element elementDate;
  @HiveField(25)
  String publisher;
  @HiveField(26)
  Element elementPublisher;
  @HiveField(27)
  List<ContactDetail> contact;
  @HiveField(28)
  String description;
  @HiveField(29)
  Element elementDescription;
  @HiveField(30)
  List<UsageContext> useContext;
  @HiveField(31)
  List<CodeableConcept> jurisdiction;
  @HiveField(32)
  String purpose;
  @HiveField(33)
  Element elementPurpose;
  @HiveField(34)
  String copyright;
  @HiveField(35)
  Element elementCopyright;
  @HiveField(36)
  String kind;
  @HiveField(37)
  Element elementKind;
  @HiveField(38)
  TerminologyCapabilities_Software software;
  @HiveField(39)
  TerminologyCapabilities_Implementation implementation;
  @HiveField(40)
  bool lockedDate;
  @HiveField(41)
  Element elementLockedDate;
  @HiveField(42)
  List<TerminologyCapabilities_CodeSystem> codeSystem;
  @HiveField(43)
  TerminologyCapabilities_Expansion expansion;
  @HiveField(44)
  String codeSearch;
  @HiveField(45)
  Element elementCodeSearch;
  @HiveField(46)
  TerminologyCapabilities_ValidateCode validateCode;
  @HiveField(47)
  TerminologyCapabilities_Translation translation;
  @HiveField(48)
  TerminologyCapabilities_Closure closure;

  TerminologyCapabilities({
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
    this.kind,
    this.elementKind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.elementLockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.elementCodeSearch,
    this.validateCode,
    this.translation,
    this.closure,
  });

  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilitiesToJson(this);
}

class TerminologyCapabilities_Software {
  static Future<TerminologyCapabilities_Software> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String version,
    Element elementVersion,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Software newTerminologyCapabilities_Software =
        new TerminologyCapabilities_Software(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      version: version,
      elementVersion: elementVersion,
    );
    return newTerminologyCapabilities_Software;
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
  String version;
  @HiveField(6)
  Element elementVersion;

  TerminologyCapabilities_Software({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.version,
    this.elementVersion,
  });

  factory TerminologyCapabilities_Software.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_SoftwareFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_SoftwareToJson(this);
}

class TerminologyCapabilities_Implementation {
  static Future<TerminologyCapabilities_Implementation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    String url,
    Element elementUrl,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Implementation
        newTerminologyCapabilities_Implementation =
        new TerminologyCapabilities_Implementation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      url: url,
      elementUrl: elementUrl,
    );
    return newTerminologyCapabilities_Implementation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String description;
  @HiveField(4)
  Element elementDescription;
  @HiveField(5)
  String url;
  @HiveField(6)
  Element elementUrl;

  TerminologyCapabilities_Implementation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.url,
    this.elementUrl,
  });

  factory TerminologyCapabilities_Implementation.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ImplementationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_ImplementationToJson(this);
}

class TerminologyCapabilities_CodeSystem {
  static Future<TerminologyCapabilities_CodeSystem> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String uri,
    List<TerminologyCapabilities_Version> version,
    bool subsumption,
    Element elementSubsumption,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_CodeSystem newTerminologyCapabilities_CodeSystem =
        new TerminologyCapabilities_CodeSystem(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      uri: uri,
      version: version,
      subsumption: subsumption,
      elementSubsumption: elementSubsumption,
    );
    return newTerminologyCapabilities_CodeSystem;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String uri;
  @HiveField(4)
  List<TerminologyCapabilities_Version> version;
  @HiveField(5)
  bool subsumption;
  @HiveField(6)
  Element elementSubsumption;

  TerminologyCapabilities_CodeSystem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    this.elementSubsumption,
  });

  factory TerminologyCapabilities_CodeSystem.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_CodeSystemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_CodeSystemToJson(this);
}

class TerminologyCapabilities_Version {
  static Future<TerminologyCapabilities_Version> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    bool isDefault,
    Element elementIsDefault,
    bool compositional,
    Element elementCompositional,
    List<String> language,
    List<Element> elementLanguage,
    List<TerminologyCapabilities_Filter> filter,
    List<String> property,
    List<Element> elementProperty,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Version newTerminologyCapabilities_Version =
        new TerminologyCapabilities_Version(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      isDefault: isDefault,
      elementIsDefault: elementIsDefault,
      compositional: compositional,
      elementCompositional: elementCompositional,
      language: language,
      elementLanguage: elementLanguage,
      filter: filter,
      property: property,
      elementProperty: elementProperty,
    );
    return newTerminologyCapabilities_Version;
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
  bool isDefault;
  @HiveField(6)
  Element elementIsDefault;
  @HiveField(7)
  bool compositional;
  @HiveField(8)
  Element elementCompositional;
  @HiveField(9)
  List<String> language;
  @HiveField(10)
  List<Element> elementLanguage;
  @HiveField(11)
  List<TerminologyCapabilities_Filter> filter;
  @HiveField(12)
  List<String> property;
  @HiveField(13)
  List<Element> elementProperty;

  TerminologyCapabilities_Version({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.isDefault,
    this.elementIsDefault,
    this.compositional,
    this.elementCompositional,
    this.language,
    this.elementLanguage,
    this.filter,
    this.property,
    this.elementProperty,
  });

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_VersionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_VersionToJson(this);
}

class TerminologyCapabilities_Filter {
  static Future<TerminologyCapabilities_Filter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    List<String> op,
    List<Element> elementOp,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Filter newTerminologyCapabilities_Filter =
        new TerminologyCapabilities_Filter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      op: op,
      elementOp: elementOp,
    );
    return newTerminologyCapabilities_Filter;
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
  List<String> op;
  @HiveField(6)
  List<Element> elementOp;

  TerminologyCapabilities_Filter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.op,
    this.elementOp,
  });

  factory TerminologyCapabilities_Filter.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_FilterToJson(this);
}

class TerminologyCapabilities_Expansion {
  static Future<TerminologyCapabilities_Expansion> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool hierarchical,
    Element elementHierarchical,
    bool paging,
    Element elementPaging,
    bool incomplete,
    Element elementIncomplete,
    List<TerminologyCapabilities_Parameter> parameter,
    String textFilter,
    Element elementTextFilter,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Expansion newTerminologyCapabilities_Expansion =
        new TerminologyCapabilities_Expansion(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      hierarchical: hierarchical,
      elementHierarchical: elementHierarchical,
      paging: paging,
      elementPaging: elementPaging,
      incomplete: incomplete,
      elementIncomplete: elementIncomplete,
      parameter: parameter,
      textFilter: textFilter,
      elementTextFilter: elementTextFilter,
    );
    return newTerminologyCapabilities_Expansion;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool hierarchical;
  @HiveField(4)
  Element elementHierarchical;
  @HiveField(5)
  bool paging;
  @HiveField(6)
  Element elementPaging;
  @HiveField(7)
  bool incomplete;
  @HiveField(8)
  Element elementIncomplete;
  @HiveField(9)
  List<TerminologyCapabilities_Parameter> parameter;
  @HiveField(10)
  String textFilter;
  @HiveField(11)
  Element elementTextFilter;

  TerminologyCapabilities_Expansion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.hierarchical,
    this.elementHierarchical,
    this.paging,
    this.elementPaging,
    this.incomplete,
    this.elementIncomplete,
    this.parameter,
    this.textFilter,
    this.elementTextFilter,
  });

  factory TerminologyCapabilities_Expansion.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ExpansionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_ExpansionToJson(this);
}

class TerminologyCapabilities_Parameter {
  static Future<TerminologyCapabilities_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Parameter newTerminologyCapabilities_Parameter =
        new TerminologyCapabilities_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newTerminologyCapabilities_Parameter;
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
  String documentation;
  @HiveField(6)
  Element elementDocumentation;

  TerminologyCapabilities_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.documentation,
    this.elementDocumentation,
  });

  factory TerminologyCapabilities_Parameter.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ParameterFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_ParameterToJson(this);
}

class TerminologyCapabilities_ValidateCode {
  static Future<TerminologyCapabilities_ValidateCode> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool translations,
    Element elementTranslations,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_ValidateCode
        newTerminologyCapabilities_ValidateCode =
        new TerminologyCapabilities_ValidateCode(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      translations: translations,
      elementTranslations: elementTranslations,
    );
    return newTerminologyCapabilities_ValidateCode;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool translations;
  @HiveField(4)
  Element elementTranslations;

  TerminologyCapabilities_ValidateCode({
    this.id,
    this.extension,
    this.modifierExtension,
    this.translations,
    this.elementTranslations,
  });

  factory TerminologyCapabilities_ValidateCode.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ValidateCodeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_ValidateCodeToJson(this);
}

class TerminologyCapabilities_Translation {
  static Future<TerminologyCapabilities_Translation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool needsMap,
    Element elementNeedsMap,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Translation newTerminologyCapabilities_Translation =
        new TerminologyCapabilities_Translation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      needsMap: needsMap,
      elementNeedsMap: elementNeedsMap,
    );
    return newTerminologyCapabilities_Translation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool needsMap;
  @HiveField(4)
  Element elementNeedsMap;

  TerminologyCapabilities_Translation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.needsMap,
    this.elementNeedsMap,
  });

  factory TerminologyCapabilities_Translation.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilities_TranslationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_TranslationToJson(this);
}

class TerminologyCapabilities_Closure {
  static Future<TerminologyCapabilities_Closure> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool translation,
    Element elementTranslation,
  }) async {
    var fhirDb = new DatabaseHelper();
    TerminologyCapabilities_Closure newTerminologyCapabilities_Closure =
        new TerminologyCapabilities_Closure(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      translation: translation,
      elementTranslation: elementTranslation,
    );
    return newTerminologyCapabilities_Closure;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool translation;
  @HiveField(4)
  Element elementTranslation;

  TerminologyCapabilities_Closure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.translation,
    this.elementTranslation,
  });

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TerminologyCapabilities_ClosureToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminologyCapabilities _$TerminologyCapabilitiesFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities(
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
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    software: json['software'] == null
        ? null
        : TerminologyCapabilities_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : TerminologyCapabilities_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    lockedDate: json['lockedDate'] as bool,
    elementLockedDate: json['elementLockedDate'] == null
        ? null
        : Element.fromJson(json['elementLockedDate'] as Map<String, dynamic>),
    codeSystem: (json['codeSystem'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_CodeSystem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    expansion: json['expansion'] == null
        ? null
        : TerminologyCapabilities_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
    codeSearch: json['codeSearch'] as String,
    elementCodeSearch: json['elementCodeSearch'] == null
        ? null
        : Element.fromJson(json['elementCodeSearch'] as Map<String, dynamic>),
    validateCode: json['validateCode'] == null
        ? null
        : TerminologyCapabilities_ValidateCode.fromJson(
            json['validateCode'] as Map<String, dynamic>),
    translation: json['translation'] == null
        ? null
        : TerminologyCapabilities_Translation.fromJson(
            json['translation'] as Map<String, dynamic>),
    closure: json['closure'] == null
        ? null
        : TerminologyCapabilities_Closure.fromJson(
            json['closure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilitiesToJson(
    TerminologyCapabilities instance) {
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
  writeNotNull('kind', instance.kind);
  writeNotNull('elementKind', instance.elementKind?.toJson());
  writeNotNull('software', instance.software?.toJson());
  writeNotNull('implementation', instance.implementation?.toJson());
  writeNotNull('lockedDate', instance.lockedDate);
  writeNotNull('elementLockedDate', instance.elementLockedDate?.toJson());
  writeNotNull(
      'codeSystem', instance.codeSystem?.map((e) => e?.toJson())?.toList());
  writeNotNull('expansion', instance.expansion?.toJson());
  writeNotNull('codeSearch', instance.codeSearch);
  writeNotNull('elementCodeSearch', instance.elementCodeSearch?.toJson());
  writeNotNull('validateCode', instance.validateCode?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('closure', instance.closure?.toJson());
  return val;
}

TerminologyCapabilities_Software _$TerminologyCapabilities_SoftwareFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Software(
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
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_SoftwareToJson(
    TerminologyCapabilities_Software instance) {
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
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  return val;
}

TerminologyCapabilities_Implementation
    _$TerminologyCapabilities_ImplementationFromJson(
        Map<String, dynamic> json) {
  return TerminologyCapabilities_Implementation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ImplementationToJson(
    TerminologyCapabilities_Implementation instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  return val;
}

TerminologyCapabilities_CodeSystem _$TerminologyCapabilities_CodeSystemFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_CodeSystem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uri: json['uri'] as String,
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Version.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subsumption: json['subsumption'] as bool,
    elementSubsumption: json['elementSubsumption'] == null
        ? null
        : Element.fromJson(json['elementSubsumption'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_CodeSystemToJson(
    TerminologyCapabilities_CodeSystem instance) {
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
  writeNotNull('uri', instance.uri);
  writeNotNull('version', instance.version?.map((e) => e?.toJson())?.toList());
  writeNotNull('subsumption', instance.subsumption);
  writeNotNull('elementSubsumption', instance.elementSubsumption?.toJson());
  return val;
}

TerminologyCapabilities_Version _$TerminologyCapabilities_VersionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Version(
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
    isDefault: json['isDefault'] as bool,
    elementIsDefault: json['elementIsDefault'] == null
        ? null
        : Element.fromJson(json['elementIsDefault'] as Map<String, dynamic>),
    compositional: json['compositional'] as bool,
    elementCompositional: json['elementCompositional'] == null
        ? null
        : Element.fromJson(
            json['elementCompositional'] as Map<String, dynamic>),
    language: (json['language'] as List)?.map((e) => e as String)?.toList(),
    elementLanguage: (json['elementLanguage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Filter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)?.map((e) => e as String)?.toList(),
    elementProperty: (json['elementProperty'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_VersionToJson(
    TerminologyCapabilities_Version instance) {
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
  writeNotNull('isDefault', instance.isDefault);
  writeNotNull('elementIsDefault', instance.elementIsDefault?.toJson());
  writeNotNull('compositional', instance.compositional);
  writeNotNull('elementCompositional', instance.elementCompositional?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage',
      instance.elementLanguage?.map((e) => e?.toJson())?.toList());
  writeNotNull('filter', instance.filter?.map((e) => e?.toJson())?.toList());
  writeNotNull('property', instance.property);
  writeNotNull('elementProperty',
      instance.elementProperty?.map((e) => e?.toJson())?.toList());
  return val;
}

TerminologyCapabilities_Filter _$TerminologyCapabilities_FilterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Filter(
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
    op: (json['op'] as List)?.map((e) => e as String)?.toList(),
    elementOp: (json['elementOp'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_FilterToJson(
    TerminologyCapabilities_Filter instance) {
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
  writeNotNull('op', instance.op);
  writeNotNull(
      'elementOp', instance.elementOp?.map((e) => e?.toJson())?.toList());
  return val;
}

TerminologyCapabilities_Expansion _$TerminologyCapabilities_ExpansionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hierarchical: json['hierarchical'] as bool,
    elementHierarchical: json['elementHierarchical'] == null
        ? null
        : Element.fromJson(json['elementHierarchical'] as Map<String, dynamic>),
    paging: json['paging'] as bool,
    elementPaging: json['elementPaging'] == null
        ? null
        : Element.fromJson(json['elementPaging'] as Map<String, dynamic>),
    incomplete: json['incomplete'] as bool,
    elementIncomplete: json['elementIncomplete'] == null
        ? null
        : Element.fromJson(json['elementIncomplete'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Parameter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    textFilter: json['textFilter'] as String,
    elementTextFilter: json['elementTextFilter'] == null
        ? null
        : Element.fromJson(json['elementTextFilter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ExpansionToJson(
    TerminologyCapabilities_Expansion instance) {
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
  writeNotNull('hierarchical', instance.hierarchical);
  writeNotNull('elementHierarchical', instance.elementHierarchical?.toJson());
  writeNotNull('paging', instance.paging);
  writeNotNull('elementPaging', instance.elementPaging?.toJson());
  writeNotNull('incomplete', instance.incomplete);
  writeNotNull('elementIncomplete', instance.elementIncomplete?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  writeNotNull('textFilter', instance.textFilter);
  writeNotNull('elementTextFilter', instance.elementTextFilter?.toJson());
  return val;
}

TerminologyCapabilities_Parameter _$TerminologyCapabilities_ParameterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Parameter(
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
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ParameterToJson(
    TerminologyCapabilities_Parameter instance) {
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
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

TerminologyCapabilities_ValidateCode
    _$TerminologyCapabilities_ValidateCodeFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_ValidateCode(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translations: json['translations'] as bool,
    elementTranslations: json['elementTranslations'] == null
        ? null
        : Element.fromJson(json['elementTranslations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ValidateCodeToJson(
    TerminologyCapabilities_ValidateCode instance) {
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
  writeNotNull('translations', instance.translations);
  writeNotNull('elementTranslations', instance.elementTranslations?.toJson());
  return val;
}

TerminologyCapabilities_Translation
    _$TerminologyCapabilities_TranslationFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_Translation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    needsMap: json['needsMap'] as bool,
    elementNeedsMap: json['elementNeedsMap'] == null
        ? null
        : Element.fromJson(json['elementNeedsMap'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_TranslationToJson(
    TerminologyCapabilities_Translation instance) {
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
  writeNotNull('needsMap', instance.needsMap);
  writeNotNull('elementNeedsMap', instance.elementNeedsMap?.toJson());
  return val;
}

TerminologyCapabilities_Closure _$TerminologyCapabilities_ClosureFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Closure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translation: json['translation'] as bool,
    elementTranslation: json['elementTranslation'] == null
        ? null
        : Element.fromJson(json['elementTranslation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ClosureToJson(
    TerminologyCapabilities_Closure instance) {
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
  writeNotNull('translation', instance.translation);
  writeNotNull('elementTranslation', instance.elementTranslation?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TerminologyCapabilitiesAdapter
    extends TypeAdapter<TerminologyCapabilities> {
  @override
  TerminologyCapabilities read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities(
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
      title: fields[17] as String,
      elementTitle: fields[18] as Element,
      status: fields[19] as String,
      elementStatus: fields[20] as Element,
      experimental: fields[21] as bool,
      elementExperimental: fields[22] as Element,
      date: fields[23] as DateTime,
      elementDate: fields[24] as Element,
      publisher: fields[25] as String,
      elementPublisher: fields[26] as Element,
      contact: (fields[27] as List)?.cast<ContactDetail>(),
      description: fields[28] as String,
      elementDescription: fields[29] as Element,
      useContext: (fields[30] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[31] as List)?.cast<CodeableConcept>(),
      purpose: fields[32] as String,
      elementPurpose: fields[33] as Element,
      copyright: fields[34] as String,
      elementCopyright: fields[35] as Element,
      kind: fields[36] as String,
      elementKind: fields[37] as Element,
      software: fields[38] as TerminologyCapabilities_Software,
      implementation: fields[39] as TerminologyCapabilities_Implementation,
      lockedDate: fields[40] as bool,
      elementLockedDate: fields[41] as Element,
      codeSystem:
          (fields[42] as List)?.cast<TerminologyCapabilities_CodeSystem>(),
      expansion: fields[43] as TerminologyCapabilities_Expansion,
      codeSearch: fields[44] as String,
      elementCodeSearch: fields[45] as Element,
      validateCode: fields[46] as TerminologyCapabilities_ValidateCode,
      translation: fields[47] as TerminologyCapabilities_Translation,
      closure: fields[48] as TerminologyCapabilities_Closure,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities obj) {
    writer
      ..writeByte(49)
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
      ..write(obj.title)
      ..writeByte(18)
      ..write(obj.elementTitle)
      ..writeByte(19)
      ..write(obj.status)
      ..writeByte(20)
      ..write(obj.elementStatus)
      ..writeByte(21)
      ..write(obj.experimental)
      ..writeByte(22)
      ..write(obj.elementExperimental)
      ..writeByte(23)
      ..write(obj.date)
      ..writeByte(24)
      ..write(obj.elementDate)
      ..writeByte(25)
      ..write(obj.publisher)
      ..writeByte(26)
      ..write(obj.elementPublisher)
      ..writeByte(27)
      ..write(obj.contact)
      ..writeByte(28)
      ..write(obj.description)
      ..writeByte(29)
      ..write(obj.elementDescription)
      ..writeByte(30)
      ..write(obj.useContext)
      ..writeByte(31)
      ..write(obj.jurisdiction)
      ..writeByte(32)
      ..write(obj.purpose)
      ..writeByte(33)
      ..write(obj.elementPurpose)
      ..writeByte(34)
      ..write(obj.copyright)
      ..writeByte(35)
      ..write(obj.elementCopyright)
      ..writeByte(36)
      ..write(obj.kind)
      ..writeByte(37)
      ..write(obj.elementKind)
      ..writeByte(38)
      ..write(obj.software)
      ..writeByte(39)
      ..write(obj.implementation)
      ..writeByte(40)
      ..write(obj.lockedDate)
      ..writeByte(41)
      ..write(obj.elementLockedDate)
      ..writeByte(42)
      ..write(obj.codeSystem)
      ..writeByte(43)
      ..write(obj.expansion)
      ..writeByte(44)
      ..write(obj.codeSearch)
      ..writeByte(45)
      ..write(obj.elementCodeSearch)
      ..writeByte(46)
      ..write(obj.validateCode)
      ..writeByte(47)
      ..write(obj.translation)
      ..writeByte(48)
      ..write(obj.closure);
  }
}

class TerminologyCapabilities_SoftwareAdapter
    extends TypeAdapter<TerminologyCapabilities_Software> {
  @override
  TerminologyCapabilities_Software read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Software(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      version: fields[5] as String,
      elementVersion: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Software obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.version)
      ..writeByte(6)
      ..write(obj.elementVersion);
  }
}

class TerminologyCapabilities_ImplementationAdapter
    extends TypeAdapter<TerminologyCapabilities_Implementation> {
  @override
  TerminologyCapabilities_Implementation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Implementation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      url: fields[5] as String,
      elementUrl: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Implementation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.elementUrl);
  }
}

class TerminologyCapabilities_CodeSystemAdapter
    extends TypeAdapter<TerminologyCapabilities_CodeSystem> {
  @override
  TerminologyCapabilities_CodeSystem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_CodeSystem(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      uri: fields[3] as String,
      version: (fields[4] as List)?.cast<TerminologyCapabilities_Version>(),
      subsumption: fields[5] as bool,
      elementSubsumption: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_CodeSystem obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.uri)
      ..writeByte(4)
      ..write(obj.version)
      ..writeByte(5)
      ..write(obj.subsumption)
      ..writeByte(6)
      ..write(obj.elementSubsumption);
  }
}

class TerminologyCapabilities_VersionAdapter
    extends TypeAdapter<TerminologyCapabilities_Version> {
  @override
  TerminologyCapabilities_Version read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Version(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      isDefault: fields[5] as bool,
      elementIsDefault: fields[6] as Element,
      compositional: fields[7] as bool,
      elementCompositional: fields[8] as Element,
      language: (fields[9] as List)?.cast<String>(),
      elementLanguage: (fields[10] as List)?.cast<Element>(),
      filter: (fields[11] as List)?.cast<TerminologyCapabilities_Filter>(),
      property: (fields[12] as List)?.cast<String>(),
      elementProperty: (fields[13] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Version obj) {
    writer
      ..writeByte(14)
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
      ..write(obj.isDefault)
      ..writeByte(6)
      ..write(obj.elementIsDefault)
      ..writeByte(7)
      ..write(obj.compositional)
      ..writeByte(8)
      ..write(obj.elementCompositional)
      ..writeByte(9)
      ..write(obj.language)
      ..writeByte(10)
      ..write(obj.elementLanguage)
      ..writeByte(11)
      ..write(obj.filter)
      ..writeByte(12)
      ..write(obj.property)
      ..writeByte(13)
      ..write(obj.elementProperty);
  }
}

class TerminologyCapabilities_FilterAdapter
    extends TypeAdapter<TerminologyCapabilities_Filter> {
  @override
  TerminologyCapabilities_Filter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Filter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      op: (fields[5] as List)?.cast<String>(),
      elementOp: (fields[6] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Filter obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.op)
      ..writeByte(6)
      ..write(obj.elementOp);
  }
}

class TerminologyCapabilities_ExpansionAdapter
    extends TypeAdapter<TerminologyCapabilities_Expansion> {
  @override
  TerminologyCapabilities_Expansion read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Expansion(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      hierarchical: fields[3] as bool,
      elementHierarchical: fields[4] as Element,
      paging: fields[5] as bool,
      elementPaging: fields[6] as Element,
      incomplete: fields[7] as bool,
      elementIncomplete: fields[8] as Element,
      parameter: (fields[9] as List)?.cast<TerminologyCapabilities_Parameter>(),
      textFilter: fields[10] as String,
      elementTextFilter: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Expansion obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.hierarchical)
      ..writeByte(4)
      ..write(obj.elementHierarchical)
      ..writeByte(5)
      ..write(obj.paging)
      ..writeByte(6)
      ..write(obj.elementPaging)
      ..writeByte(7)
      ..write(obj.incomplete)
      ..writeByte(8)
      ..write(obj.elementIncomplete)
      ..writeByte(9)
      ..write(obj.parameter)
      ..writeByte(10)
      ..write(obj.textFilter)
      ..writeByte(11)
      ..write(obj.elementTextFilter);
  }
}

class TerminologyCapabilities_ParameterAdapter
    extends TypeAdapter<TerminologyCapabilities_Parameter> {
  @override
  TerminologyCapabilities_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      documentation: fields[5] as String,
      elementDocumentation: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Parameter obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.documentation)
      ..writeByte(6)
      ..write(obj.elementDocumentation);
  }
}

class TerminologyCapabilities_ValidateCodeAdapter
    extends TypeAdapter<TerminologyCapabilities_ValidateCode> {
  @override
  TerminologyCapabilities_ValidateCode read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_ValidateCode(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      translations: fields[3] as bool,
      elementTranslations: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_ValidateCode obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.translations)
      ..writeByte(4)
      ..write(obj.elementTranslations);
  }
}

class TerminologyCapabilities_TranslationAdapter
    extends TypeAdapter<TerminologyCapabilities_Translation> {
  @override
  TerminologyCapabilities_Translation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Translation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      needsMap: fields[3] as bool,
      elementNeedsMap: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Translation obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.needsMap)
      ..writeByte(4)
      ..write(obj.elementNeedsMap);
  }
}

class TerminologyCapabilities_ClosureAdapter
    extends TypeAdapter<TerminologyCapabilities_Closure> {
  @override
  TerminologyCapabilities_Closure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities_Closure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      translation: fields[3] as bool,
      elementTranslation: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities_Closure obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.translation)
      ..writeByte(4)
      ..write(obj.elementTranslation);
  }
}
