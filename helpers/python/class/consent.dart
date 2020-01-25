

part 'consent.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent {

  This is a Consent resource resourceType;
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
  enum: draftproposedactiverejectedinactiveentered-in-error status;
  Element _status;
  CodeableConcept scope;
  List<CodeableConcept> category;
  Reference patient;
  StringTime dateTime;
  Element _dateTime;
  List<Reference> performer;
  List<Reference> organization;
  Attachment sourceAttachment;
  Reference sourceReference;
  List<Consent_Policy> policy;
  CodeableConcept policyRule;
  List<Consent_Verification> verification;
  Consent_Provision provision;


Consent(
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
this.status,
this._status,
this.scope,
this.category,
this.patient,
this.dateTime,
this._dateTime,
this.performer,
this.organization,
this.sourceAttachment,
this.sourceReference,
this.policy,
this.policyRule,
this.verification,
this.provision});

  factory Consent.fromJson(Map<String, dynamic> json) => _$ConsentFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentToJson(this);
}