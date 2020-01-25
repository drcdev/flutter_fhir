

part 'documentManifest.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentManifest {

  This is a DocumentManifest resource resourceType;
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
  Identifier masterIdentifier;
  List<Identifier> identifier;
  enum: currentsupersededentered-in-error status;
  Element _status;
  CodeableConcept type;
  Reference subject;
  StringTime created;
  Element _created;
  List<Reference> author;
  List<Reference> recipient;
  String source;
  Element _source;
  String description;
  Element _description;
  List<Reference> content;
  List<DocumentManifest_Related> related;


DocumentManifest(
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
this.masterIdentifier,
this.identifier,
this.status,
this._status,
this.type,
this.subject,
this.created,
this._created,
this.author,
this.recipient,
this.source,
this._source,
this.description,
this._description,
this.content,
this.related});

  factory DocumentManifest.fromJson(Map<String, dynamic> json) => _$DocumentManifestFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifestToJson(this);
}