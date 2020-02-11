import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 151)
class CommunicationRequest {

  //  This is a CommunicationRequest resource
  @HiveField(0)
  final String resourceType= 'CommunicationRequest';

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

  //  Business identifiers assigned to this communication request by the
  // performer or other systems which remain constant as the resource is
  // updated and propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  A plan or proposal that is fulfilled in whole or in part by this
  // request.
  @HiveField(12)
  List<Reference> basedOn;

  //  Completed or terminated request(s) whose function is taken by this new
  // request.
  @HiveField(13)
  List<Reference> replaces;

  //  A shared identifier common to all requests that were authorized more
  // or less simultaneously by a single author, representing the identifier
  // of the requisition, prescription or similar form.
  @HiveField(14)
  Identifier groupIdentifier;

  //  The status of the proposal or order.
  @HiveField(15)
  String status;

  //  Extensions for status
  @HiveField(16)
  Element elementStatus;

  //  Captures the reason for the current state of the CommunicationRequest.
  @HiveField(17)
  CodeableConcept statusReason;

  //  The type of message to be sent such as alert, notification, reminder,
  // instruction, etc.
  @HiveField(18)
  List<CodeableConcept> category;

  //  Characterizes how quickly the proposed act must be initiated. Includes
  // concepts such as stat, urgent, routine.
  @HiveField(19)
  String priority;

  //  Extensions for priority
  @HiveField(20)
  Element elementPriority;

  //  If true indicates that the CommunicationRequest is asking for the
  // specified action to *not* occur.
  @HiveField(21)
  bool doNotPerform;

  //  Extensions for doNotPerform
  @HiveField(22)
  Element elementDoNotPerform;

  //  A channel that was used for this communication (e.g. email, fax).
  @HiveField(23)
  List<CodeableConcept> medium;

  //  The patient or group that is the focus of this communication request.
  @HiveField(24)
  Reference subject;

  //  Other resources that pertain to this communication request and to
  // which this communication request should be associated.
  @HiveField(25)
  List<Reference> about;

  //  The Encounter during which this CommunicationRequest was created or to
  // which the creation of this record is tightly associated.
  @HiveField(26)
  Reference encounter;

  //  Text, attachment(s), or resource(s) to be communicated to the
  // recipient.
  @HiveField(27)
  List<CommunicationRequest_Payload> payload;

  //  The time when this communication is to occur.
  @HiveField(28)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(29)
  Element elementOccurrenceDateTime;

  //  The time when this communication is to occur.
  @HiveField(30)
  Period occurrencePeriod;

  //  For draft requests, indicates the date of initial creation.  For
  // requests with other statuses, indicates the date of activation.
  @HiveField(31)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(32)
  Element elementAuthoredOn;

  //  The device, individual, or organization who initiated the request and
  // has responsibility for its activation.
  @HiveField(33)
  Reference requester;

  //  The entity (e.g. person, organization, clinical information system,
  // device, group, or care team) which is the intended target of the
  // communication.
  @HiveField(34)
  List<Reference> recipient;

  //  The entity (e.g. person, organization, clinical information system, or
  // device) which is to be the source of the communication.
  @HiveField(35)
  Reference sender;

  //  Describes why the request is being made in coded or textual form.
  @HiveField(36)
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this request.
  @HiveField(37)
  List<Reference> reasonReference;

  //  Comments made about the request by the requester, sender, recipient,
  // subject or other participants.
  @HiveField(38)
  List<Annotation> note;

CommunicationRequest(
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
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.note
    });

  factory CommunicationRequest.fromJson(Map<String, dynamic> json) => _$CommunicationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 152)
class CommunicationRequest_Payload {

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

  //  The communicated content (or for multi-part communications, one
  // portion of the communication).
  @HiveField(3)
  String contentString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for contentString
  @HiveField(4)
  Element elementContentString;

  //  The communicated content (or for multi-part communications, one
  // portion of the communication).
  @HiveField(5)
  Attachment contentAttachment;

  //  The communicated content (or for multi-part communications, one
  // portion of the communication).
  @HiveField(6)
  Reference contentReference;

CommunicationRequest_Payload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this.elementContentString,
    this.contentAttachment,
    this.contentReference
    });

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) => _$CommunicationRequest_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequest_PayloadToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommunicationRequestAdapter extends TypeAdapter<CommunicationRequest> {
  @override
  final typeId = 151;

  @override
  CommunicationRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommunicationRequest(
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      replaces: (fields[13] as List)?.cast<Reference>(),
      groupIdentifier: fields[14] as Identifier,
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      statusReason: fields[17] as CodeableConcept,
      category: (fields[18] as List)?.cast<CodeableConcept>(),
      priority: fields[19] as String,
      elementPriority: fields[20] as Element,
      doNotPerform: fields[21] as bool,
      elementDoNotPerform: fields[22] as Element,
      medium: (fields[23] as List)?.cast<CodeableConcept>(),
      subject: fields[24] as Reference,
      about: (fields[25] as List)?.cast<Reference>(),
      encounter: fields[26] as Reference,
      payload: (fields[27] as List)?.cast<CommunicationRequest_Payload>(),
      occurrenceDateTime: fields[28] as String,
      elementOccurrenceDateTime: fields[29] as Element,
      occurrencePeriod: fields[30] as Period,
      authoredOn: fields[31] as DateTime,
      elementAuthoredOn: fields[32] as Element,
      requester: fields[33] as Reference,
      recipient: (fields[34] as List)?.cast<Reference>(),
      sender: fields[35] as Reference,
      reasonCode: (fields[36] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[37] as List)?.cast<Reference>(),
      note: (fields[38] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, CommunicationRequest obj) {
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
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.replaces)
      ..writeByte(14)
      ..write(obj.groupIdentifier)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.statusReason)
      ..writeByte(18)
      ..write(obj.category)
      ..writeByte(19)
      ..write(obj.priority)
      ..writeByte(20)
      ..write(obj.elementPriority)
      ..writeByte(21)
      ..write(obj.doNotPerform)
      ..writeByte(22)
      ..write(obj.elementDoNotPerform)
      ..writeByte(23)
      ..write(obj.medium)
      ..writeByte(24)
      ..write(obj.subject)
      ..writeByte(25)
      ..write(obj.about)
      ..writeByte(26)
      ..write(obj.encounter)
      ..writeByte(27)
      ..write(obj.payload)
      ..writeByte(28)
      ..write(obj.occurrenceDateTime)
      ..writeByte(29)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(30)
      ..write(obj.occurrencePeriod)
      ..writeByte(31)
      ..write(obj.authoredOn)
      ..writeByte(32)
      ..write(obj.elementAuthoredOn)
      ..writeByte(33)
      ..write(obj.requester)
      ..writeByte(34)
      ..write(obj.recipient)
      ..writeByte(35)
      ..write(obj.sender)
      ..writeByte(36)
      ..write(obj.reasonCode)
      ..writeByte(37)
      ..write(obj.reasonReference)
      ..writeByte(38)
      ..write(obj.note);
  }
}

class CommunicationRequest_PayloadAdapter
    extends TypeAdapter<CommunicationRequest_Payload> {
  @override
  final typeId = 152;

  @override
  CommunicationRequest_Payload read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommunicationRequest_Payload(
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
  void write(BinaryWriter writer, CommunicationRequest_Payload obj) {
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

CommunicationRequest _$CommunicationRequestFromJson(Map<String, dynamic> json) {
  return CommunicationRequest(
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    replaces: (json['replaces'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groupIdentifier: json['groupIdentifier'] == null
        ? null
        : Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>),
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
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    medium: (json['medium'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    about: (json['about'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    payload: (json['payload'] as List)
        ?.map((e) => e == null
            ? null
            : CommunicationRequest_Payload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
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
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CommunicationRequestToJson(
        CommunicationRequest instance) =>
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
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'replaces': instance.replaces?.map((e) => e?.toJson())?.toList(),
      'groupIdentifier': instance.groupIdentifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'medium': instance.medium?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'about': instance.about?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.toJson(),
      'payload': instance.payload?.map((e) => e?.toJson())?.toList(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'recipient': instance.recipient?.map((e) => e?.toJson())?.toList(),
      'sender': instance.sender?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

CommunicationRequest_Payload _$CommunicationRequest_PayloadFromJson(
    Map<String, dynamic> json) {
  return CommunicationRequest_Payload(
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

Map<String, dynamic> _$CommunicationRequest_PayloadToJson(
        CommunicationRequest_Payload instance) =>
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
