

part 'communicationRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CommunicationRequest {

  This is a CommunicationRequest resource resourceType;
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
  String occurrenceDateTime;
  Element _occurrenceDateTime;
  Period occurrencePeriod;
  StringTime authoredOn;
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
this.note});

  factory CommunicationRequest.fromJson(Map<String, dynamic> json) => _$CommunicationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequestToJson(this);
}