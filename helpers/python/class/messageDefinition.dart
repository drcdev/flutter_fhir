part 'messageDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageDefinition {

MessageDefinition resourceType;
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
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
List<String> replaces;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String base;
List<String> parent;
Coding eventCoding;
String eventUri; //  pattern: ^\S*$
Element _eventUri;
String category; // <code> enum: consequence/currency/notification;
Element _category;
List<MessageDefinition_Focus> focus;
String responseRequired; // <code> enum: always/on-error/never/on-success;
Element _responseRequired;
List<MessageDefinition_AllowedResponse> allowedResponse;
List<String> graph;

MessageDefinition(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.replaces,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.base,
      this.parent,
      this.eventCoding,
      this.eventUri,
      this._eventUri,
      this.category,
      this._category,
      this.focus,
      this.responseRequired,
      this._responseRequired,
      this.allowedResponse,
      this.graph,
      });

  factory MessageDefinition.fromJson(Map<String, dynamic> json) => _$MessageDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$MessageDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_Focus {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String profile;
int min;
Element _min;
String max;
Element _max;

MessageDefinition_Focus(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.profile,
      this.min,
      this._min,
      this.max,
      this._max,
      });

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) => _$MessageDefinition_FocusFromJson(json);
  Map<String, dynamic> toJson() _$MessageDefinition_FocusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_AllowedResponse {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String message;
String situation;
Element _situation;

MessageDefinition_AllowedResponse(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.message,
      this.situation,
      this._situation,
      });

  factory MessageDefinition_AllowedResponse.fromJson(Map<String, dynamic> json) => _$MessageDefinition_AllowedResponseFromJson(json);
  Map<String, dynamic> toJson() _$MessageDefinition_AllowedResponseToJson(this);
}

