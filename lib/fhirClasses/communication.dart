import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true)
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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'Communication';
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
  List<Identifier> identifier;
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> elementInstantiatesUri;
  List<Reference> basedOn;
  List<Reference> partOf;
  List<Reference> inResponseTo;
  String status;
  Element elementStatus;
  CodeableConcept statusReason;
  List<CodeableConcept> category;
  String priority;
  Element elementPriority;
  List<CodeableConcept> medium;
  Reference subject;
  CodeableConcept topic;
  List<Reference> about;
  Reference encounter;
  DateTime sent;
  Element elementSent;
  DateTime received;
  Element elementReceived;
  List<Reference> recipient;
  Reference sender;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Communication_Payload> payload;
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

@JsonSerializable(explicitToJson: true)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String contentString;
  Element elementContentString;
  Attachment contentAttachment;
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

Map<String, dynamic> _$CommunicationToJson(Communication instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'inResponseTo': instance.inResponseTo?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'medium': instance.medium?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'topic': instance.topic?.toJson(),
      'about': instance.about?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.toJson(),
      'sent': instance.sent?.toIso8601String(),
      'elementSent': instance.elementSent?.toJson(),
      'received': instance.received?.toIso8601String(),
      'elementReceived': instance.elementReceived?.toJson(),
      'recipient': instance.recipient?.map((e) => e?.toJson())?.toList(),
      'sender': instance.sender?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'payload': instance.payload?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

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
        Communication_Payload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentString': instance.contentString,
      'elementContentString': instance.elementContentString?.toJson(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };
