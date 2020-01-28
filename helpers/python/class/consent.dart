part 'consent.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent {

Consent resourceType;
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
String status; // <code> enum: draft/proposed/active/rejected/inactive/entered-in-error;
Element _status;
CodeableConcept scope;
List<CodeableConcept> category;
Reference patient;
DateTime dateTime;
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
      this.provision,
      });

  factory Consent.fromJson(Map<String, dynamic> json) => _$ConsentFromJson(json);
  Map<String, dynamic> toJson() _$ConsentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Policy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String authority;
Element _authority;
String uri;
Element _uri;

Consent_Policy(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.authority,
      this._authority,
      this.uri,
      this._uri,
      });

  factory Consent_Policy.fromJson(Map<String, dynamic> json) => _$Consent_PolicyFromJson(json);
  Map<String, dynamic> toJson() _$Consent_PolicyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Verification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool verified;
Element _verified;
Reference verifiedWith;
DateTime verificationDate;
Element _verificationDate;

Consent_Verification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.verified,
      this._verified,
      this.verifiedWith,
      this.verificationDate,
      this._verificationDate,
      });

  factory Consent_Verification.fromJson(Map<String, dynamic> json) => _$Consent_VerificationFromJson(json);
  Map<String, dynamic> toJson() _$Consent_VerificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Provision {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: deny/permit;
Element _type;
Period period;
List<Consent_Actor> actor;
List<CodeableConcept> action;
List<Coding> securityLabel;
List<Coding> purpose;
List<Coding> class;
List<CodeableConcept> code;
Period dataPeriod;
List<Consent_Data> data;
List<Consent_Provision> provision;

Consent_Provision(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.period,
      this.actor,
      this.action,
      this.securityLabel,
      this.purpose,
      this.class,
      this.code,
      this.dataPeriod,
      this.data,
      this.provision,
      });

  factory Consent_Provision.fromJson(Map<String, dynamic> json) => _$Consent_ProvisionFromJson(json);
  Map<String, dynamic> toJson() _$Consent_ProvisionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Actor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Reference reference;

Consent_Actor(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.reference,
      });

  factory Consent_Actor.fromJson(Map<String, dynamic> json) => _$Consent_ActorFromJson(json);
  Map<String, dynamic> toJson() _$Consent_ActorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Data {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String meaning; // <code> enum: instance/related/dependents/authoredby;
Element _meaning;
Reference reference;

Consent_Data(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.meaning,
      this._meaning,
      this.reference,
      });

  factory Consent_Data.fromJson(Map<String, dynamic> json) => _$Consent_DataFromJson(json);
  Map<String, dynamic> toJson() _$Consent_DataToJson(this);
}

