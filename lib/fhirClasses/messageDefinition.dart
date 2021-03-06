import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'MessageDefinition';
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
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  List<String> replaces;
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
  String base;
  List<String> parent;
  Coding eventCoding;
  String eventUri;
  Element elementEventUri;
  String category;
  Element elementCategory;
  List<MessageDefinition_Focus> focus;
  String responseRequired;
  Element elementResponseRequired;
  List<MessageDefinition_AllowedResponse> allowedResponse;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String profile;
  int min;
  Element elementMin;
  String max;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String message;
  String situation;
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
