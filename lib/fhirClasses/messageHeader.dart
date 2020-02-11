import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 430)
class MessageHeader {

  //  This is a MessageHeader resource
  @HiveField(0)
  final String resourceType= 'MessageHeader';

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

  //  Code that identifies the event this message represents and connects it
  // with its definition. Events defined as part of the FHIR specification
  // have the system value
  // "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively
  // uri to the EventDefinition.
  @HiveField(11)
  Coding eventCoding;

  //  Code that identifies the event this message represents and connects it
  // with its definition. Events defined as part of the FHIR specification
  // have the system value
  // "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively
  // uri to the EventDefinition.
  @HiveField(12)
  String eventUri; //  pattern: ^\S*$

  //  Extensions for eventUri
  @HiveField(13)
  Element elementEventUri;

  //  The destination application which the message is intended for.
  @HiveField(14)
  List<MessageHeader_Destination> destination;

  //  Identifies the sending system to allow the use of a trust
  // relationship.
  @HiveField(15)
  Reference sender;

  //  The person or device that performed the data entry leading to this
  // message. When there is more than one candidate, pick the most proximal
  // to the message. Can provide other enterers in extensions.
  @HiveField(16)
  Reference enterer;

  //  The logical author of the message - the person or device that decided
  // the described event should happen. When there is more than one
  // candidate, pick the most proximal to the MessageHeader. Can provide
  // other authors in extensions.
  @HiveField(17)
  Reference author;

  //  The source application from which this message originated.
  @HiveField(18)
  MessageHeader_Source source;

  //  The person or organization that accepts overall responsibility for the
  // contents of the message. The implication is that the message event
  // happened under the policies of the responsible party.
  @HiveField(19)
  Reference responsible;

  //  Coded indication of the cause for the event - indicates  a reason for
  // the occurrence of the event that is a focus of this message.
  @HiveField(20)
  CodeableConcept reason;

  //  Information about the message that this message is a response to. 
  // Only present if this message is a response.
  @HiveField(21)
  MessageHeader_Response response;

  //  The actual data of the message - a reference to the root/focus class
  // of the event.
  @HiveField(22)
  List<Reference> focus;

  //  Permanent link to the MessageDefinition for this message.
  @HiveField(23)
  String definition;

MessageHeader(
  this.source,
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
    this.eventCoding,
    this.eventUri,
    this.elementEventUri,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition
    });

  factory MessageHeader.fromJson(Map<String, dynamic> json) => _$MessageHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Destination {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Human-readable name for the target system.
  String name;

  //  Extensions for name
  Element elementName;

  //  Identifies the target end system in situations where the initial
  // message transmission is to an intermediary system.
  Reference target;

  //  Indicates where the message should be routed to.
  String endpoint;

  //  Extensions for endpoint
  Element elementEndpoint;

  //  Allows data conveyed by a message to be addressed to a particular
  // person or department when routing to a specific application isn't
  // sufficient.
  Reference receiver;

MessageHeader_Destination(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.target,
    this.endpoint,
    this.elementEndpoint,
    this.receiver
    });

  factory MessageHeader_Destination.fromJson(Map<String, dynamic> json) => _$MessageHeader_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Source {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Human-readable name for the source system.
  String name;

  //  Extensions for name
  Element elementName;

  //  May include configuration or other information useful in debugging.
  String software;

  //  Extensions for software
  Element elementSoftware;

  //  Can convey versions of multiple systems in situations where a message
  // passes through multiple hands.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  An e-mail, phone, website or other contact point to use to resolve
  // issues with message communications.
  ContactPoint contact;

  //  Identifies the routing target to send acknowledgements to.
  String endpoint;

  //  Extensions for endpoint
  Element elementEndpoint;

MessageHeader_Source(
  {this.id,
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
    this.elementEndpoint
    });

  factory MessageHeader_Source.fromJson(Map<String, dynamic> json) => _$MessageHeader_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Response {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The MessageHeader.id of the message to which this message is a
  // response.
  String identifier;

  //  Extensions for identifier
  Element elementIdentifier;

  //  Code that identifies the type of response to the message - whether it
  // was successful or not, and whether it should be resent or not.
  String code; // <code> enum: ok/transient-error/fatal-error;

  //  Extensions for code
  Element elementCode;

  //  Full details of any issues found in the message.
  Reference details;

MessageHeader_Response(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.elementIdentifier,
    this.code,
    this.elementCode,
    this.details
    });

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) => _$MessageHeader_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_ResponseToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageHeaderAdapter extends TypeAdapter<MessageHeader> {
  @override
  final typeId = 430;

  @override
  MessageHeader read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageHeader(
      fields[18] as MessageHeader_Source,
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageHeader _$MessageHeaderFromJson(Map<String, dynamic> json) {
  return MessageHeader(
    json['source'] == null
        ? null
        : MessageHeader_Source.fromJson(json['source'] as Map<String, dynamic>),
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

Map<String, dynamic> _$MessageHeaderToJson(MessageHeader instance) =>
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
      'eventCoding': instance.eventCoding?.toJson(),
      'eventUri': instance.eventUri,
      'elementEventUri': instance.elementEventUri?.toJson(),
      'destination': instance.destination?.map((e) => e?.toJson())?.toList(),
      'sender': instance.sender?.toJson(),
      'enterer': instance.enterer?.toJson(),
      'author': instance.author?.toJson(),
      'source': instance.source?.toJson(),
      'responsible': instance.responsible?.toJson(),
      'reason': instance.reason?.toJson(),
      'response': instance.response?.toJson(),
      'focus': instance.focus?.map((e) => e?.toJson())?.toList(),
      'definition': instance.definition,
    };

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
        MessageHeader_Destination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'target': instance.target?.toJson(),
      'endpoint': instance.endpoint,
      'elementEndpoint': instance.elementEndpoint?.toJson(),
      'receiver': instance.receiver?.toJson(),
    };

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
        MessageHeader_Source instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'software': instance.software,
      'elementSoftware': instance.elementSoftware?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'contact': instance.contact?.toJson(),
      'endpoint': instance.endpoint,
      'elementEndpoint': instance.elementEndpoint?.toJson(),
    };

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
        MessageHeader_Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier,
      'elementIdentifier': instance.elementIdentifier?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'details': instance.details?.toJson(),
    };
