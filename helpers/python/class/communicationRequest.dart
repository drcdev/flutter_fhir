part 'communicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CommunicationRequest {

CommunicationRequest resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
List<Reference> basedOn;
List<Reference> replaces;
Identifier groupIdentifier;
String status;
Element _status;
CodeableConcept statusReason;
List<CodeableConcept> category;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
List<CodeableConcept> medium;
Reference subject;
List<Reference> about;
Reference encounter;
List<CommunicationRequest_Payload> payload;
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
List<Reference> recipient;
Reference sender;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;

CommunicationRequest(
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
      this.basedOn,
      this.replaces,
      this.groupIdentifier,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.medium,
      this.subject,
      this.about,
      this.encounter,
      this.payload,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.recipient,
      this.sender,
      this.reasonCode,
      this.reasonReference,
      this.note,
      });

  factory CommunicationRequest.fromJson(Map<String, dynamic> json) => _$CommunicationRequestFromJson(json);
  Map<String, dynamic> toJson() _$CommunicationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CommunicationRequest_Payload {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String contentString; //  pattern: ^[ \r\n\t\S]+$
Element _contentString;
Attachment contentAttachment;
Reference contentReference;

CommunicationRequest_Payload(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentString,
      this._contentString,
      this.contentAttachment,
      this.contentReference,
      });

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) => _$CommunicationRequest_PayloadFromJson(json);
  Map<String, dynamic> toJson() _$CommunicationRequest_PayloadToJson(this);
}

