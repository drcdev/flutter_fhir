import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'communicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CommunicationRequest {

  //  This is a CommunicationRequest resource
  final String resourceType= 'CommunicationRequest';

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

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

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

  //  Business identifiers assigned to this communication request by the
  // performer or other systems which remain constant as the resource is
  // updated and propagates from server to server.
  List<Identifier> identifier;

  //  A plan or proposal that is fulfilled in whole or in part by this
  // request.
  List<Reference> basedOn;

  //  Completed or terminated request(s) whose function is taken by this new
  // request.
  List<Reference> replaces;

  //  A shared identifier common to all requests that were authorized more
  // or less simultaneously by a single author, representing the identifier
  // of the requisition, prescription or similar form.
  Identifier groupIdentifier;

  //  The status of the proposal or order.
  String status;

  //  Extensions for status
  Element element_status;

  //  Captures the reason for the current state of the CommunicationRequest.
  CodeableConcept statusReason;

  //  The type of message to be sent such as alert, notification, reminder,
  // instruction, etc.
  List<CodeableConcept> category;

  //  Characterizes how quickly the proposed act must be initiated. Includes
  // concepts such as stat, urgent, routine.
  String priority;

  //  Extensions for priority
  Element element_priority;

  //  If true indicates that the CommunicationRequest is asking for the
  // specified action to *not* occur.
  bool doNotPerform;

  //  Extensions for doNotPerform
  Element element_doNotPerform;

  //  A channel that was used for this communication (e.g. email, fax).
  List<CodeableConcept> medium;

  //  The patient or group that is the focus of this communication request.
  Reference subject;

  //  Other resources that pertain to this communication request and to
  // which this communication request should be associated.
  List<Reference> about;

  //  The Encounter during which this CommunicationRequest was created or to
  // which the creation of this record is tightly associated.
  Reference encounter;

  //  Text, attachment(s), or resource(s) to be communicated to the
  // recipient.
  List<CommunicationRequest_Payload> payload;

  //  The time when this communication is to occur.
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  Element element_occurrenceDateTime;

  //  The time when this communication is to occur.
  Period occurrencePeriod;

  //  For draft requests, indicates the date of initial creation.  For
  // requests with other statuses, indicates the date of activation.
  DateTime authoredOn;

  //  Extensions for authoredOn
  Element element_authoredOn;

  //  The device, individual, or organization who initiated the request and
  // has responsibility for its activation.
  Reference requester;

  //  The entity (e.g. person, organization, clinical information system,
  // device, group, or care team) which is the intended target of the
  // communication.
  List<Reference> recipient;

  //  The entity (e.g. person, organization, clinical information system, or
  // device) which is to be the source of the communication.
  Reference sender;

  //  Describes why the request is being made in coded or textual form.
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this request.
  List<Reference> reasonReference;

  //  Comments made about the request by the requester, sender, recipient,
  // subject or other participants.
  List<Annotation> note;

CommunicationRequest(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    this.status,
    this.element_status,
    this.statusReason,
    this.category,
    this.priority,
    this.element_priority,
    this.doNotPerform,
    this.element_doNotPerform,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.element_occurrenceDateTime,
    this.occurrencePeriod,
    this.authoredOn,
    this.element_authoredOn,
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
class CommunicationRequest_Payload {

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

  //  The communicated content (or for multi-part communications, one
  // portion of the communication).
  String contentString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for contentString
  Element element_contentString;

  //  The communicated content (or for multi-part communications, one
  // portion of the communication).
  Attachment contentAttachment;

  //  The communicated content (or for multi-part communications, one
  // portion of the communication).
  Reference contentReference;

CommunicationRequest_Payload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this.element_contentString,
    this.contentAttachment,
    this.contentReference
    });

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) => _$CommunicationRequest_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequest_PayloadToJson(this);
}

