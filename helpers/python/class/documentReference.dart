

part 'documentReference.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference {

  This is a DocumentReference resource resourceType;
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
  String docStatus;
  Element _docStatus;
  CodeableConcept type;
  List<CodeableConcept> category;
  Reference subject;
  DateTime date;
  Element _date;
  List<Reference> author;
  Reference authenticator;
  Reference custodian;
  List<DocumentReference_RelatesTo> relatesTo;
  String description;
  Element _description;
  List<CodeableConcept> securityLabel;
  List<DocumentReference_Content> content;
  DocumentReference_Context context;


DocumentReference(
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
this.docStatus,
this._docStatus,
this.type,
this.category,
this.subject,
this.date,
this._date,
this.author,
this.authenticator,
this.custodian,
this.relatesTo,
this.description,
this._description,
this.securityLabel,
this.content,
this.context});

  factory DocumentReference.fromJson(Map<String, dynamic> json) => _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReferenceToJson(this);
}