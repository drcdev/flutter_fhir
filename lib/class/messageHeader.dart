import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'messageHeader.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader {

//  This is a MessageHeader resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  The base language in which the resource is written.
String language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
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
List<Extension> modifierExtension;

//  Code that identifies the event this message represents and connects it
// with its definition. Events defined as part of the FHIR specification
// have the system value
// "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively
// uri to the EventDefinition.
Coding eventCoding;

//  Code that identifies the event this message represents and connects it
// with its definition. Events defined as part of the FHIR specification
// have the system value
// "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively
// uri to the EventDefinition.
String eventUri; //  pattern: ^\S*$

//  The destination application which the message is intended for.
List<MessageHeader_Destination> destination;

//  Identifies the sending system to allow the use of a trust
// relationship.
Reference sender;

//  The person or device that performed the data entry leading to this
// message. When there is more than one candidate, pick the most proximal
// to the message. Can provide other enterers in extensions.
Reference enterer;

//  The logical author of the message - the person or device that decided
// the described event should happen. When there is more than one
// candidate, pick the most proximal to the MessageHeader. Can provide
// other authors in extensions.
Reference author;

//  The source application from which this message originated.
MessageHeader_Source source;

//  The person or organization that accepts overall responsibility for the
// contents of the message. The implication is that the message event
// happened under the policies of the responsible party.
Reference responsible;

//  Coded indication of the cause for the event - indicates  a reason for
// the occurrence of the event that is a focus of this message.
CodeableConcept reason;

//  Information about the message that this message is a response to. 
// Only present if this message is a response.
MessageHeader_Response response;

//  The actual data of the message - a reference to the root/focus class
// of the event.
List<Reference> focus;

//  Permanent link to the MessageDefinition for this message.
String definition;

MessageHeader(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.eventCoding,
    this.eventUri,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    this.source,
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

//  Identifies the target end system in situations where the initial
// message transmission is to an intermediary system.
Reference target;

//  Indicates where the message should be routed to.
String endpoint;

//  Allows data conveyed by a message to be addressed to a particular
// person or department when routing to a specific application isn't
// sufficient.
Reference receiver;

MessageHeader_Destination(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.target,
    this.endpoint,
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

//  May include configuration or other information useful in debugging.
String software;

//  Can convey versions of multiple systems in situations where a message
// passes through multiple hands.
String version;

//  An e-mail, phone, website or other contact point to use to resolve
// issues with message communications.
ContactPoint contact;

//  Identifies the routing target to send acknowledgements to.
String endpoint;

MessageHeader_Source(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.software,
    this.version,
    this.contact,
    this.endpoint
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

//  Code that identifies the type of response to the message - whether it
// was successful or not, and whether it should be resent or not.
String code; // <code> enum: ok/transient-error/fatal-error;

//  Full details of any issues found in the message.
Reference details;

MessageHeader_Response(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.code,
    this.details
    });

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) => _$MessageHeader_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_ResponseToJson(this);
}

