import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'TerminologyCapabilities';
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
  String kind;
  Element elementKind;
  TerminologyCapabilities_Software software;
  TerminologyCapabilities_Implementation implementation;
  bool lockedDate;
  Element elementLockedDate;
  List<TerminologyCapabilities_CodeSystem> codeSystem;
  TerminologyCapabilities_Expansion expansion;
  String codeSearch;
  Element elementCodeSearch;
  TerminologyCapabilities_ValidateCode validateCode;
  TerminologyCapabilities_Translation translation;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities_Software'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      version: version,
      elementVersion: elementVersion,
    );
    return newTerminologyCapabilities_Software;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String version;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ??
          await fhirDb.newResourceId('TerminologyCapabilities_Implementation'),
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      url: url,
      elementUrl: elementUrl,
    );
    return newTerminologyCapabilities_Implementation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String url;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ??
          await fhirDb.newResourceId('TerminologyCapabilities_CodeSystem'),
      extension: extension,
      modifierExtension: modifierExtension,
      uri: uri,
      version: version,
      subsumption: subsumption,
      elementSubsumption: elementSubsumption,
    );
    return newTerminologyCapabilities_CodeSystem;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uri;
  List<TerminologyCapabilities_Version> version;
  bool subsumption;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities_Version'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  bool isDefault;
  Element elementIsDefault;
  bool compositional;
  Element elementCompositional;
  List<String> language;
  List<Element> elementLanguage;
  List<TerminologyCapabilities_Filter> filter;
  List<String> property;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities_Filter'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      op: op,
      elementOp: elementOp,
    );
    return newTerminologyCapabilities_Filter;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  List<String> op;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities_Expansion'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool hierarchical;
  Element elementHierarchical;
  bool paging;
  Element elementPaging;
  bool incomplete;
  Element elementIncomplete;
  List<TerminologyCapabilities_Parameter> parameter;
  String textFilter;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities_Parameter'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newTerminologyCapabilities_Parameter;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String documentation;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ??
          await fhirDb.newResourceId('TerminologyCapabilities_ValidateCode'),
      extension: extension,
      modifierExtension: modifierExtension,
      translations: translations,
      elementTranslations: elementTranslations,
    );
    return newTerminologyCapabilities_ValidateCode;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool translations;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ??
          await fhirDb.newResourceId('TerminologyCapabilities_Translation'),
      extension: extension,
      modifierExtension: modifierExtension,
      needsMap: needsMap,
      elementNeedsMap: elementNeedsMap,
    );
    return newTerminologyCapabilities_Translation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool needsMap;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('TerminologyCapabilities_Closure'),
      extension: extension,
      modifierExtension: modifierExtension,
      translation: translation,
      elementTranslation: elementTranslation,
    );
    return newTerminologyCapabilities_Closure;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool translation;
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
