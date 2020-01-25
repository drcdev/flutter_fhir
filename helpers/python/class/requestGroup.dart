

part 'requestGroup.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestGroup {

  This is a RequestGroup resource resourceType;
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
  List<Element> _instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> _instantiatesUri;
  List<Reference> basedOn;
  List<Reference> replaces;
  Identifier groupIdentifier;
  String status;
  Element _status;
  String intent;
  Element _intent;
  String priority;
  Element _priority;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  StringTime authoredOn;
  Element _authoredOn;
  Reference author;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Annotation> note;
  List<RequestGroup_Action> action;


RequestGroup(
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
this._instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.basedOn,
this.replaces,
this.groupIdentifier,
this.status,
this._status,
this.intent,
this._intent,
this.priority,
this._priority,
this.code,
this.subject,
this.encounter,
this.authoredOn,
this._authoredOn,
this.author,
this.reasonCode,
this.reasonReference,
this.note,
this.action});

  factory RequestGroup.fromJson(Map<String, dynamic> json) => _$RequestGroupFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroupToJson(this);
}