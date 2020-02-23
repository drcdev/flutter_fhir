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

class GraphDefinition {
  static Future<GraphDefinition> newInstance({
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
    String start,
    Element elementStart,
    String profile,
    List<GraphDefinition_Link> link,
  }) async {
    var fhirDb = new DatabaseHelper();
    GraphDefinition newGraphDefinition = new GraphDefinition(
      resourceType: 'GraphDefinition',
      id: id ?? await fhirDb.newResourceId('GraphDefinition'),
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
      start: start,
      elementStart: elementStart,
      profile: profile,
      link: link,
    );
    newGraphDefinition.meta.createdAt = DateTime.now();
    newGraphDefinition.meta.lastUpdated = newGraphDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newGraphDefinition);
    return newGraphDefinition;
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
  String resourceType = 'GraphDefinition';
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
  String status;
  @HiveField(18)
  Element elementStatus;
  @HiveField(19)
  bool experimental;
  @HiveField(20)
  Element elementExperimental;
  @HiveField(21)
  DateTime date;
  @HiveField(22)
  Element elementDate;
  @HiveField(23)
  String publisher;
  @HiveField(24)
  Element elementPublisher;
  @HiveField(25)
  List<ContactDetail> contact;
  @HiveField(26)
  String description;
  @HiveField(27)
  Element elementDescription;
  @HiveField(28)
  List<UsageContext> useContext;
  @HiveField(29)
  List<CodeableConcept> jurisdiction;
  @HiveField(30)
  String purpose;
  @HiveField(31)
  Element elementPurpose;
  @HiveField(32)
  String start;
  @HiveField(33)
  Element elementStart;
  @HiveField(34)
  String profile;
  @HiveField(35)
  List<GraphDefinition_Link> link;

  GraphDefinition({
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
    this.start,
    this.elementStart,
    this.profile,
    this.link,
  });

  factory GraphDefinition.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinitionToJson(this);
}

class GraphDefinition_Link {
  static Future<GraphDefinition_Link> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    String sliceName,
    Element elementSliceName,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
    String description,
    Element elementDescription,
    List<GraphDefinition_Target> target,
  }) async {
    var fhirDb = new DatabaseHelper();
    GraphDefinition_Link newGraphDefinition_Link = new GraphDefinition_Link(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      sliceName: sliceName,
      elementSliceName: elementSliceName,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
      description: description,
      elementDescription: elementDescription,
      target: target,
    );
    return newGraphDefinition_Link;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String path;
  @HiveField(4)
  Element elementPath;
  @HiveField(5)
  String sliceName;
  @HiveField(6)
  Element elementSliceName;
  @HiveField(7)
  int min;
  @HiveField(8)
  Element elementMin;
  @HiveField(9)
  String max;
  @HiveField(10)
  Element elementMax;
  @HiveField(11)
  String description;
  @HiveField(12)
  Element elementDescription;
  @HiveField(13)
  List<GraphDefinition_Target> target;

  GraphDefinition_Link({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.sliceName,
    this.elementSliceName,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.description,
    this.elementDescription,
    this.target,
  });

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinition_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_LinkToJson(this);
}

class GraphDefinition_Target {
  static Future<GraphDefinition_Target> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String params,
    Element elementParams,
    String profile,
    List<GraphDefinition_Compartment> compartment,
    List<GraphDefinition_Link> link,
  }) async {
    var fhirDb = new DatabaseHelper();
    GraphDefinition_Target newGraphDefinition_Target =
        new GraphDefinition_Target(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      params: params,
      elementParams: elementParams,
      profile: profile,
      compartment: compartment,
      link: link,
    );
    return newGraphDefinition_Target;
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
  String params;
  @HiveField(6)
  Element elementParams;
  @HiveField(7)
  String profile;
  @HiveField(8)
  List<GraphDefinition_Compartment> compartment;
  @HiveField(9)
  List<GraphDefinition_Link> link;

  GraphDefinition_Target({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.params,
    this.elementParams,
    this.profile,
    this.compartment,
    this.link,
  });

  factory GraphDefinition_Target.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_TargetToJson(this);
}

class GraphDefinition_Compartment {
  static Future<GraphDefinition_Compartment> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String use,
    Element elementUse,
    String code,
    Element elementCode,
    String rule,
    Element elementRule,
    String expression,
    Element elementExpression,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    GraphDefinition_Compartment newGraphDefinition_Compartment =
        new GraphDefinition_Compartment(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      use: use,
      elementUse: elementUse,
      code: code,
      elementCode: elementCode,
      rule: rule,
      elementRule: elementRule,
      expression: expression,
      elementExpression: elementExpression,
      description: description,
      elementDescription: elementDescription,
    );
    return newGraphDefinition_Compartment;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String use;
  @HiveField(4)
  Element elementUse;
  @HiveField(5)
  String code;
  @HiveField(6)
  Element elementCode;
  @HiveField(7)
  String rule;
  @HiveField(8)
  Element elementRule;
  @HiveField(9)
  String expression;
  @HiveField(10)
  Element elementExpression;
  @HiveField(11)
  String description;
  @HiveField(12)
  Element elementDescription;

  GraphDefinition_Compartment({
    this.id,
    this.extension,
    this.modifierExtension,
    this.use,
    this.elementUse,
    this.code,
    this.elementCode,
    this.rule,
    this.elementRule,
    this.expression,
    this.elementExpression,
    this.description,
    this.elementDescription,
  });

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinition_CompartmentFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_CompartmentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphDefinition _$GraphDefinitionFromJson(Map<String, dynamic> json) {
  return GraphDefinition(
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
    start: json['start'] as String,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinitionToJson(GraphDefinition instance) {
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
  writeNotNull('start', instance.start);
  writeNotNull('elementStart', instance.elementStart?.toJson());
  writeNotNull('profile', instance.profile);
  writeNotNull('link', instance.link?.map((e) => e?.toJson())?.toList());
  return val;
}

GraphDefinition_Link _$GraphDefinition_LinkFromJson(Map<String, dynamic> json) {
  return GraphDefinition_Link(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    sliceName: json['sliceName'] as String,
    elementSliceName: json['elementSliceName'] == null
        ? null
        : Element.fromJson(json['elementSliceName'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinition_LinkToJson(
    GraphDefinition_Link instance) {
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
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('sliceName', instance.sliceName);
  writeNotNull('elementSliceName', instance.elementSliceName?.toJson());
  writeNotNull('min', instance.min);
  writeNotNull('elementMin', instance.elementMin?.toJson());
  writeNotNull('max', instance.max);
  writeNotNull('elementMax', instance.elementMax?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('target', instance.target?.map((e) => e?.toJson())?.toList());
  return val;
}

GraphDefinition_Target _$GraphDefinition_TargetFromJson(
    Map<String, dynamic> json) {
  return GraphDefinition_Target(
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
    params: json['params'] as String,
    elementParams: json['elementParams'] == null
        ? null
        : Element.fromJson(json['elementParams'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    compartment: (json['compartment'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Compartment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinition_TargetToJson(
    GraphDefinition_Target instance) {
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
  writeNotNull('params', instance.params);
  writeNotNull('elementParams', instance.elementParams?.toJson());
  writeNotNull('profile', instance.profile);
  writeNotNull(
      'compartment', instance.compartment?.map((e) => e?.toJson())?.toList());
  writeNotNull('link', instance.link?.map((e) => e?.toJson())?.toList());
  return val;
}

GraphDefinition_Compartment _$GraphDefinition_CompartmentFromJson(
    Map<String, dynamic> json) {
  return GraphDefinition_Compartment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    rule: json['rule'] as String,
    elementRule: json['elementRule'] == null
        ? null
        : Element.fromJson(json['elementRule'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GraphDefinition_CompartmentToJson(
    GraphDefinition_Compartment instance) {
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
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('rule', instance.rule);
  writeNotNull('elementRule', instance.elementRule?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('elementExpression', instance.elementExpression?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GraphDefinitionAdapter extends TypeAdapter<GraphDefinition> {
  @override
  GraphDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition(
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
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      experimental: fields[19] as bool,
      elementExperimental: fields[20] as Element,
      date: fields[21] as DateTime,
      elementDate: fields[22] as Element,
      publisher: fields[23] as String,
      elementPublisher: fields[24] as Element,
      contact: (fields[25] as List)?.cast<ContactDetail>(),
      description: fields[26] as String,
      elementDescription: fields[27] as Element,
      useContext: (fields[28] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[29] as List)?.cast<CodeableConcept>(),
      purpose: fields[30] as String,
      elementPurpose: fields[31] as Element,
      start: fields[32] as String,
      elementStart: fields[33] as Element,
      profile: fields[34] as String,
      link: (fields[35] as List)?.cast<GraphDefinition_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition obj) {
    writer
      ..writeByte(36)
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
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.experimental)
      ..writeByte(20)
      ..write(obj.elementExperimental)
      ..writeByte(21)
      ..write(obj.date)
      ..writeByte(22)
      ..write(obj.elementDate)
      ..writeByte(23)
      ..write(obj.publisher)
      ..writeByte(24)
      ..write(obj.elementPublisher)
      ..writeByte(25)
      ..write(obj.contact)
      ..writeByte(26)
      ..write(obj.description)
      ..writeByte(27)
      ..write(obj.elementDescription)
      ..writeByte(28)
      ..write(obj.useContext)
      ..writeByte(29)
      ..write(obj.jurisdiction)
      ..writeByte(30)
      ..write(obj.purpose)
      ..writeByte(31)
      ..write(obj.elementPurpose)
      ..writeByte(32)
      ..write(obj.start)
      ..writeByte(33)
      ..write(obj.elementStart)
      ..writeByte(34)
      ..write(obj.profile)
      ..writeByte(35)
      ..write(obj.link);
  }
}

class GraphDefinition_LinkAdapter extends TypeAdapter<GraphDefinition_Link> {
  @override
  GraphDefinition_Link read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition_Link(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      sliceName: fields[5] as String,
      elementSliceName: fields[6] as Element,
      min: fields[7] as int,
      elementMin: fields[8] as Element,
      max: fields[9] as String,
      elementMax: fields[10] as Element,
      description: fields[11] as String,
      elementDescription: fields[12] as Element,
      target: (fields[13] as List)?.cast<GraphDefinition_Target>(),
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition_Link obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.sliceName)
      ..writeByte(6)
      ..write(obj.elementSliceName)
      ..writeByte(7)
      ..write(obj.min)
      ..writeByte(8)
      ..write(obj.elementMin)
      ..writeByte(9)
      ..write(obj.max)
      ..writeByte(10)
      ..write(obj.elementMax)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.elementDescription)
      ..writeByte(13)
      ..write(obj.target);
  }
}

class GraphDefinition_TargetAdapter
    extends TypeAdapter<GraphDefinition_Target> {
  @override
  GraphDefinition_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      params: fields[5] as String,
      elementParams: fields[6] as Element,
      profile: fields[7] as String,
      compartment: (fields[8] as List)?.cast<GraphDefinition_Compartment>(),
      link: (fields[9] as List)?.cast<GraphDefinition_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition_Target obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.params)
      ..writeByte(6)
      ..write(obj.elementParams)
      ..writeByte(7)
      ..write(obj.profile)
      ..writeByte(8)
      ..write(obj.compartment)
      ..writeByte(9)
      ..write(obj.link);
  }
}

class GraphDefinition_CompartmentAdapter
    extends TypeAdapter<GraphDefinition_Compartment> {
  @override
  GraphDefinition_Compartment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition_Compartment(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      use: fields[3] as String,
      elementUse: fields[4] as Element,
      code: fields[5] as String,
      elementCode: fields[6] as Element,
      rule: fields[7] as String,
      elementRule: fields[8] as Element,
      expression: fields[9] as String,
      elementExpression: fields[10] as Element,
      description: fields[11] as String,
      elementDescription: fields[12] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition_Compartment obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.use)
      ..writeByte(4)
      ..write(obj.elementUse)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.elementCode)
      ..writeByte(7)
      ..write(obj.rule)
      ..writeByte(8)
      ..write(obj.elementRule)
      ..writeByte(9)
      ..write(obj.expression)
      ..writeByte(10)
      ..write(obj.elementExpression)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.elementDescription);
  }
}
