part 'documentReference.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference {

DocumentReference resourceType;
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
String status; // <code> enum: current/superseded/entered-in-error;
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
      this.context,
      });

  factory DocumentReference.fromJson(Map<String, dynamic> json) => _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReferenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: replaces/transforms/signs/appends;
Element _code;
Reference target;

DocumentReference_RelatesTo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.target,
      });

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) => _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReference_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment attachment;
Coding format;

DocumentReference_Content(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.attachment,
      this.format,
      });

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReference_ContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Context {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> encounter;
List<CodeableConcept> event;
Period period;
CodeableConcept facilityType;
CodeableConcept practiceSetting;
Reference sourcePatientInfo;
List<Reference> related;

DocumentReference_Context(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.encounter,
      this.event,
      this.period,
      this.facilityType,
      this.practiceSetting,
      this.sourcePatientInfo,
      this.related,
      });

  factory DocumentReference_Context.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContextFromJson(json);
  Map<String, dynamic> toJson() _$DocumentReference_ContextToJson(this);
}

