import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'communication.g.dart';

@JsonSerializable(explicitToJson: true)
class Communication {


// This is a Communication resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Business identifiers assigned to this communication by the performer or other
//  systems which remain constant as the resource is updated and propagates from
//  server to server.
List<Identifier> identifier;

// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
//  definition that is adhered to in whole or in part by this Communication.
List<String> instantiatesCanonical;

// The URL pointing to an externally maintained protocol, guideline, orderset or
//  other definition that is adhered to in whole or in part by this Communication.
List<String> instantiatesUri;

// Extensions for instantiatesUri
List<Element> _instantiatesUri;

// An order, proposal or plan fulfilled in whole or in part by this Communication.
List<Reference> basedOn;

// Part of this action.
List<Reference> partOf;

// Prior communication that this communication is in response to.
List<Reference> inResponseTo;

// The status of the transmission.
String status;

// Extensions for status
Element _status;

// Captures the reason for the current state of the Communication.
CodeableConcept statusReason;

// The type of message conveyed such as alert, notification, reminder, instruction,
//  etc.
List<CodeableConcept> category;

// Characterizes how quickly the planned or in progress communication must be
//  addressed. Includes concepts such as stat, urgent, routine.
String priority;

// Extensions for priority
Element _priority;

// A channel that was used for this communication (e.g. email, fax).
List<CodeableConcept> medium;

// The patient or group that was the focus of this communication.
Reference subject;

// Description of the purpose/content, similar to a subject line in an email.
CodeableConcept topic;

// Other resources that pertain to this communication and to which this
//  communication should be associated.
List<Reference> about;

// The Encounter during which this Communication was created or to which the
//  creation of this record is tightly associated.
Reference encounter;

// The time when this communication was sent.
DateTime sent;

// Extensions for sent
Element _sent;

// The time when this communication arrived at the destination.
DateTime received;

// Extensions for received
Element _received;

// The entity (e.g. person, organization, clinical information system, care team or
//  device) which was the target of the communication. If receipts need to be
//  tracked by an individual, a separate resource instance will need to be created
//  for each recipient.  Multiple recipient communications are intended where
//  either receipts are not tracked (e.g. a mass mail-out) or a receipt is captured
//  in aggregate (all emails confirmed received by a particular time).
List<Reference> recipient;

// The entity (e.g. person, organization, clinical information system, or device)
//  which was the source of the communication.
Reference sender;

// The reason or justification for the communication.
List<CodeableConcept> reasonCode;

// Indicates another resource whose existence justifies this communication.
List<Reference> reasonReference;

// Text, attachment(s), or resource(s) that was communicated to the recipient.
List<Communication_Payload> payload;

// Additional notes or commentary about the communication by the sender, receiver
//  or other interested parties.
List<Annotation> note;

Communication(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this._implicitRules,
    this.language,
    this._language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this._instantiatesUri,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    this.status,
    this._status,
    this.statusReason,
    this.category,
    this.priority,
    this._priority,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this._sent,
    this.received,
    this._received,
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
class Communication_Payload {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// A communicated content (or for multi-part communications, one portion of the
//  communication).
String contentString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for contentString
Element _contentString;

// A communicated content (or for multi-part communications, one portion of the
//  communication).
Attachment contentAttachment;

// A communicated content (or for multi-part communications, one portion of the
//  communication).
Reference contentReference;

Communication_Payload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this._contentString,
    this.contentAttachment,
    this.contentReference
    });

  factory Communication_Payload.fromJson(Map<String, dynamic> json) => _$Communication_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$Communication_PayloadToJson(this);
}

