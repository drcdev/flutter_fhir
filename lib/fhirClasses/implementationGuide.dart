import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ImplementationGuide {
  static Future<ImplementationGuide> newInstance({
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
    String copyright,
    Element elementCopyright,
    String packageId,
    Element elementPackageId,
    String license,
    Element elementLicense,
    String fhirVersion,
    List<Element> elementFhirVersion,
    List<ImplementationGuide_DependsOn> dependsOn,
    List<ImplementationGuide_Global> global,
    ImplementationGuide_Definition definition,
    ImplementationGuide_Manifest manifest,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide newImplementationGuide = new ImplementationGuide(
      resourceType: 'ImplementationGuide',
      id: id ?? await fhirDb.newResourceId('ImplementationGuide'),
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
      copyright: copyright,
      elementCopyright: elementCopyright,
      packageId: packageId,
      elementPackageId: elementPackageId,
      license: license,
      elementLicense: elementLicense,
      fhirVersion: fhirVersion,
      elementFhirVersion: elementFhirVersion,
      dependsOn: dependsOn,
      global: global,
      definition: definition,
      manifest: manifest,
    );
    newImplementationGuide.meta.createdAt = DateTime.now();
    newImplementationGuide.meta.lastUpdated =
        newImplementationGuide.meta.createdAt;
    int saved = await fhirDb.saveResource(newImplementationGuide);
    return newImplementationGuide;
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
  String resourceType = 'ImplementationGuide';
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
  String copyright;
  @HiveField(33)
  Element elementCopyright;
  @HiveField(34)
  String packageId;
  @HiveField(35)
  Element elementPackageId;
  @HiveField(36)
  String license;
  @HiveField(37)
  Element elementLicense;
  @HiveField(38)
  String fhirVersion;
  @HiveField(39)
  List<Element> elementFhirVersion;
  @HiveField(40)
  List<ImplementationGuide_DependsOn> dependsOn;
  @HiveField(41)
  List<ImplementationGuide_Global> global;
  @HiveField(42)
  ImplementationGuide_Definition definition;
  @HiveField(43)
  ImplementationGuide_Manifest manifest;

  ImplementationGuide({
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
    this.copyright,
    this.elementCopyright,
    this.packageId,
    this.elementPackageId,
    this.license,
    this.elementLicense,
    this.fhirVersion,
    this.elementFhirVersion,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
  });

  factory ImplementationGuide.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuideToJson(this);
}

class ImplementationGuide_DependsOn {
  static Future<ImplementationGuide_DependsOn> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String uri,
    String packageId,
    Element elementPackageId,
    String version,
    Element elementVersion,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_DependsOn newImplementationGuide_DependsOn =
        new ImplementationGuide_DependsOn(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      uri: uri,
      packageId: packageId,
      elementPackageId: elementPackageId,
      version: version,
      elementVersion: elementVersion,
    );
    return newImplementationGuide_DependsOn;
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
  String packageId;
  @HiveField(5)
  Element elementPackageId;
  @HiveField(6)
  String version;
  @HiveField(7)
  Element elementVersion;

  ImplementationGuide_DependsOn({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.uri,
    this.packageId,
    this.elementPackageId,
    this.version,
    this.elementVersion,
  });

  factory ImplementationGuide_DependsOn.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DependsOnToJson(this);
}

class ImplementationGuide_Global {
  static Future<ImplementationGuide_Global> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String profile,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Global newImplementationGuide_Global =
        new ImplementationGuide_Global(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      profile: profile,
    );
    return newImplementationGuide_Global;
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
  String profile;

  ImplementationGuide_Global({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    @required this.profile,
  });

  factory ImplementationGuide_Global.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_GlobalFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GlobalToJson(this);
}

class ImplementationGuide_Definition {
  static Future<ImplementationGuide_Definition> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<ImplementationGuide_Grouping> grouping,
    List<ImplementationGuide_Resource> resource,
    ImplementationGuide_Page page,
    List<ImplementationGuide_Parameter> parameter,
    List<ImplementationGuide_Template> template,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Definition newImplementationGuide_Definition =
        new ImplementationGuide_Definition(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      grouping: grouping,
      resource: resource,
      page: page,
      parameter: parameter,
      template: template,
    );
    return newImplementationGuide_Definition;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<ImplementationGuide_Grouping> grouping;
  @HiveField(4)
  List<ImplementationGuide_Resource> resource;
  @HiveField(5)
  ImplementationGuide_Page page;
  @HiveField(6)
  List<ImplementationGuide_Parameter> parameter;
  @HiveField(7)
  List<ImplementationGuide_Template> template;

  ImplementationGuide_Definition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.grouping,
    @required this.resource,
    this.page,
    this.parameter,
    this.template,
  });

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_DefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DefinitionToJson(this);
}

class ImplementationGuide_Grouping {
  static Future<ImplementationGuide_Grouping> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Grouping newImplementationGuide_Grouping =
        new ImplementationGuide_Grouping(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
    );
    return newImplementationGuide_Grouping;
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
  String description;
  @HiveField(6)
  Element elementDescription;

  ImplementationGuide_Grouping({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
  });

  factory ImplementationGuide_Grouping.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_GroupingFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GroupingToJson(this);
}

class ImplementationGuide_Resource {
  static Future<ImplementationGuide_Resource> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference reference,
    String fhirVersion,
    List<Element> elementFhirVersion,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
    bool exampleBoolean,
    Element elementExampleBoolean,
    String exampleCanonical,
    Element elementExampleCanonical,
    String groupingId,
    Element elementGroupingId,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Resource newImplementationGuide_Resource =
        new ImplementationGuide_Resource(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      reference: reference,
      fhirVersion: fhirVersion,
      elementFhirVersion: elementFhirVersion,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
      exampleBoolean: exampleBoolean,
      elementExampleBoolean: elementExampleBoolean,
      exampleCanonical: exampleCanonical,
      elementExampleCanonical: elementExampleCanonical,
      groupingId: groupingId,
      elementGroupingId: elementGroupingId,
    );
    return newImplementationGuide_Resource;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference reference;
  @HiveField(4)
  String fhirVersion;
  @HiveField(5)
  List<Element> elementFhirVersion;
  @HiveField(6)
  String name;
  @HiveField(7)
  Element elementName;
  @HiveField(8)
  String description;
  @HiveField(9)
  Element elementDescription;
  @HiveField(10)
  bool exampleBoolean;
  @HiveField(11)
  Element elementExampleBoolean;
  @HiveField(12)
  String exampleCanonical;
  @HiveField(13)
  Element elementExampleCanonical;
  @HiveField(14)
  String groupingId;
  @HiveField(15)
  Element elementGroupingId;

  ImplementationGuide_Resource({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
    this.fhirVersion,
    this.elementFhirVersion,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.exampleBoolean,
    this.elementExampleBoolean,
    this.exampleCanonical,
    this.elementExampleCanonical,
    this.groupingId,
    this.elementGroupingId,
  });

  factory ImplementationGuide_Resource.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ResourceToJson(this);
}

class ImplementationGuide_Page {
  static Future<ImplementationGuide_Page> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String nameUrl,
    Element elementNameUrl,
    Reference nameReference,
    String title,
    Element elementTitle,
    String generation,
    Element elementGeneration,
    List<ImplementationGuide_Page> page,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Page newImplementationGuide_Page =
        new ImplementationGuide_Page(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      nameUrl: nameUrl,
      elementNameUrl: elementNameUrl,
      nameReference: nameReference,
      title: title,
      elementTitle: elementTitle,
      generation: generation,
      elementGeneration: elementGeneration,
      page: page,
    );
    return newImplementationGuide_Page;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String nameUrl;
  @HiveField(4)
  Element elementNameUrl;
  @HiveField(5)
  Reference nameReference;
  @HiveField(6)
  String title;
  @HiveField(7)
  Element elementTitle;
  @HiveField(8)
  String generation;
  @HiveField(9)
  Element elementGeneration;
  @HiveField(10)
  List<ImplementationGuide_Page> page;

  ImplementationGuide_Page({
    this.id,
    this.extension,
    this.modifierExtension,
    this.nameUrl,
    this.elementNameUrl,
    this.nameReference,
    this.title,
    this.elementTitle,
    this.generation,
    this.elementGeneration,
    this.page,
  });

  factory ImplementationGuide_Page.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_PageFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_PageToJson(this);
}

class ImplementationGuide_Parameter {
  static Future<ImplementationGuide_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Parameter newImplementationGuide_Parameter =
        new ImplementationGuide_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      value: value,
      elementValue: elementValue,
    );
    return newImplementationGuide_Parameter;
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
  String value;
  @HiveField(6)
  Element elementValue;

  ImplementationGuide_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.value,
    this.elementValue,
  });

  factory ImplementationGuide_Parameter.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ParameterToJson(this);
}

class ImplementationGuide_Template {
  static Future<ImplementationGuide_Template> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String source,
    Element elementSource,
    String scope,
    Element elementScope,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Template newImplementationGuide_Template =
        new ImplementationGuide_Template(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      source: source,
      elementSource: elementSource,
      scope: scope,
      elementScope: elementScope,
    );
    return newImplementationGuide_Template;
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
  String source;
  @HiveField(6)
  Element elementSource;
  @HiveField(7)
  String scope;
  @HiveField(8)
  Element elementScope;

  ImplementationGuide_Template({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.source,
    this.elementSource,
    this.scope,
    this.elementScope,
  });

  factory ImplementationGuide_Template.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_TemplateFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_TemplateToJson(this);
}

class ImplementationGuide_Manifest {
  static Future<ImplementationGuide_Manifest> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String rendering,
    Element elementRendering,
    List<ImplementationGuide_Resource1> resource,
    List<ImplementationGuide_Page1> page,
    List<String> image,
    List<Element> elementImage,
    List<String> other,
    List<Element> elementOther,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Manifest newImplementationGuide_Manifest =
        new ImplementationGuide_Manifest(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      rendering: rendering,
      elementRendering: elementRendering,
      resource: resource,
      page: page,
      image: image,
      elementImage: elementImage,
      other: other,
      elementOther: elementOther,
    );
    return newImplementationGuide_Manifest;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String rendering;
  @HiveField(4)
  Element elementRendering;
  @HiveField(5)
  List<ImplementationGuide_Resource1> resource;
  @HiveField(6)
  List<ImplementationGuide_Page1> page;
  @HiveField(7)
  List<String> image;
  @HiveField(8)
  List<Element> elementImage;
  @HiveField(9)
  List<String> other;
  @HiveField(10)
  List<Element> elementOther;

  ImplementationGuide_Manifest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.rendering,
    this.elementRendering,
    @required this.resource,
    this.page,
    this.image,
    this.elementImage,
    this.other,
    this.elementOther,
  });

  factory ImplementationGuide_Manifest.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_ManifestFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ManifestToJson(this);
}

class ImplementationGuide_Resource1 {
  static Future<ImplementationGuide_Resource1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference reference,
    bool exampleBoolean,
    Element elementExampleBoolean,
    String exampleCanonical,
    Element elementExampleCanonical,
    String relativePath,
    Element elementRelativePath,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Resource1 newImplementationGuide_Resource1 =
        new ImplementationGuide_Resource1(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      reference: reference,
      exampleBoolean: exampleBoolean,
      elementExampleBoolean: elementExampleBoolean,
      exampleCanonical: exampleCanonical,
      elementExampleCanonical: elementExampleCanonical,
      relativePath: relativePath,
      elementRelativePath: elementRelativePath,
    );
    return newImplementationGuide_Resource1;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference reference;
  @HiveField(4)
  bool exampleBoolean;
  @HiveField(5)
  Element elementExampleBoolean;
  @HiveField(6)
  String exampleCanonical;
  @HiveField(7)
  Element elementExampleCanonical;
  @HiveField(8)
  String relativePath;
  @HiveField(9)
  Element elementRelativePath;

  ImplementationGuide_Resource1({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.reference,
    this.exampleBoolean,
    this.elementExampleBoolean,
    this.exampleCanonical,
    this.elementExampleCanonical,
    this.relativePath,
    this.elementRelativePath,
  });

  factory ImplementationGuide_Resource1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_Resource1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Resource1ToJson(this);
}

class ImplementationGuide_Page1 {
  static Future<ImplementationGuide_Page1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    List<String> anchor,
    List<Element> elementAnchor,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImplementationGuide_Page1 newImplementationGuide_Page1 =
        new ImplementationGuide_Page1(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      anchor: anchor,
      elementAnchor: elementAnchor,
    );
    return newImplementationGuide_Page1;
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
  String title;
  @HiveField(6)
  Element elementTitle;
  @HiveField(7)
  List<String> anchor;
  @HiveField(8)
  List<Element> elementAnchor;

  ImplementationGuide_Page1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.anchor,
    this.elementAnchor,
  });

  factory ImplementationGuide_Page1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_Page1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Page1ToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImplementationGuide _$ImplementationGuideFromJson(Map<String, dynamic> json) {
  return ImplementationGuide(
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
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    packageId: json['packageId'] as String,
    elementPackageId: json['elementPackageId'] == null
        ? null
        : Element.fromJson(json['elementPackageId'] as Map<String, dynamic>),
    license: json['license'] as String,
    elementLicense: json['elementLicense'] == null
        ? null
        : Element.fromJson(json['elementLicense'] as Map<String, dynamic>),
    fhirVersion: json['fhirVersion'] as String,
    elementFhirVersion: (json['elementFhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dependsOn: (json['dependsOn'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_DependsOn.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    global: (json['global'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Global.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definition: json['definition'] == null
        ? null
        : ImplementationGuide_Definition.fromJson(
            json['definition'] as Map<String, dynamic>),
    manifest: json['manifest'] == null
        ? null
        : ImplementationGuide_Manifest.fromJson(
            json['manifest'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuideToJson(ImplementationGuide instance) {
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
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('packageId', instance.packageId);
  writeNotNull('elementPackageId', instance.elementPackageId?.toJson());
  writeNotNull('license', instance.license);
  writeNotNull('elementLicense', instance.elementLicense?.toJson());
  writeNotNull('fhirVersion', instance.fhirVersion);
  writeNotNull('elementFhirVersion',
      instance.elementFhirVersion?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'dependsOn', instance.dependsOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('global', instance.global?.map((e) => e?.toJson())?.toList());
  writeNotNull('definition', instance.definition?.toJson());
  writeNotNull('manifest', instance.manifest?.toJson());
  return val;
}

ImplementationGuide_DependsOn _$ImplementationGuide_DependsOnFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_DependsOn(
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
    packageId: json['packageId'] as String,
    elementPackageId: json['elementPackageId'] == null
        ? null
        : Element.fromJson(json['elementPackageId'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_DependsOnToJson(
    ImplementationGuide_DependsOn instance) {
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
  writeNotNull('packageId', instance.packageId);
  writeNotNull('elementPackageId', instance.elementPackageId?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  return val;
}

ImplementationGuide_Global _$ImplementationGuide_GlobalFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Global(
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
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$ImplementationGuide_GlobalToJson(
    ImplementationGuide_Global instance) {
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
  writeNotNull('profile', instance.profile);
  return val;
}

ImplementationGuide_Definition _$ImplementationGuide_DefinitionFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Definition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    grouping: (json['grouping'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Grouping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] == null
        ? null
        : ImplementationGuide_Page.fromJson(
            json['page'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    template: (json['template'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Template.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_DefinitionToJson(
    ImplementationGuide_Definition instance) {
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
  writeNotNull(
      'grouping', instance.grouping?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  writeNotNull('page', instance.page?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'template', instance.template?.map((e) => e?.toJson())?.toList());
  return val;
}

ImplementationGuide_Grouping _$ImplementationGuide_GroupingFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Grouping(
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_GroupingToJson(
    ImplementationGuide_Grouping instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

ImplementationGuide_Resource _$ImplementationGuide_ResourceFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Resource(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    fhirVersion: json['fhirVersion'] as String,
    elementFhirVersion: (json['elementFhirVersion'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    exampleBoolean: json['exampleBoolean'] as bool,
    elementExampleBoolean: json['elementExampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementExampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    elementExampleCanonical: json['elementExampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementExampleCanonical'] as Map<String, dynamic>),
    groupingId: json['groupingId'] as String,
    elementGroupingId: json['elementGroupingId'] == null
        ? null
        : Element.fromJson(json['elementGroupingId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_ResourceToJson(
    ImplementationGuide_Resource instance) {
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
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('fhirVersion', instance.fhirVersion);
  writeNotNull('elementFhirVersion',
      instance.elementFhirVersion?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('exampleBoolean', instance.exampleBoolean);
  writeNotNull(
      'elementExampleBoolean', instance.elementExampleBoolean?.toJson());
  writeNotNull('exampleCanonical', instance.exampleCanonical);
  writeNotNull(
      'elementExampleCanonical', instance.elementExampleCanonical?.toJson());
  writeNotNull('groupingId', instance.groupingId);
  writeNotNull('elementGroupingId', instance.elementGroupingId?.toJson());
  return val;
}

ImplementationGuide_Page _$ImplementationGuide_PageFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Page(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nameUrl: json['nameUrl'] as String,
    elementNameUrl: json['elementNameUrl'] == null
        ? null
        : Element.fromJson(json['elementNameUrl'] as Map<String, dynamic>),
    nameReference: json['nameReference'] == null
        ? null
        : Reference.fromJson(json['nameReference'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    generation: json['generation'] as String,
    elementGeneration: json['elementGeneration'] == null
        ? null
        : Element.fromJson(json['elementGeneration'] as Map<String, dynamic>),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_PageToJson(
    ImplementationGuide_Page instance) {
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
  writeNotNull('nameUrl', instance.nameUrl);
  writeNotNull('elementNameUrl', instance.elementNameUrl?.toJson());
  writeNotNull('nameReference', instance.nameReference?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('generation', instance.generation);
  writeNotNull('elementGeneration', instance.elementGeneration?.toJson());
  writeNotNull('page', instance.page?.map((e) => e?.toJson())?.toList());
  return val;
}

ImplementationGuide_Parameter _$ImplementationGuide_ParameterFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Parameter(
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
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_ParameterToJson(
    ImplementationGuide_Parameter instance) {
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
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

ImplementationGuide_Template _$ImplementationGuide_TemplateFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Template(
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
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    scope: json['scope'] as String,
    elementScope: json['elementScope'] == null
        ? null
        : Element.fromJson(json['elementScope'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_TemplateToJson(
    ImplementationGuide_Template instance) {
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
  writeNotNull('source', instance.source);
  writeNotNull('elementSource', instance.elementSource?.toJson());
  writeNotNull('scope', instance.scope);
  writeNotNull('elementScope', instance.elementScope?.toJson());
  return val;
}

ImplementationGuide_Manifest _$ImplementationGuide_ManifestFromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Manifest(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rendering: json['rendering'] as String,
    elementRendering: json['elementRendering'] == null
        ? null
        : Element.fromJson(json['elementRendering'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Resource1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: (json['page'] as List)
        ?.map((e) => e == null
            ? null
            : ImplementationGuide_Page1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    image: (json['image'] as List)?.map((e) => e as String)?.toList(),
    elementImage: (json['elementImage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    other: (json['other'] as List)?.map((e) => e as String)?.toList(),
    elementOther: (json['elementOther'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_ManifestToJson(
    ImplementationGuide_Manifest instance) {
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
  writeNotNull('rendering', instance.rendering);
  writeNotNull('elementRendering', instance.elementRendering?.toJson());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  writeNotNull('page', instance.page?.map((e) => e?.toJson())?.toList());
  writeNotNull('image', instance.image);
  writeNotNull(
      'elementImage', instance.elementImage?.map((e) => e?.toJson())?.toList());
  writeNotNull('other', instance.other);
  writeNotNull(
      'elementOther', instance.elementOther?.map((e) => e?.toJson())?.toList());
  return val;
}

ImplementationGuide_Resource1 _$ImplementationGuide_Resource1FromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Resource1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    exampleBoolean: json['exampleBoolean'] as bool,
    elementExampleBoolean: json['elementExampleBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementExampleBoolean'] as Map<String, dynamic>),
    exampleCanonical: json['exampleCanonical'] as String,
    elementExampleCanonical: json['elementExampleCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementExampleCanonical'] as Map<String, dynamic>),
    relativePath: json['relativePath'] as String,
    elementRelativePath: json['elementRelativePath'] == null
        ? null
        : Element.fromJson(json['elementRelativePath'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImplementationGuide_Resource1ToJson(
    ImplementationGuide_Resource1 instance) {
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
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('exampleBoolean', instance.exampleBoolean);
  writeNotNull(
      'elementExampleBoolean', instance.elementExampleBoolean?.toJson());
  writeNotNull('exampleCanonical', instance.exampleCanonical);
  writeNotNull(
      'elementExampleCanonical', instance.elementExampleCanonical?.toJson());
  writeNotNull('relativePath', instance.relativePath);
  writeNotNull('elementRelativePath', instance.elementRelativePath?.toJson());
  return val;
}

ImplementationGuide_Page1 _$ImplementationGuide_Page1FromJson(
    Map<String, dynamic> json) {
  return ImplementationGuide_Page1(
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    anchor: (json['anchor'] as List)?.map((e) => e as String)?.toList(),
    elementAnchor: (json['elementAnchor'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImplementationGuide_Page1ToJson(
    ImplementationGuide_Page1 instance) {
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
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('anchor', instance.anchor);
  writeNotNull('elementAnchor',
      instance.elementAnchor?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImplementationGuideAdapter extends TypeAdapter<ImplementationGuide> {
  @override
  ImplementationGuide read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide(
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
      copyright: fields[32] as String,
      elementCopyright: fields[33] as Element,
      packageId: fields[34] as String,
      elementPackageId: fields[35] as Element,
      license: fields[36] as String,
      elementLicense: fields[37] as Element,
      fhirVersion: fields[38] as String,
      elementFhirVersion: (fields[39] as List)?.cast<Element>(),
      dependsOn: (fields[40] as List)?.cast<ImplementationGuide_DependsOn>(),
      global: (fields[41] as List)?.cast<ImplementationGuide_Global>(),
      definition: fields[42] as ImplementationGuide_Definition,
      manifest: fields[43] as ImplementationGuide_Manifest,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide obj) {
    writer
      ..writeByte(44)
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
      ..write(obj.copyright)
      ..writeByte(33)
      ..write(obj.elementCopyright)
      ..writeByte(34)
      ..write(obj.packageId)
      ..writeByte(35)
      ..write(obj.elementPackageId)
      ..writeByte(36)
      ..write(obj.license)
      ..writeByte(37)
      ..write(obj.elementLicense)
      ..writeByte(38)
      ..write(obj.fhirVersion)
      ..writeByte(39)
      ..write(obj.elementFhirVersion)
      ..writeByte(40)
      ..write(obj.dependsOn)
      ..writeByte(41)
      ..write(obj.global)
      ..writeByte(42)
      ..write(obj.definition)
      ..writeByte(43)
      ..write(obj.manifest);
  }
}

class ImplementationGuide_DependsOnAdapter
    extends TypeAdapter<ImplementationGuide_DependsOn> {
  @override
  ImplementationGuide_DependsOn read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_DependsOn(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      uri: fields[3] as String,
      packageId: fields[4] as String,
      elementPackageId: fields[5] as Element,
      version: fields[6] as String,
      elementVersion: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_DependsOn obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.uri)
      ..writeByte(4)
      ..write(obj.packageId)
      ..writeByte(5)
      ..write(obj.elementPackageId)
      ..writeByte(6)
      ..write(obj.version)
      ..writeByte(7)
      ..write(obj.elementVersion);
  }
}

class ImplementationGuide_GlobalAdapter
    extends TypeAdapter<ImplementationGuide_Global> {
  @override
  ImplementationGuide_Global read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Global(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      profile: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Global obj) {
    writer
      ..writeByte(6)
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
      ..write(obj.profile);
  }
}

class ImplementationGuide_DefinitionAdapter
    extends TypeAdapter<ImplementationGuide_Definition> {
  @override
  ImplementationGuide_Definition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Definition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      grouping: (fields[3] as List)?.cast<ImplementationGuide_Grouping>(),
      resource: (fields[4] as List)?.cast<ImplementationGuide_Resource>(),
      page: fields[5] as ImplementationGuide_Page,
      parameter: (fields[6] as List)?.cast<ImplementationGuide_Parameter>(),
      template: (fields[7] as List)?.cast<ImplementationGuide_Template>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Definition obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.grouping)
      ..writeByte(4)
      ..write(obj.resource)
      ..writeByte(5)
      ..write(obj.page)
      ..writeByte(6)
      ..write(obj.parameter)
      ..writeByte(7)
      ..write(obj.template);
  }
}

class ImplementationGuide_GroupingAdapter
    extends TypeAdapter<ImplementationGuide_Grouping> {
  @override
  ImplementationGuide_Grouping read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Grouping(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      description: fields[5] as String,
      elementDescription: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Grouping obj) {
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
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.elementDescription);
  }
}

class ImplementationGuide_ResourceAdapter
    extends TypeAdapter<ImplementationGuide_Resource> {
  @override
  ImplementationGuide_Resource read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Resource(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      reference: fields[3] as Reference,
      fhirVersion: fields[4] as String,
      elementFhirVersion: (fields[5] as List)?.cast<Element>(),
      name: fields[6] as String,
      elementName: fields[7] as Element,
      description: fields[8] as String,
      elementDescription: fields[9] as Element,
      exampleBoolean: fields[10] as bool,
      elementExampleBoolean: fields[11] as Element,
      exampleCanonical: fields[12] as String,
      elementExampleCanonical: fields[13] as Element,
      groupingId: fields[14] as String,
      elementGroupingId: fields[15] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Resource obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.reference)
      ..writeByte(4)
      ..write(obj.fhirVersion)
      ..writeByte(5)
      ..write(obj.elementFhirVersion)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.elementDescription)
      ..writeByte(10)
      ..write(obj.exampleBoolean)
      ..writeByte(11)
      ..write(obj.elementExampleBoolean)
      ..writeByte(12)
      ..write(obj.exampleCanonical)
      ..writeByte(13)
      ..write(obj.elementExampleCanonical)
      ..writeByte(14)
      ..write(obj.groupingId)
      ..writeByte(15)
      ..write(obj.elementGroupingId);
  }
}

class ImplementationGuide_PageAdapter
    extends TypeAdapter<ImplementationGuide_Page> {
  @override
  ImplementationGuide_Page read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Page(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      nameUrl: fields[3] as String,
      elementNameUrl: fields[4] as Element,
      nameReference: fields[5] as Reference,
      title: fields[6] as String,
      elementTitle: fields[7] as Element,
      generation: fields[8] as String,
      elementGeneration: fields[9] as Element,
      page: (fields[10] as List)?.cast<ImplementationGuide_Page>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Page obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.nameUrl)
      ..writeByte(4)
      ..write(obj.elementNameUrl)
      ..writeByte(5)
      ..write(obj.nameReference)
      ..writeByte(6)
      ..write(obj.title)
      ..writeByte(7)
      ..write(obj.elementTitle)
      ..writeByte(8)
      ..write(obj.generation)
      ..writeByte(9)
      ..write(obj.elementGeneration)
      ..writeByte(10)
      ..write(obj.page);
  }
}

class ImplementationGuide_ParameterAdapter
    extends TypeAdapter<ImplementationGuide_Parameter> {
  @override
  ImplementationGuide_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      value: fields[5] as String,
      elementValue: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Parameter obj) {
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
      ..write(obj.value)
      ..writeByte(6)
      ..write(obj.elementValue);
  }
}

class ImplementationGuide_TemplateAdapter
    extends TypeAdapter<ImplementationGuide_Template> {
  @override
  ImplementationGuide_Template read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Template(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      source: fields[5] as String,
      elementSource: fields[6] as Element,
      scope: fields[7] as String,
      elementScope: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Template obj) {
    writer
      ..writeByte(9)
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
      ..write(obj.source)
      ..writeByte(6)
      ..write(obj.elementSource)
      ..writeByte(7)
      ..write(obj.scope)
      ..writeByte(8)
      ..write(obj.elementScope);
  }
}

class ImplementationGuide_ManifestAdapter
    extends TypeAdapter<ImplementationGuide_Manifest> {
  @override
  ImplementationGuide_Manifest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Manifest(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      rendering: fields[3] as String,
      elementRendering: fields[4] as Element,
      resource: (fields[5] as List)?.cast<ImplementationGuide_Resource1>(),
      page: (fields[6] as List)?.cast<ImplementationGuide_Page1>(),
      image: (fields[7] as List)?.cast<String>(),
      elementImage: (fields[8] as List)?.cast<Element>(),
      other: (fields[9] as List)?.cast<String>(),
      elementOther: (fields[10] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Manifest obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.rendering)
      ..writeByte(4)
      ..write(obj.elementRendering)
      ..writeByte(5)
      ..write(obj.resource)
      ..writeByte(6)
      ..write(obj.page)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.elementImage)
      ..writeByte(9)
      ..write(obj.other)
      ..writeByte(10)
      ..write(obj.elementOther);
  }
}

class ImplementationGuide_Resource1Adapter
    extends TypeAdapter<ImplementationGuide_Resource1> {
  @override
  ImplementationGuide_Resource1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Resource1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      reference: fields[3] as Reference,
      exampleBoolean: fields[4] as bool,
      elementExampleBoolean: fields[5] as Element,
      exampleCanonical: fields[6] as String,
      elementExampleCanonical: fields[7] as Element,
      relativePath: fields[8] as String,
      elementRelativePath: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Resource1 obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.reference)
      ..writeByte(4)
      ..write(obj.exampleBoolean)
      ..writeByte(5)
      ..write(obj.elementExampleBoolean)
      ..writeByte(6)
      ..write(obj.exampleCanonical)
      ..writeByte(7)
      ..write(obj.elementExampleCanonical)
      ..writeByte(8)
      ..write(obj.relativePath)
      ..writeByte(9)
      ..write(obj.elementRelativePath);
  }
}

class ImplementationGuide_Page1Adapter
    extends TypeAdapter<ImplementationGuide_Page1> {
  @override
  ImplementationGuide_Page1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImplementationGuide_Page1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      title: fields[5] as String,
      elementTitle: fields[6] as Element,
      anchor: (fields[7] as List)?.cast<String>(),
      elementAnchor: (fields[8] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImplementationGuide_Page1 obj) {
    writer
      ..writeByte(9)
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
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.elementTitle)
      ..writeByte(7)
      ..write(obj.anchor)
      ..writeByte(8)
      ..write(obj.elementAnchor);
  }
}
