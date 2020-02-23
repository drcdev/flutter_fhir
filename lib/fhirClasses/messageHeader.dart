import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'MessageHeader';
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
  Coding eventCoding;
  @HiveField(12)
  String eventUri;
  @HiveField(13)
  Element elementEventUri;
  @HiveField(14)
  List<MessageHeader_Destination> destination;
  @HiveField(15)
  Reference sender;
  @HiveField(16)
  Reference enterer;
  @HiveField(17)
  Reference author;
  @HiveField(18)
  MessageHeader_Source source;
  @HiveField(19)
  Reference responsible;
  @HiveField(20)
  CodeableConcept reason;
  @HiveField(21)
  MessageHeader_Response response;
  @HiveField(22)
  List<Reference> focus;
  @HiveField(23)
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
  Reference target;
  @HiveField(6)
  String endpoint;
  @HiveField(7)
  Element elementEndpoint;
  @HiveField(8)
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
  String software;
  @HiveField(6)
  Element elementSoftware;
  @HiveField(7)
  String version;
  @HiveField(8)
  Element elementVersion;
  @HiveField(9)
  ContactPoint contact;
  @HiveField(10)
  String endpoint;
  @HiveField(11)
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
  String code;
  @HiveField(6)
  Element elementCode;
  @HiveField(7)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageHeaderAdapter extends TypeAdapter<MessageHeader> {
  @override
  MessageHeader read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageHeader(
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
      eventCoding: fields[11] as Coding,
      eventUri: fields[12] as String,
      elementEventUri: fields[13] as Element,
      destination: (fields[14] as List)?.cast<MessageHeader_Destination>(),
      sender: fields[15] as Reference,
      enterer: fields[16] as Reference,
      author: fields[17] as Reference,
      source: fields[18] as MessageHeader_Source,
      responsible: fields[19] as Reference,
      reason: fields[20] as CodeableConcept,
      response: fields[21] as MessageHeader_Response,
      focus: (fields[22] as List)?.cast<Reference>(),
      definition: fields[23] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MessageHeader obj) {
    writer
      ..writeByte(24)
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
      ..write(obj.eventCoding)
      ..writeByte(12)
      ..write(obj.eventUri)
      ..writeByte(13)
      ..write(obj.elementEventUri)
      ..writeByte(14)
      ..write(obj.destination)
      ..writeByte(15)
      ..write(obj.sender)
      ..writeByte(16)
      ..write(obj.enterer)
      ..writeByte(17)
      ..write(obj.author)
      ..writeByte(18)
      ..write(obj.source)
      ..writeByte(19)
      ..write(obj.responsible)
      ..writeByte(20)
      ..write(obj.reason)
      ..writeByte(21)
      ..write(obj.response)
      ..writeByte(22)
      ..write(obj.focus)
      ..writeByte(23)
      ..write(obj.definition);
  }
}

class MessageHeader_DestinationAdapter
    extends TypeAdapter<MessageHeader_Destination> {
  @override
  MessageHeader_Destination read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageHeader_Destination(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      target: fields[5] as Reference,
      endpoint: fields[6] as String,
      elementEndpoint: fields[7] as Element,
      receiver: fields[8] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MessageHeader_Destination obj) {
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
      ..write(obj.target)
      ..writeByte(6)
      ..write(obj.endpoint)
      ..writeByte(7)
      ..write(obj.elementEndpoint)
      ..writeByte(8)
      ..write(obj.receiver);
  }
}

class MessageHeader_SourceAdapter extends TypeAdapter<MessageHeader_Source> {
  @override
  MessageHeader_Source read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageHeader_Source(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      software: fields[5] as String,
      elementSoftware: fields[6] as Element,
      version: fields[7] as String,
      elementVersion: fields[8] as Element,
      contact: fields[9] as ContactPoint,
      endpoint: fields[10] as String,
      elementEndpoint: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MessageHeader_Source obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.software)
      ..writeByte(6)
      ..write(obj.elementSoftware)
      ..writeByte(7)
      ..write(obj.version)
      ..writeByte(8)
      ..write(obj.elementVersion)
      ..writeByte(9)
      ..write(obj.contact)
      ..writeByte(10)
      ..write(obj.endpoint)
      ..writeByte(11)
      ..write(obj.elementEndpoint);
  }
}

class MessageHeader_ResponseAdapter
    extends TypeAdapter<MessageHeader_Response> {
  @override
  MessageHeader_Response read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageHeader_Response(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as String,
      elementIdentifier: fields[4] as Element,
      code: fields[5] as String,
      elementCode: fields[6] as Element,
      details: fields[7] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MessageHeader_Response obj) {
    writer
      ..writeByte(8)
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
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.elementCode)
      ..writeByte(7)
      ..write(obj.details);
  }
}
