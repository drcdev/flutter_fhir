import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'consent.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent {

//  This is a Consent resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  The base language in which the resource is written.
String language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the resource and that modifies the
// understanding of the element that contains it and/or the understanding
// of the containing element's descendants. Usually modifier elements
// provide negation or qualification. To make the use of extensions safe
// and manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer is allowed to
// define an extension, there is a set of requirements that SHALL be met
// as part of the definition of the extension. Applications processing a
// resource are required to check for modifier extensions. Modifier
// extensions SHALL NOT change the meaning of any elements on Resource or
// DomainResource (including cannot change the meaning of
// modifierExtension itself).
List<Extension> modifierExtension;

//  Unique identifier for this copy of the Consent Statement.
List<Identifier> identifier;

//  Indicates the current state of this consent.
String status; // <code> enum: draft/proposed/active/rejected/inactive/entered-in-error;

//  A selector of the type of consent being presented: ADR, Privacy,
// Treatment, Research.  This list is now extensible.
CodeableConcept scope;

//  A classification of the type of consents found in the statement. This
// element supports indexing and retrieval of consent statements.
List<CodeableConcept> category;

//  The patient/healthcare consumer to whom this consent applies.
Reference patient;

//  When this  Consent was issued / created / indexed.
DateTime dateTime;

//  Either the Grantor, which is the entity responsible for granting the
// rights listed in a Consent Directive or the Grantee, which is the
// entity responsible for complying with the Consent Directive, including
// any obligations or limitations on authorizations and enforcement of
// prohibitions.
List<Reference> performer;

//  The organization that manages the consent, and the framework within
// which it is executed.
List<Reference> organization;

//  The source on which this consent statement is based. The source might
// be a scanned original paper form, or a reference to a consent that
// links back to such a source, a reference to a document repository (e.g.
// XDS) that stores the original consent document.
Attachment sourceAttachment;

//  The source on which this consent statement is based. The source might
// be a scanned original paper form, or a reference to a consent that
// links back to such a source, a reference to a document repository (e.g.
// XDS) that stores the original consent document.
Reference sourceReference;

//  The references to the policies that are included in this consent
// scope. Policies may be organizational, but are often defined
// jurisdictionally, or in law.
List<Consent_Policy> policy;

//  A reference to the specific base computable regulation or policy.
CodeableConcept policyRule;

//  Whether a treatment instruction (e.g. artificial respiration yes or
// no) was verified with the patient, his/her family or another authorized
// person.
List<Consent_Verification> verification;

//  An exception to the base policy of this consent. An exception can be
// an addition or removal of access permissions.
Consent_Provision provision;

Consent(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.scope,
    this.category,
    this.patient,
    this.dateTime,
    this.performer,
    this.organization,
    this.sourceAttachment,
    this.sourceReference,
    this.policy,
    this.policyRule,
    this.verification,
    this.provision
    });

  factory Consent.fromJson(Map<String, dynamic> json) => _$ConsentFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Policy {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Entity or Organization having regulatory jurisdiction or
// accountability for  enforcing policies pertaining to Consent
// Directives.
String authority;

//  The references to the policies that are included in this consent
// scope. Policies may be organizational, but are often defined
// jurisdictionally, or in law.
String uri;

Consent_Policy(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.authority,
    this.uri
    });

  factory Consent_Policy.fromJson(Map<String, dynamic> json) => _$Consent_PolicyFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_PolicyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Verification {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Has the instruction been verified.
bool verified;

//  Who verified the instruction (Patient, Relative or other Authorized
// Person).
Reference verifiedWith;

//  Date verification was collected.
DateTime verificationDate;

Consent_Verification(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.verified,
    this.verifiedWith,
    this.verificationDate
    });

  factory Consent_Verification.fromJson(Map<String, dynamic> json) => _$Consent_VerificationFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_VerificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Provision {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Action  to take - permit or deny - when the rule conditions are met. 
// Not permitted in root rule, required in all nested rules.
String type; // <code> enum: deny/permit;

//  The timeframe in this rule is valid.
Period period;

//  Who or what is controlled by this rule. Use group to identify a set of
// actors by some property they share (e.g. 'admitting officers').
List<Consent_Actor> actor;

//  Actions controlled by this Rule.
List<CodeableConcept> action;

//  A security label, comprised of 0..* security label fields (Privacy
// tags), which define which resources are controlled by this exception.
List<Coding> securityLabel;

//  The context of the activities a user is taking - why the user is
// accessing the data - that are controlled by this rule.
List<Coding> purpose;

//  The class of information covered by this rule. The type can be a FHIR
// resource type, a profile on a type, or a CDA document, or some other
// type that indicates what sort of information the consent relates to.
List<Coding> class;

//  If this code is found in an instance, then the rule applies.
List<CodeableConcept> code;

//  Clinical or Operational Relevant period of time that bounds the data
// controlled by this rule.
Period dataPeriod;

//  The resources controlled by this rule if specific resources are
// referenced.
List<Consent_Data> data;

//  Rules which provide exceptions to the base rule or subrules.
List<Consent_Provision> provision;

Consent_Provision(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.period,
    this.actor,
    this.action,
    this.securityLabel,
    this.purpose,
    this.class,
    this.code,
    this.dataPeriod,
    this.data,
    this.provision
    });

  factory Consent_Provision.fromJson(Map<String, dynamic> json) => _$Consent_ProvisionFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ProvisionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Actor {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  How the individual is involved in the resources content that is
// described in the exception.
CodeableConcept role;

//  The resource that identifies the actor. To identify actors by type,
// use group to identify a set of actors by some property they share (e.g.
// 'admitting officers').
Reference reference;

Consent_Actor(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.reference
    });

  factory Consent_Actor.fromJson(Map<String, dynamic> json) => _$Consent_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ActorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Consent_Data {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  How the resource reference is interpreted when testing consent
// restrictions.
String meaning; // <code> enum: instance/related/dependents/authoredby;

//  A reference to a specific resource that defines which resources are
// covered by this consent.
Reference reference;

Consent_Data(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.meaning,
    this.reference
    });

  factory Consent_Data.fromJson(Map<String, dynamic> json) => _$Consent_DataFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_DataToJson(this);
}

