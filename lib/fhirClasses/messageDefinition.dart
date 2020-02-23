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

class MessageDefinition {
  static Future<MessageDefinition> newInstance({
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
    List<String> replaces,
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
    String base,
    List<String> parent,
    Coding eventCoding,
    String eventUri,
    Element elementEventUri,
    String category,
    Element elementCategory,
    List<MessageDefinition_Focus> focus,
    String responseRequired,
    Element elementResponseRequired,
    List<MessageDefinition_AllowedResponse> allowedResponse,
    List<String> graph,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageDefinition newMessageDefinition = new MessageDefinition(
      resourceType: 'MessageDefinition',
      id: id ?? await fhirDb.newResourceId('MessageDefinition'),
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
      replaces: replaces,
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
      base: base,
      parent: parent,
      eventCoding: eventCoding,
      eventUri: eventUri,
      elementEventUri: elementEventUri,
      category: category,
      elementCategory: elementCategory,
      focus: focus,
      responseRequired: responseRequired,
      elementResponseRequired: elementResponseRequired,
      allowedResponse: allowedResponse,
      graph: graph,
    );
    newMessageDefinition.meta.createdAt = DateTime.now();
    newMessageDefinition.meta.lastUpdated = newMessageDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newMessageDefinition);
    return newMessageDefinition;
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
  String resourceType = 'MessageDefinition';
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
  List<String> replaces;
  @HiveField(21)
  String status;
  @HiveField(22)
  Element elementStatus;
  @HiveField(23)
  bool experimental;
  @HiveField(24)
  Element elementExperimental;
  @HiveField(25)
  DateTime date;
  @HiveField(26)
  Element elementDate;
  @HiveField(27)
  String publisher;
  @HiveField(28)
  Element elementPublisher;
  @HiveField(29)
  List<ContactDetail> contact;
  @HiveField(30)
  String description;
  @HiveField(31)
  Element elementDescription;
  @HiveField(32)
  List<UsageContext> useContext;
  @HiveField(33)
  List<CodeableConcept> jurisdiction;
  @HiveField(34)
  String purpose;
  @HiveField(35)
  Element elementPurpose;
  @HiveField(36)
  String copyright;
  @HiveField(37)
  Element elementCopyright;
  @HiveField(38)
  String base;
  @HiveField(39)
  List<String> parent;
  @HiveField(40)
  Coding eventCoding;
  @HiveField(41)
  String eventUri;
  @HiveField(42)
  Element elementEventUri;
  @HiveField(43)
  String category;
  @HiveField(44)
  Element elementCategory;
  @HiveField(45)
  List<MessageDefinition_Focus> focus;
  @HiveField(46)
  String responseRequired;
  @HiveField(47)
  Element elementResponseRequired;
  @HiveField(48)
  List<MessageDefinition_AllowedResponse> allowedResponse;
  @HiveField(49)
  List<String> graph;

  MessageDefinition({
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
    this.replaces,
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
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.elementEventUri,
    this.category,
    this.elementCategory,
    this.focus,
    this.responseRequired,
    this.elementResponseRequired,
    this.allowedResponse,
    this.graph,
  });

  factory MessageDefinition.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinitionToJson(this);
}

class MessageDefinition_Focus {
  static Future<MessageDefinition_Focus> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String profile,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageDefinition_Focus newMessageDefinition_Focus =
        new MessageDefinition_Focus(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      profile: profile,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
    );
    return newMessageDefinition_Focus;
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
  String profile;
  @HiveField(6)
  int min;
  @HiveField(7)
  Element elementMin;
  @HiveField(8)
  String max;
  @HiveField(9)
  Element elementMax;

  MessageDefinition_Focus({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.profile,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
  });

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinition_FocusFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_FocusToJson(this);
}

class MessageDefinition_AllowedResponse {
  static Future<MessageDefinition_AllowedResponse> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String message,
    String situation,
    Element elementSituation,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageDefinition_AllowedResponse newMessageDefinition_AllowedResponse =
        new MessageDefinition_AllowedResponse(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      message: message,
      situation: situation,
      elementSituation: elementSituation,
    );
    return newMessageDefinition_AllowedResponse;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String message;
  @HiveField(4)
  String situation;
  @HiveField(5)
  Element elementSituation;

  MessageDefinition_AllowedResponse({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.message,
    this.situation,
    this.elementSituation,
  });

  factory MessageDefinition_AllowedResponse.fromJson(
          Map<String, dynamic> json) =>
      _$MessageDefinition_AllowedResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MessageDefinition_AllowedResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDefinition _$MessageDefinitionFromJson(Map<String, dynamic> json) {
  return MessageDefinition(
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
    replaces: (json['replaces'] as List)?.map((e) => e as String)?.toList(),
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
    base: json['base'] as String,
    parent: (json['parent'] as List)?.map((e) => e as String)?.toList(),
    eventCoding: json['eventCoding'] == null
        ? null
        : Coding.fromJson(json['eventCoding'] as Map<String, dynamic>),
    eventUri: json['eventUri'] as String,
    elementEventUri: json['elementEventUri'] == null
        ? null
        : Element.fromJson(json['elementEventUri'] as Map<String, dynamic>),
    category: json['category'] as String,
    elementCategory: json['elementCategory'] == null
        ? null
        : Element.fromJson(json['elementCategory'] as Map<String, dynamic>),
    focus: (json['focus'] as List)
        ?.map((e) => e == null
            ? null
            : MessageDefinition_Focus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responseRequired: json['responseRequired'] as String,
    elementResponseRequired: json['elementResponseRequired'] == null
        ? null
        : Element.fromJson(
            json['elementResponseRequired'] as Map<String, dynamic>),
    allowedResponse: (json['allowedResponse'] as List)
        ?.map((e) => e == null
            ? null
            : MessageDefinition_AllowedResponse.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    graph: (json['graph'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MessageDefinitionToJson(MessageDefinition instance) {
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
  writeNotNull('replaces', instance.replaces);
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
  writeNotNull('base', instance.base);
  writeNotNull('parent', instance.parent);
  writeNotNull('eventCoding', instance.eventCoding?.toJson());
  writeNotNull('eventUri', instance.eventUri);
  writeNotNull('elementEventUri', instance.elementEventUri?.toJson());
  writeNotNull('category', instance.category);
  writeNotNull('elementCategory', instance.elementCategory?.toJson());
  writeNotNull('focus', instance.focus?.map((e) => e?.toJson())?.toList());
  writeNotNull('responseRequired', instance.responseRequired);
  writeNotNull(
      'elementResponseRequired', instance.elementResponseRequired?.toJson());
  writeNotNull('allowedResponse',
      instance.allowedResponse?.map((e) => e?.toJson())?.toList());
  writeNotNull('graph', instance.graph);
  return val;
}

MessageDefinition_Focus _$MessageDefinition_FocusFromJson(
    Map<String, dynamic> json) {
  return MessageDefinition_Focus(
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
    profile: json['profile'] as String,
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageDefinition_FocusToJson(
    MessageDefinition_Focus instance) {
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
  writeNotNull('profile', instance.profile);
  writeNotNull('min', instance.min);
  writeNotNull('elementMin', instance.elementMin?.toJson());
  writeNotNull('max', instance.max);
  writeNotNull('elementMax', instance.elementMax?.toJson());
  return val;
}

MessageDefinition_AllowedResponse _$MessageDefinition_AllowedResponseFromJson(
    Map<String, dynamic> json) {
  return MessageDefinition_AllowedResponse(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    message: json['message'] as String,
    situation: json['situation'] as String,
    elementSituation: json['elementSituation'] == null
        ? null
        : Element.fromJson(json['elementSituation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageDefinition_AllowedResponseToJson(
    MessageDefinition_AllowedResponse instance) {
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
  writeNotNull('message', instance.message);
  writeNotNull('situation', instance.situation);
  writeNotNull('elementSituation', instance.elementSituation?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageDefinitionAdapter extends TypeAdapter<MessageDefinition> {
  @override
  MessageDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageDefinition(
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
      replaces: (fields[20] as List)?.cast<String>(),
      status: fields[21] as String,
      elementStatus: fields[22] as Element,
      experimental: fields[23] as bool,
      elementExperimental: fields[24] as Element,
      date: fields[25] as DateTime,
      elementDate: fields[26] as Element,
      publisher: fields[27] as String,
      elementPublisher: fields[28] as Element,
      contact: (fields[29] as List)?.cast<ContactDetail>(),
      description: fields[30] as String,
      elementDescription: fields[31] as Element,
      useContext: (fields[32] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[33] as List)?.cast<CodeableConcept>(),
      purpose: fields[34] as String,
      elementPurpose: fields[35] as Element,
      copyright: fields[36] as String,
      elementCopyright: fields[37] as Element,
      base: fields[38] as String,
      parent: (fields[39] as List)?.cast<String>(),
      eventCoding: fields[40] as Coding,
      eventUri: fields[41] as String,
      elementEventUri: fields[42] as Element,
      category: fields[43] as String,
      elementCategory: fields[44] as Element,
      focus: (fields[45] as List)?.cast<MessageDefinition_Focus>(),
      responseRequired: fields[46] as String,
      elementResponseRequired: fields[47] as Element,
      allowedResponse:
          (fields[48] as List)?.cast<MessageDefinition_AllowedResponse>(),
      graph: (fields[49] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MessageDefinition obj) {
    writer
      ..writeByte(50)
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
      ..write(obj.replaces)
      ..writeByte(21)
      ..write(obj.status)
      ..writeByte(22)
      ..write(obj.elementStatus)
      ..writeByte(23)
      ..write(obj.experimental)
      ..writeByte(24)
      ..write(obj.elementExperimental)
      ..writeByte(25)
      ..write(obj.date)
      ..writeByte(26)
      ..write(obj.elementDate)
      ..writeByte(27)
      ..write(obj.publisher)
      ..writeByte(28)
      ..write(obj.elementPublisher)
      ..writeByte(29)
      ..write(obj.contact)
      ..writeByte(30)
      ..write(obj.description)
      ..writeByte(31)
      ..write(obj.elementDescription)
      ..writeByte(32)
      ..write(obj.useContext)
      ..writeByte(33)
      ..write(obj.jurisdiction)
      ..writeByte(34)
      ..write(obj.purpose)
      ..writeByte(35)
      ..write(obj.elementPurpose)
      ..writeByte(36)
      ..write(obj.copyright)
      ..writeByte(37)
      ..write(obj.elementCopyright)
      ..writeByte(38)
      ..write(obj.base)
      ..writeByte(39)
      ..write(obj.parent)
      ..writeByte(40)
      ..write(obj.eventCoding)
      ..writeByte(41)
      ..write(obj.eventUri)
      ..writeByte(42)
      ..write(obj.elementEventUri)
      ..writeByte(43)
      ..write(obj.category)
      ..writeByte(44)
      ..write(obj.elementCategory)
      ..writeByte(45)
      ..write(obj.focus)
      ..writeByte(46)
      ..write(obj.responseRequired)
      ..writeByte(47)
      ..write(obj.elementResponseRequired)
      ..writeByte(48)
      ..write(obj.allowedResponse)
      ..writeByte(49)
      ..write(obj.graph);
  }
}

class MessageDefinition_FocusAdapter
    extends TypeAdapter<MessageDefinition_Focus> {
  @override
  MessageDefinition_Focus read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageDefinition_Focus(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as String,
      elementCode: fields[4] as Element,
      profile: fields[5] as String,
      min: fields[6] as int,
      elementMin: fields[7] as Element,
      max: fields[8] as String,
      elementMax: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MessageDefinition_Focus obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.profile)
      ..writeByte(6)
      ..write(obj.min)
      ..writeByte(7)
      ..write(obj.elementMin)
      ..writeByte(8)
      ..write(obj.max)
      ..writeByte(9)
      ..write(obj.elementMax);
  }
}

class MessageDefinition_AllowedResponseAdapter
    extends TypeAdapter<MessageDefinition_AllowedResponse> {
  @override
  MessageDefinition_AllowedResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageDefinition_AllowedResponse(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      message: fields[3] as String,
      situation: fields[4] as String,
      elementSituation: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MessageDefinition_AllowedResponse obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.message)
      ..writeByte(4)
      ..write(obj.situation)
      ..writeByte(5)
      ..write(obj.elementSituation);
  }
}
