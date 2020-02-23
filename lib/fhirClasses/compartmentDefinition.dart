import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class CompartmentDefinition {
  static Future<CompartmentDefinition> newInstance({
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
    String purpose,
    Element elementPurpose,
    String code,
    Element elementCode,
    bool search,
    Element elementSearch,
    List<CompartmentDefinition_Resource> resource,
  }) async {
    var fhirDb = new DatabaseHelper();
    CompartmentDefinition newCompartmentDefinition = new CompartmentDefinition(
      resourceType: 'CompartmentDefinition',
      id: id ?? await fhirDb.newResourceId('CompartmentDefinition'),
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
      purpose: purpose,
      elementPurpose: elementPurpose,
      code: code,
      elementCode: elementCode,
      search: search,
      elementSearch: elementSearch,
      resource: resource,
    );
    newCompartmentDefinition.meta.createdAt = DateTime.now();
    newCompartmentDefinition.meta.lastUpdated =
        newCompartmentDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newCompartmentDefinition);
    return newCompartmentDefinition;
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
  String resourceType = 'CompartmentDefinition';
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
  String purpose;
  @HiveField(30)
  Element elementPurpose;
  @HiveField(31)
  String code;
  @HiveField(32)
  Element elementCode;
  @HiveField(33)
  bool search;
  @HiveField(34)
  Element elementSearch;
  @HiveField(35)
  List<CompartmentDefinition_Resource> resource;

  CompartmentDefinition({
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
    this.purpose,
    this.elementPurpose,
    this.code,
    this.elementCode,
    this.search,
    this.elementSearch,
    this.resource,
  });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinitionToJson(this);
}

class CompartmentDefinition_Resource {
  static Future<CompartmentDefinition_Resource> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    List<String> param,
    List<Element> elementParam,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CompartmentDefinition_Resource newCompartmentDefinition_Resource =
        new CompartmentDefinition_Resource(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      param: param,
      elementParam: elementParam,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newCompartmentDefinition_Resource;
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
  List<String> param;
  @HiveField(6)
  List<Element> elementParam;
  @HiveField(7)
  String documentation;
  @HiveField(8)
  Element elementDocumentation;

  CompartmentDefinition_Resource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.param,
    this.elementParam,
    this.documentation,
    this.elementDocumentation,
  });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinition_ResourceToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompartmentDefinition _$CompartmentDefinitionFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition(
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    search: json['search'] as bool,
    elementSearch: json['elementSearch'] == null
        ? null
        : Element.fromJson(json['elementSearch'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : CompartmentDefinition_Resource.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompartmentDefinitionToJson(
    CompartmentDefinition instance) {
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
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('search', instance.search);
  writeNotNull('elementSearch', instance.elementSearch?.toJson());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  return val;
}

CompartmentDefinition_Resource _$CompartmentDefinition_ResourceFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition_Resource(
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
    param: (json['param'] as List)?.map((e) => e as String)?.toList(),
    elementParam: (json['elementParam'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompartmentDefinition_ResourceToJson(
    CompartmentDefinition_Resource instance) {
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
  writeNotNull('param', instance.param);
  writeNotNull(
      'elementParam', instance.elementParam?.map((e) => e?.toJson())?.toList());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompartmentDefinitionAdapter extends TypeAdapter<CompartmentDefinition> {
  @override
  CompartmentDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompartmentDefinition(
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
      purpose: fields[29] as String,
      elementPurpose: fields[30] as Element,
      code: fields[31] as String,
      elementCode: fields[32] as Element,
      search: fields[33] as bool,
      elementSearch: fields[34] as Element,
      resource: (fields[35] as List)?.cast<CompartmentDefinition_Resource>(),
    );
  }

  @override
  void write(BinaryWriter writer, CompartmentDefinition obj) {
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
      ..write(obj.purpose)
      ..writeByte(30)
      ..write(obj.elementPurpose)
      ..writeByte(31)
      ..write(obj.code)
      ..writeByte(32)
      ..write(obj.elementCode)
      ..writeByte(33)
      ..write(obj.search)
      ..writeByte(34)
      ..write(obj.elementSearch)
      ..writeByte(35)
      ..write(obj.resource);
  }
}

class CompartmentDefinition_ResourceAdapter
    extends TypeAdapter<CompartmentDefinition_Resource> {
  @override
  CompartmentDefinition_Resource read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompartmentDefinition_Resource(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      param: (fields[5] as List)?.cast<String>(),
      elementParam: (fields[6] as List)?.cast<Element>(),
      documentation: fields[7] as String,
      elementDocumentation: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CompartmentDefinition_Resource obj) {
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
      ..write(obj.param)
      ..writeByte(6)
      ..write(obj.elementParam)
      ..writeByte(7)
      ..write(obj.documentation)
      ..writeByte(8)
      ..write(obj.elementDocumentation);
  }
}
