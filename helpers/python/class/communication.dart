

part 'communication.g.dart';

@JsonSerializable(explicitToJson: true)
class Communication {

  This is a Communication resource resourceType;
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
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> _instantiatesUri;
  List<Reference> basedOn;
  List<Reference> partOf;
  List<Reference> inResponseTo;
  String status;
  Element _status;
  CodeableConcept statusReason;
  List<CodeableConcept> category;
  String priority;
  Element _priority;
  List<CodeableConcept> medium;
  Reference subject;
  CodeableConcept topic;
  List<Reference> about;
  Reference encounter;
  StringTime sent;
  Element _sent;
  StringTime received;
  Element _received;
  List<Reference> recipient;
  Reference sender;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Communication_Payload> payload;
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
this.note});

  factory Communication.fromJson(Map<String, dynamic> json) => _$CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationToJson(this);
}