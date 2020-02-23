import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Communication {
  static Future<Communication> newInstance({
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
    List<Identifier> identifier,
    List<String> instantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    List<Reference> basedOn,
    List<Reference> partOf,
    List<Reference> inResponseTo,
    String status,
    Element elementStatus,
    CodeableConcept statusReason,
    List<CodeableConcept> category,
    String priority,
    Element elementPriority,
    List<CodeableConcept> medium,
    Reference subject,
    CodeableConcept topic,
    List<Reference> about,
    Reference encounter,
    DateTime sent,
    Element elementSent,
    DateTime received,
    Element elementReceived,
    List<Reference> recipient,
    Reference sender,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Communication_Payload> payload,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    Communication newCommunication = new Communication(
      resourceType: 'Communication',
      id: id ?? await fhirDb.newResourceId('Communication'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      basedOn: basedOn,
      partOf: partOf,
      inResponseTo: inResponseTo,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      category: category,
      priority: priority,
      elementPriority: elementPriority,
      medium: medium,
      subject: subject,
      topic: topic,
      about: about,
      encounter: encounter,
      sent: sent,
      elementSent: elementSent,
      received: received,
      elementReceived: elementReceived,
      recipient: recipient,
      sender: sender,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      payload: payload,
      note: note,
    );
    newCommunication.meta.createdAt = DateTime.now();
    newCommunication.meta.lastUpdated = newCommunication.meta.createdAt;
    int saved = await fhirDb.saveResource(newCommunication);
    return newCommunication;
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
  String resourceType = 'Communication';
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
  List<Identifier> identifier;
  @HiveField(12)
  List<String> instantiatesCanonical;
  @HiveField(13)
  List<String> instantiatesUri;
  @HiveField(14)
  List<Element> elementInstantiatesUri;
  @HiveField(15)
  List<Reference> basedOn;
  @HiveField(16)
  List<Reference> partOf;
  @HiveField(17)
  List<Reference> inResponseTo;
  @HiveField(18)
  String status;
  @HiveField(19)
  Element elementStatus;
  @HiveField(20)
  CodeableConcept statusReason;
  @HiveField(21)
  List<CodeableConcept> category;
  @HiveField(22)
  String priority;
  @HiveField(23)
  Element elementPriority;
  @HiveField(24)
  List<CodeableConcept> medium;
  @HiveField(25)
  Reference subject;
  @HiveField(26)
  CodeableConcept topic;
  @HiveField(27)
  List<Reference> about;
  @HiveField(28)
  Reference encounter;
  @HiveField(29)
  DateTime sent;
  @HiveField(30)
  Element elementSent;
  @HiveField(31)
  DateTime received;
  @HiveField(32)
  Element elementReceived;
  @HiveField(33)
  List<Reference> recipient;
  @HiveField(34)
  Reference sender;
  @HiveField(35)
  List<CodeableConcept> reasonCode;
  @HiveField(36)
  List<Reference> reasonReference;
  @HiveField(37)
  List<Communication_Payload> payload;
  @HiveField(38)
  List<Annotation> note;

  Communication({
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
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.priority,
    this.elementPriority,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this.elementSent,
    this.received,
    this.elementReceived,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.payload,
    this.note,
  });

  factory Communication.fromJson(Map<String, dynamic> json) =>
      _$CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationToJson(this);
}

class Communication_Payload {
  static Future<Communication_Payload> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String contentString,
    Element elementContentString,
    Attachment contentAttachment,
    Reference contentReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Communication_Payload newCommunication_Payload = new Communication_Payload(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      contentString: contentString,
      elementContentString: elementContentString,
      contentAttachment: contentAttachment,
      contentReference: contentReference,
    );
    return newCommunication_Payload;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String contentString;
  @HiveField(4)
  Element elementContentString;
  @HiveField(5)
  Attachment contentAttachment;
  @HiveField(6)
  Reference contentReference;

  Communication_Payload({
    this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this.elementContentString,
    this.contentAttachment,
    this.contentReference,
  });

  factory Communication_Payload.fromJson(Map<String, dynamic> json) =>
      _$Communication_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$Communication_PayloadToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Communication _$CommunicationFromJson(Map<String, dynamic> json) {
  return Communication(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    inResponseTo: (json['inResponseTo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    medium: (json['medium'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    topic: json['topic'] == null
        ? null
        : CodeableConcept.fromJson(json['topic'] as Map<String, dynamic>),
    about: (json['about'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    sent: json['sent'] == null ? null : DateTime.parse(json['sent'] as String),
    elementSent: json['elementSent'] == null
        ? null
        : Element.fromJson(json['elementSent'] as Map<String, dynamic>),
    received: json['received'] == null
        ? null
        : DateTime.parse(json['received'] as String),
    elementReceived: json['elementReceived'] == null
        ? null
        : Element.fromJson(json['elementReceived'] as Map<String, dynamic>),
    recipient: (json['recipient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sender: json['sender'] == null
        ? null
        : Reference.fromJson(json['sender'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payload: (json['payload'] as List)
        ?.map((e) => e == null
            ? null
            : Communication_Payload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CommunicationToJson(Communication instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'inResponseTo', instance.inResponseTo?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  writeNotNull('medium', instance.medium?.map((e) => e?.toJson())?.toList());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('topic', instance.topic?.toJson());
  writeNotNull('about', instance.about?.map((e) => e?.toJson())?.toList());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('sent', instance.sent?.toIso8601String());
  writeNotNull('elementSent', instance.elementSent?.toJson());
  writeNotNull('received', instance.received?.toIso8601String());
  writeNotNull('elementReceived', instance.elementReceived?.toJson());
  writeNotNull(
      'recipient', instance.recipient?.map((e) => e?.toJson())?.toList());
  writeNotNull('sender', instance.sender?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('payload', instance.payload?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

Communication_Payload _$Communication_PayloadFromJson(
    Map<String, dynamic> json) {
  return Communication_Payload(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentString: json['contentString'] as String,
    elementContentString: json['elementContentString'] == null
        ? null
        : Element.fromJson(
            json['elementContentString'] as Map<String, dynamic>),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Communication_PayloadToJson(
    Communication_Payload instance) {
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
  writeNotNull('contentString', instance.contentString);
  writeNotNull('elementContentString', instance.elementContentString?.toJson());
  writeNotNull('contentAttachment', instance.contentAttachment?.toJson());
  writeNotNull('contentReference', instance.contentReference?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommunicationAdapter extends TypeAdapter<Communication> {
  @override
  Communication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Communication(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      basedOn: (fields[15] as List)?.cast<Reference>(),
      partOf: (fields[16] as List)?.cast<Reference>(),
      inResponseTo: (fields[17] as List)?.cast<Reference>(),
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      statusReason: fields[20] as CodeableConcept,
      category: (fields[21] as List)?.cast<CodeableConcept>(),
      priority: fields[22] as String,
      elementPriority: fields[23] as Element,
      medium: (fields[24] as List)?.cast<CodeableConcept>(),
      subject: fields[25] as Reference,
      topic: fields[26] as CodeableConcept,
      about: (fields[27] as List)?.cast<Reference>(),
      encounter: fields[28] as Reference,
      sent: fields[29] as DateTime,
      elementSent: fields[30] as Element,
      received: fields[31] as DateTime,
      elementReceived: fields[32] as Element,
      recipient: (fields[33] as List)?.cast<Reference>(),
      sender: fields[34] as Reference,
      reasonCode: (fields[35] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[36] as List)?.cast<Reference>(),
      payload: (fields[37] as List)?.cast<Communication_Payload>(),
      note: (fields[38] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Communication obj) {
    writer
      ..writeByte(39)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.partOf)
      ..writeByte(17)
      ..write(obj.inResponseTo)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.statusReason)
      ..writeByte(21)
      ..write(obj.category)
      ..writeByte(22)
      ..write(obj.priority)
      ..writeByte(23)
      ..write(obj.elementPriority)
      ..writeByte(24)
      ..write(obj.medium)
      ..writeByte(25)
      ..write(obj.subject)
      ..writeByte(26)
      ..write(obj.topic)
      ..writeByte(27)
      ..write(obj.about)
      ..writeByte(28)
      ..write(obj.encounter)
      ..writeByte(29)
      ..write(obj.sent)
      ..writeByte(30)
      ..write(obj.elementSent)
      ..writeByte(31)
      ..write(obj.received)
      ..writeByte(32)
      ..write(obj.elementReceived)
      ..writeByte(33)
      ..write(obj.recipient)
      ..writeByte(34)
      ..write(obj.sender)
      ..writeByte(35)
      ..write(obj.reasonCode)
      ..writeByte(36)
      ..write(obj.reasonReference)
      ..writeByte(37)
      ..write(obj.payload)
      ..writeByte(38)
      ..write(obj.note);
  }
}

class Communication_PayloadAdapter extends TypeAdapter<Communication_Payload> {
  @override
  Communication_Payload read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Communication_Payload(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      contentString: fields[3] as String,
      elementContentString: fields[4] as Element,
      contentAttachment: fields[5] as Attachment,
      contentReference: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Communication_Payload obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.contentString)
      ..writeByte(4)
      ..write(obj.elementContentString)
      ..writeByte(5)
      ..write(obj.contentAttachment)
      ..writeByte(6)
      ..write(obj.contentReference);
  }
}
