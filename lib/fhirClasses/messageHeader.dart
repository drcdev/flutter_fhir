import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MessageHeader {
  static Future<MessageHeader> newInstance({
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
    Coding eventCoding,
    String eventUri,
    Element elementEventUri,
    List<MessageHeader_Destination> destination,
    Reference sender,
    Reference enterer,
    Reference author,
    MessageHeader_Source source,
    Reference responsible,
    CodeableConcept reason,
    MessageHeader_Response response,
    List<Reference> focus,
    String definition,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageHeader newMessageHeader = new MessageHeader(
      resourceType: 'MessageHeader',
      id: id ?? await fhirDb.newResourceId('MessageHeader'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      eventCoding: eventCoding,
      eventUri: eventUri,
      elementEventUri: elementEventUri,
      destination: destination,
      sender: sender,
      enterer: enterer,
      author: author,
      source: source,
      responsible: responsible,
      reason: reason,
      response: response,
      focus: focus,
      definition: definition,
    );
    newMessageHeader.meta.createdAt = DateTime.now();
    newMessageHeader.meta.lastUpdated = newMessageHeader.meta.createdAt;
    int saved = await fhirDb.saveResource(newMessageHeader);
    return newMessageHeader;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'MessageHeader';
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
  Coding eventCoding;
  String eventUri;
  Element elementEventUri;
  List<MessageHeader_Destination> destination;
  Reference sender;
  Reference enterer;
  Reference author;
  MessageHeader_Source source;
  Reference responsible;
  CodeableConcept reason;
  MessageHeader_Response response;
  List<Reference> focus;
  String definition;

  MessageHeader({
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
    this.eventCoding,
    this.eventUri,
    this.elementEventUri,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    @required this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
  });

  factory MessageHeader.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeaderToJson(this);
}

class MessageHeader_Destination {
  static Future<MessageHeader_Destination> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    Reference target,
    String endpoint,
    Element elementEndpoint,
    Reference receiver,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageHeader_Destination newMessageHeader_Destination =
        new MessageHeader_Destination(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      target: target,
      endpoint: endpoint,
      elementEndpoint: elementEndpoint,
      receiver: receiver,
    );
    return newMessageHeader_Destination;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  Reference target;
  String endpoint;
  Element elementEndpoint;
  Reference receiver;

  MessageHeader_Destination({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.target,
    this.endpoint,
    this.elementEndpoint,
    this.receiver,
  });

  factory MessageHeader_Destination.fromJson(Map<String, dynamic> json) =>
      _$MessageHeader_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_DestinationToJson(this);
}

class MessageHeader_Source {
  static Future<MessageHeader_Source> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String software,
    Element elementSoftware,
    String version,
    Element elementVersion,
    ContactPoint contact,
    String endpoint,
    Element elementEndpoint,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageHeader_Source newMessageHeader_Source = new MessageHeader_Source(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      software: software,
      elementSoftware: elementSoftware,
      version: version,
      elementVersion: elementVersion,
      contact: contact,
      endpoint: endpoint,
      elementEndpoint: elementEndpoint,
    );
    return newMessageHeader_Source;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String software;
  Element elementSoftware;
  String version;
  Element elementVersion;
  ContactPoint contact;
  String endpoint;
  Element elementEndpoint;

  MessageHeader_Source({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.software,
    this.elementSoftware,
    this.version,
    this.elementVersion,
    this.contact,
    this.endpoint,
    this.elementEndpoint,
  });

  factory MessageHeader_Source.fromJson(Map<String, dynamic> json) =>
      _$MessageHeader_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_SourceToJson(this);
}

class MessageHeader_Response {
  static Future<MessageHeader_Response> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String identifier,
    Element elementIdentifier,
    String code,
    Element elementCode,
    Reference details,
  }) async {
    var fhirDb = new DatabaseHelper();
    MessageHeader_Response newMessageHeader_Response =
        new MessageHeader_Response(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      elementIdentifier: elementIdentifier,
      code: code,
      elementCode: elementCode,
      details: details,
    );
    return newMessageHeader_Response;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identifier;
  Element elementIdentifier;
  String code;
  Element elementCode;
  Reference details;

  MessageHeader_Response({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.elementIdentifier,
    this.code,
    this.elementCode,
    this.details,
  });

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) =>
      _$MessageHeader_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_ResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageHeader _$MessageHeaderFromJson(Map<String, dynamic> json) {
  return MessageHeader(
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
    eventCoding: json['eventCoding'] == null
        ? null
        : Coding.fromJson(json['eventCoding'] as Map<String, dynamic>),
    eventUri: json['eventUri'] as String,
    elementEventUri: json['elementEventUri'] == null
        ? null
        : Element.fromJson(json['elementEventUri'] as Map<String, dynamic>),
    destination: (json['destination'] as List)
        ?.map((e) => e == null
            ? null
            : MessageHeader_Destination.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sender: json['sender'] == null
        ? null
        : Reference.fromJson(json['sender'] as Map<String, dynamic>),
    enterer: json['enterer'] == null
        ? null
        : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : MessageHeader_Source.fromJson(json['source'] as Map<String, dynamic>),
    responsible: json['responsible'] == null
        ? null
        : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : MessageHeader_Response.fromJson(
            json['response'] as Map<String, dynamic>),
    focus: (json['focus'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    definition: json['definition'] as String,
  );
}

Map<String, dynamic> _$MessageHeaderToJson(MessageHeader instance) {
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
  writeNotNull('eventCoding', instance.eventCoding?.toJson());
  writeNotNull('eventUri', instance.eventUri);
  writeNotNull('elementEventUri', instance.elementEventUri?.toJson());
  writeNotNull(
      'destination', instance.destination?.map((e) => e?.toJson())?.toList());
  writeNotNull('sender', instance.sender?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  writeNotNull('response', instance.response?.toJson());
  writeNotNull('focus', instance.focus?.map((e) => e?.toJson())?.toList());
  writeNotNull('definition', instance.definition);
  return val;
}

MessageHeader_Destination _$MessageHeader_DestinationFromJson(
    Map<String, dynamic> json) {
  return MessageHeader_Destination(
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
    target: json['target'] == null
        ? null
        : Reference.fromJson(json['target'] as Map<String, dynamic>),
    endpoint: json['endpoint'] as String,
    elementEndpoint: json['elementEndpoint'] == null
        ? null
        : Element.fromJson(json['elementEndpoint'] as Map<String, dynamic>),
    receiver: json['receiver'] == null
        ? null
        : Reference.fromJson(json['receiver'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageHeader_DestinationToJson(
    MessageHeader_Destination instance) {
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
  writeNotNull('target', instance.target?.toJson());
  writeNotNull('endpoint', instance.endpoint);
  writeNotNull('elementEndpoint', instance.elementEndpoint?.toJson());
  writeNotNull('receiver', instance.receiver?.toJson());
  return val;
}

MessageHeader_Source _$MessageHeader_SourceFromJson(Map<String, dynamic> json) {
  return MessageHeader_Source(
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
    software: json['software'] as String,
    elementSoftware: json['elementSoftware'] == null
        ? null
        : Element.fromJson(json['elementSoftware'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    contact: json['contact'] == null
        ? null
        : ContactPoint.fromJson(json['contact'] as Map<String, dynamic>),
    endpoint: json['endpoint'] as String,
    elementEndpoint: json['elementEndpoint'] == null
        ? null
        : Element.fromJson(json['elementEndpoint'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageHeader_SourceToJson(
    MessageHeader_Source instance) {
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
  writeNotNull('software', instance.software);
  writeNotNull('elementSoftware', instance.elementSoftware?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('contact', instance.contact?.toJson());
  writeNotNull('endpoint', instance.endpoint);
  writeNotNull('elementEndpoint', instance.elementEndpoint?.toJson());
  return val;
}

MessageHeader_Response _$MessageHeader_ResponseFromJson(
    Map<String, dynamic> json) {
  return MessageHeader_Response(
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
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    details: json['details'] == null
        ? null
        : Reference.fromJson(json['details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageHeader_ResponseToJson(
    MessageHeader_Response instance) {
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
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('details', instance.details?.toJson());
  return val;
}
