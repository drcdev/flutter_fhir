part 'messageHeader.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader {

MessageHeader resourceType;
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
String eventUri; //  pattern: ^\S*$
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
      this.definition,
      });

  factory MessageHeader.fromJson(Map<String, dynamic> json) => _$MessageHeaderFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeaderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Destination {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
Reference target;
String endpoint;
Element _endpoint;
Reference receiver;

MessageHeader_Destination(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.target,
      this.endpoint,
      this._endpoint,
      this.receiver,
      });

  factory MessageHeader_Destination.fromJson(Map<String, dynamic> json) => _$MessageHeader_DestinationFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeader_DestinationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Source {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String software;
Element _software;
String version;
Element _version;
ContactPoint contact;
String endpoint;
Element _endpoint;

MessageHeader_Source(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.software,
      this._software,
      this.version,
      this._version,
      this.contact,
      this.endpoint,
      this._endpoint,
      });

  factory MessageHeader_Source.fromJson(Map<String, dynamic> json) => _$MessageHeader_SourceFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeader_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageHeader_Response {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identifier;
Element _identifier;
String code; // <code> enum: ok/transient-error/fatal-error;
Element _code;
Reference details;

MessageHeader_Response(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this._identifier,
      this.code,
      this._code,
      this.details,
      });

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) => _$MessageHeader_ResponseFromJson(json);
  Map<String, dynamic> toJson() _$MessageHeader_ResponseToJson(this);
}

