import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 149)
class Communication {

  //  This is a Communication resource
  @HiveField(0)
  final String resourceType= 'Communication';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Business identifiers assigned to this communication by the performer
  // or other systems which remain constant as the resource is updated and
  // propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this
  // Communication.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this Communication.
  @HiveField(13)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  List<Element> elementInstantiatesUri;

  //  An order, proposal or plan fulfilled in whole or in part by this
  // Communication.
  @HiveField(15)
  List<Reference> basedOn;

  //  Part of this action.
  @HiveField(16)
  List<Reference> partOf;

  //  Prior communication that this communication is in response to.
  @HiveField(17)
  List<Reference> inResponseTo;

  //  The status of the transmission.
  @HiveField(18)
  String status;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  Captures the reason for the current state of the Communication.
  @HiveField(20)
  CodeableConcept statusReason;

  //  The type of message conveyed such as alert, notification, reminder,
  // instruction, etc.
  @HiveField(21)
  List<CodeableConcept> category;

  //  Characterizes how quickly the planned or in progress communication
  // must be addressed. Includes concepts such as stat, urgent, routine.
  @HiveField(22)
  String priority;

  //  Extensions for priority
  @HiveField(23)
  Element elementPriority;

  //  A channel that was used for this communication (e.g. email, fax).
  @HiveField(24)
  List<CodeableConcept> medium;

  //  The patient or group that was the focus of this communication.
  @HiveField(25)
  Reference subject;

  //  Description of the purpose/content, similar to a subject line in an
  // email.
  @HiveField(26)
  CodeableConcept topic;

  //  Other resources that pertain to this communication and to which this
  // communication should be associated.
  @HiveField(27)
  List<Reference> about;

  //  The Encounter during which this Communication was created or to which
  // the creation of this record is tightly associated.
  @HiveField(28)
  Reference encounter;

  //  The time when this communication was sent.
  @HiveField(29)
  DateTime sent;

  //  Extensions for sent
  @HiveField(30)
  Element elementSent;

  //  The time when this communication arrived at the destination.
  @HiveField(31)
  DateTime received;

  //  Extensions for received
  @HiveField(32)
  Element elementReceived;

  //  The entity (e.g. person, organization, clinical information system,
  // care team or device) which was the target of the communication. If
  // receipts need to be tracked by an individual, a separate resource
  // instance will need to be created for each recipient.  Multiple
  // recipient communications are intended where either receipts are not
  // tracked (e.g. a mass mail-out) or a receipt is captured in aggregate
  // (all emails confirmed received by a particular time).
  @HiveField(33)
  List<Reference> recipient;

  //  The entity (e.g. person, organization, clinical information system, or
  // device) which was the source of the communication.
  @HiveField(34)
  Reference sender;

  //  The reason or justification for the communication.
  @HiveField(35)
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this
  // communication.
  @HiveField(36)
  List<Reference> reasonReference;

  //  Text, attachment(s), or resource(s) that was communicated to the
  // recipient.
  @HiveField(37)
  List<Communication_Payload> payload;

  //  Additional notes or commentary about the communication by the sender,
  // receiver or other interested parties.
  @HiveField(38)
  List<Annotation> note;

Communication(
  {this.id,
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
    this.note
    });

  factory Communication.fromJson(Map<String, dynamic> json) => _$CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 150)
class Communication_Payload {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A communicated content (or for multi-part communications, one portion
  // of the communication).
  @HiveField(3)
  String contentString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for contentString
  @HiveField(4)
  Element elementContentString;

  //  A communicated content (or for multi-part communications, one portion
  // of the communication).
  @HiveField(5)
  Attachment contentAttachment;

  //  A communicated content (or for multi-part communications, one portion
  // of the communication).
  @HiveField(6)
  Reference contentReference;

Communication_Payload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this.elementContentString,
    this.contentAttachment,
    this.contentReference
    });

  factory Communication_Payload.fromJson(Map<String, dynamic> json) => _$Communication_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$Communication_PayloadToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommunicationAdapter extends TypeAdapter<Communication> {
  @override
  final typeId = 149;

  @override
  Communication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Communication(
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
  final typeId = 150;

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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Communication _$CommunicationFromJson(Map<String, dynamic> json) {
  return Communication(
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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
