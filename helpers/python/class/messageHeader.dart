

part 'messageHeader.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader {

  This is a MessageHeader resource resourceType;
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
  Coding eventCoding;
  String eventUri;
  Element _eventUri;
  List<MessageHeader_Destination> destination;
  Reference sender;
  Reference enterer;
  Reference author;
  MessageHeader_Source source;
  Reference responsible;
  CodeableConcept reason;
  MessageHeader_Response response;
  List<Reference> focus;
  String definition;


MessageHeader(
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
this.eventCoding,
this.eventUri,
this._eventUri,
this.destination,
this.sender,
this.enterer,
this.author,
this.source,
this.responsible,
this.reason,
this.response,
this.focus,
this.definition});

  factory MessageHeader.fromJson(Map<String, dynamic> json) => _$MessageHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeaderToJson(this);
}