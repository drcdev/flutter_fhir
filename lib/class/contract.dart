import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/signature.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'contract.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract {

//  This is a Contract resource
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

//  Unique identifier for this Contract or a derivative that references a
// Source Contract.
List<Identifier> identifier;

//  Canonical identifier for this contract, represented as a URI (globally
// unique).
String url;

//  An edition identifier used for business purposes to label business
// significant variants.
String version;

//  The status of the resource instance.
String status;

//  Legal states of the formation of a legal instrument, which is a
// formally executed written document that can be formally attributed to
// its author, records and formally expresses a legally enforceable act,
// process, or contractual duty, obligation, or right, and therefore
// evidences that act, process, or agreement.
CodeableConcept legalState;

//  The URL pointing to a FHIR-defined Contract Definition that is adhered
// to in whole or part by this Contract.
Reference instantiatesCanonical;

//  The URL pointing to an externally maintained definition that is
// adhered to in whole or in part by this Contract.
String instantiatesUri;

//  The minimal content derived from the basal information source at a
// specific stage in its lifecycle.
CodeableConcept contentDerivative;

//  When this  Contract was issued.
DateTime issued;

//  Relevant time or time-period when this Contract is applicable.
Period applies;

//  Event resulting in discontinuation or termination of this Contract
// instance by one or more parties to the contract.
CodeableConcept expirationType;

//  The target entity impacted by or of interest to parties to the
// agreement.
List<Reference> subject;

//  A formally or informally recognized grouping of people, principals,
// organizations, or jurisdictions formed for the purpose of achieving
// some form of collective action such as the promulgation, administration
// and enforcement of contracts and policies.
List<Reference> authority;

//  Recognized governance framework or system operating with a
// circumscribed scope in accordance with specified principles, policies,
// processes or procedures for managing rights, actions, or behaviors of
// parties or principals relative to resources.
List<Reference> domain;

//  Sites in which the contract is complied with,  exercised, or in force.
List<Reference> site;

//  A natural language name identifying this Contract definition,
// derivative, or instance in any legal state. Provides additional
// information about its content. This name should be usable as an
// identifier for the module by machine processing applications such as
// code generation.
String name;

//  A short, descriptive, user-friendly title for this Contract
// definition, derivative, or instance in any legal state.t giving
// additional information about its content.
String title;

//  An explanatory or alternate user-friendly title for this Contract
// definition, derivative, or instance in any legal state.t giving
// additional information about its content.
String subtitle;

//  Alternative representation of the title for this Contract definition,
// derivative, or instance in any legal state., e.g., a domain specific
// contract number related to legislation.
List<String> alias;

//  The individual or organization that authored the Contract definition,
// derivative, or instance in any legal state.
Reference author;

//  A selector of legal concerns for this Contract definition, derivative,
// or instance in any legal state.
CodeableConcept scope;

//  Narrows the range of legal concerns to focus on the achievement of
// specific contractual objectives.
CodeableConcept topicCodeableConcept;

//  Narrows the range of legal concerns to focus on the achievement of
// specific contractual objectives.
Reference topicReference;

//  A high-level category for the legal instrument, whether constructed as
// a Contract definition, derivative, or instance in any legal state. 
// Provides additional information about its content within the context of
// the Contract's scope to distinguish the kinds of systems that would be
// interested in the contract.
CodeableConcept type;

//  Sub-category for the Contract that distinguishes the kinds of systems
// that would be interested in the Contract within the context of the
// Contract's scope.
List<CodeableConcept> subType;

//  Precusory content developed with a focus and intent of supporting the
// formation a Contract instance, which may be associated with and
// transformable into a Contract.
Contract_ContentDefinition contentDefinition;

//  One or more Contract Provisions, which may be related and conveyed as
// a group, and may contain nested groups.
List<Contract_Term> term;

//  Information that may be needed by/relevant to the performer in their
// execution of this term action.
List<Reference> supportingInfo;

//  Links to Provenance records for past versions of this Contract
// definition, derivative, or instance, which identify key state
// transitions or updates that are likely to be relevant to a user looking
// at the current version of the Contract.  The Provence.entity indicates
// the target that was changed in the update.
// http://build.fhir.org/provenance-definitions.html#Provenance.entity.
List<Reference> relevantHistory;

//  Parties with legal standing in the Contract, including the principal
// parties, the grantor(s) and grantee(s), which are any person or
// organization bound by the contract, and any ancillary parties, which
// facilitate the execution of the contract such as a notary or witness.
List<Contract_Signer> signer;

//  The "patient friendly language" versionof the Contract in whole or in
// parts. "Patient friendly language" means the representation of the
// Contract and Contract Provisions in a manner that is readily accessible
// and understandable by a layperson in accordance with best practices for
// communication styles that ensure that those agreeing to or signing the
// Contract understand the roles, actions, obligations, responsibilities,
// and implication of the agreement.
List<Contract_Friendly> friendly;

//  List of Legal expressions or representations of this Contract.
List<Contract_Legal> legal;

//  List of Computable Policy Rule Language Representations of this
// Contract.
List<Contract_Rule> rule;

//  Legally binding Contract: This is the signed and legally recognized
// representation of the Contract, which is considered the "source of
// truth" and which would be the basis for legal action related to
// enforcement of this Contract.
Attachment legallyBindingAttachment;

//  Legally binding Contract: This is the signed and legally recognized
// representation of the Contract, which is considered the "source of
// truth" and which would be the basis for legal action related to
// enforcement of this Contract.
Reference legallyBindingReference;

Contract(
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
    this.url,
    this.version,
    this.status,
    this.legalState,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.contentDerivative,
    this.issued,
    this.applies,
    this.expirationType,
    this.subject,
    this.authority,
    this.domain,
    this.site,
    this.name,
    this.title,
    this.subtitle,
    this.alias,
    this.author,
    this.scope,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.contentDefinition,
    this.term,
    this.supportingInfo,
    this.relevantHistory,
    this.signer,
    this.friendly,
    this.legal,
    this.rule,
    this.legallyBindingAttachment,
    this.legallyBindingReference
    });

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_ContentDefinition {

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

//  Precusory content structure and use, i.e., a boilerplate, template,
// application for a contract such as an insurance policy or benefits
// under a program, e.g., workers compensation.
CodeableConcept type;

//  Detailed Precusory content type.
CodeableConcept subType;

//  The  individual or organization that published the Contract precursor
// content.
Reference publisher;

//  The date (and optionally time) when the contract was published. The
// date must change when the business version changes and it must change
// if the status code changes. In addition, it should change when the
// substantive content of the contract changes.
DateTime publicationDate;

//  amended | appended | cancelled | disputed | entered-in-error |
// executable | executed | negotiable | offered | policy | rejected |
// renewed | revoked | resolved | terminated.
String publicationStatus;

//  A copyright statement relating to Contract precursor content.
// Copyright statements are generally legal restrictions on the use and
// publishing of the Contract precursor content.
String copyright;

Contract_ContentDefinition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.publicationStatus,
    this.copyright
    });

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) => _$Contract_ContentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Term {

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

//  Unique identifier for this particular Contract Provision.
Identifier identifier;

//  When this Contract Provision was issued.
DateTime issued;

//  Relevant time or time-period when this Contract Provision is
// applicable.
Period applies;

//  The entity that the term applies to.
CodeableConcept topicCodeableConcept;

//  The entity that the term applies to.
Reference topicReference;

//  A legal clause or condition contained within a contract that requires
// one or both parties to perform a particular requirement by some
// specified time or prevents one or both parties from performing a
// particular requirement by some specified time.
CodeableConcept type;

//  A specialized legal clause or condition based on overarching contract
// type.
CodeableConcept subType;

//  Statement of a provision in a policy or a contract.
String text;

//  Security labels that protect the handling of information about the
// term and its elements, which may be specifically identified..
List<Contract_SecurityLabel> securityLabel;

//  The matter of concern in the context of this provision of the
// agrement.
Contract_Offer offer;

//  Contract Term Asset List.
List<Contract_Asset> asset;

//  An actor taking a role in an activity for which it can be assigned
// some degree of responsibility for the activity taking place.
List<Contract_Action> action;

//  Nested group of Contract Provisions.
List<Contract_Term> group;

Contract_Term(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.issued,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
    this.securityLabel,
    this.offer,
    this.asset,
    this.action,
    this.group
    });

  factory Contract_Term.fromJson(Map<String, dynamic> json) => _$Contract_TermFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_TermToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_SecurityLabel {

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

//  Number used to link this term or term element to the applicable
// Security Label.
List<int> number;

//  Security label privacy tag that species the level of confidentiality
// protection required for this term and/or term elements.
Coding classification;

//  Security label privacy tag that species the applicable privacy and
// security policies governing this term and/or term elements.
List<Coding> category;

//  Security label privacy tag that species the manner in which term
// and/or term elements are to be protected.
List<Coding> control;

Contract_SecurityLabel(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.classification,
    this.category,
    this.control
    });

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) => _$Contract_SecurityLabelFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SecurityLabelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Offer {

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

//  Unique identifier for this particular Contract Provision.
List<Identifier> identifier;

//  Offer Recipient.
List<Contract_Party> party;

//  The owner of an asset has the residual control rights over the asset:
// the right to decide all usages of the asset in any way not inconsistent
// with a prior contract, custom, or law (Hart, 1995, p. 30).
Reference topic;

//  Type of Contract Provision such as specific requirements, purposes for
// actions, obligations, prohibitions, e.g. life time maximum benefit.
CodeableConcept type;

//  Type of choice made by accepting party with respect to an offer made
// by an offeror/ grantee.
CodeableConcept decision;

//  How the decision about a Contract was conveyed.
List<CodeableConcept> decisionMode;

//  Response to offer text.
List<Contract_Answer> answer;

//  Human readable form of this Contract Offer.
String text;

//  The id of the clause or question text of the offer in the referenced
// questionnaire/response.
List<String> linkId;

//  Security labels that protects the offer.
List<int> securityLabelNumber;

Contract_Offer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.party,
    this.topic,
    this.type,
    this.decision,
    this.decisionMode,
    this.answer,
    this.text,
    this.linkId,
    this.securityLabelNumber
    });

  factory Contract_Offer.fromJson(Map<String, dynamic> json) => _$Contract_OfferFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_OfferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Party {

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

//  Participant in the offer.
List<Reference> reference;

//  How the party participates in the offer.
CodeableConcept role;

Contract_Party(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.role
    });

  factory Contract_Party.fromJson(Map<String, dynamic> json) => _$Contract_PartyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_PartyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Answer {

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

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
bool valueBoolean; //  pattern: ^true|false$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
String valueString; //  pattern: ^[ \r\n\t\S]+$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
String valueUri; //  pattern: ^\S*$

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
Attachment valueAttachment;

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
Coding valueCoding;

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
Quantity valueQuantity;

//  Response to an offer clause or question text,  which enables selection
// of values to be agreed to, e.g., the period of participation, the date
// of occupancy of a rental, warrently duration, or whether biospecimen
// may be used for further research.
Reference valueReference;

Contract_Answer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.valueBoolean,
    this.valueDecimal,
    this.valueInteger,
    this.valueDate,
    this.valueDateTime,
    this.valueTime,
    this.valueString,
    this.valueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference
    });

  factory Contract_Answer.fromJson(Map<String, dynamic> json) => _$Contract_AnswerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AnswerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Asset {

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

//  Differentiates the kind of the asset .
CodeableConcept scope;

//  Target entity type about which the term may be concerned.
List<CodeableConcept> type;

//  Associated entities.
List<Reference> typeReference;

//  May be a subtype or part of an offered asset.
List<CodeableConcept> subtype;

//  Specifies the applicability of the term to an asset resource instance,
// and instances it refers to orinstances that refer to it, and/or are
// owned by the offeree.
Coding relationship;

//  Circumstance of the asset.
List<Contract_Context> context;

//  Description of the quality and completeness of the asset that imay be
// a factor in its valuation.
String condition;

//  Type of Asset availability for use or ownership.
List<CodeableConcept> periodType;

//  Asset relevant contractual time period.
List<Period> period;

//  Time period of asset use.
List<Period> usePeriod;

//  Clause or question text (Prose Object) concerning the asset in a
// linked form, such as a QuestionnaireResponse used in the formation of
// the contract.
String text;

//  Id [identifier??] of the clause or question text about the asset in
// the referenced form or QuestionnaireResponse.
List<String> linkId;

//  Response to assets.
List<Contract_Answer> answer;

//  Security labels that protects the asset.
List<int> securityLabelNumber;

//  Contract Valued Item List.
List<Contract_ValuedItem> valuedItem;

Contract_Asset(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.scope,
    this.type,
    this.typeReference,
    this.subtype,
    this.relationship,
    this.context,
    this.condition,
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.linkId,
    this.answer,
    this.securityLabelNumber,
    this.valuedItem
    });

  factory Contract_Asset.fromJson(Map<String, dynamic> json) => _$Contract_AssetFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_AssetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Context {

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

//  Asset context reference may include the creator, custodian, or owning
// Person or Organization (e.g., bank, repository),  location held, e.g.,
// building,  jurisdiction.
Reference reference;

//  Coded representation of the context generally or of the Referenced
// entity, such as the asset holder type or location.
List<CodeableConcept> code;

//  Context description.
String text;

Contract_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text
    });

  factory Contract_Context.fromJson(Map<String, dynamic> json) => _$Contract_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_ValuedItem {

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

//  Specific type of Contract Valued Item that may be priced.
CodeableConcept entityCodeableConcept;

//  Specific type of Contract Valued Item that may be priced.
Reference entityReference;

//  Identifies a Contract Valued Item instance.
Identifier identifier;

//  Indicates the time during which this Contract ValuedItem information
// is effective.
DateTime effectiveTime;

//  Specifies the units by which the Contract Valued Item is measured or
// counted, and quantifies the countable or measurable Contract Valued
// Item instances.
Quantity quantity;

//  A Contract Valued Item unit valuation measure.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of the Contract Valued Item delivered. The concept of a
// Factor allows for a discount or surcharge multiplier to be applied to a
// monetary amount.
double factor;

//  An amount that expresses the weighting (based on difficulty, cost
// and/or resource intensiveness) associated with the Contract Valued Item
// delivered. The concept of Points allows for assignment of point values
// for a Contract Valued Item, such that a monetary amount can be assigned
// to each point.
double points;

//  Expresses the product of the Contract Valued Item unitQuantity and the
// unitPriceAmt. For example, the formula: unit Quantity * unit Price
// (Cost per Point) * factor Number  * points = net Amount. Quantity,
// factor and points are assumed to be 1 if not supplied.
Money net;

//  Terms of valuation.
String payment;

//  When payment is due.
DateTime paymentDate;

//  Who will make payment.
Reference responsible;

//  Who will receive payment.
Reference recipient;

//  Id  of the clause or question text related to the context of this
// valuedItem in the referenced form or QuestionnaireResponse.
List<String> linkId;

//  A set of security labels that define which terms are controlled by
// this condition.
List<int> securityLabelNumber;

Contract_ValuedItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.entityCodeableConcept,
    this.entityReference,
    this.identifier,
    this.effectiveTime,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.points,
    this.net,
    this.payment,
    this.paymentDate,
    this.responsible,
    this.recipient,
    this.linkId,
    this.securityLabelNumber
    });

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) => _$Contract_ValuedItemFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ValuedItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Action {

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

//  True if the term prohibits the  action.
bool doNotPerform;

//  Activity or service obligation to be done or not done, performed or
// not performed, effectuated or not by this Contract term.
CodeableConcept type;

//  Entity of the action.
List<Contract_Subject> subject;

//  Reason or purpose for the action stipulated by this Contract
// Provision.
CodeableConcept intent;

//  Id [identifier??] of the clause or question text related to this
// action in the referenced form or QuestionnaireResponse.
List<String> linkId;

//  Current state of the term action.
CodeableConcept status;

//  Encounter or Episode with primary association to specified term
// activity.
Reference context;

//  Id [identifier??] of the clause or question text related to the
// requester of this action in the referenced form or
// QuestionnaireResponse.
List<String> contextLinkId;

//  When action happens.
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  When action happens.
Period occurrencePeriod;

//  When action happens.
Timing occurrenceTiming;

//  Who or what initiated the action and has responsibility for its
// activation.
List<Reference> requester;

//  Id [identifier??] of the clause or question text related to the
// requester of this action in the referenced form or
// QuestionnaireResponse.
List<String> requesterLinkId;

//  The type of individual that is desired or required to perform or not
// perform the action.
List<CodeableConcept> performerType;

//  The type of role or competency of an individual desired or required to
// perform or not perform the action.
CodeableConcept performerRole;

//  Indicates who or what is being asked to perform (or not perform) the
// ction.
Reference performer;

//  Id [identifier??] of the clause or question text related to the reason
// type or reference of this  action in the referenced form or
// QuestionnaireResponse.
List<String> performerLinkId;

//  Rationale for the action to be performed or not performed. Describes
// why the action is permitted or prohibited.
List<CodeableConcept> reasonCode;

//  Indicates another resource whose existence justifies permitting or not
// permitting this action.
List<Reference> reasonReference;

//  Describes why the action is to be performed or not performed in
// textual form.
List<String> reason;

//  Id [identifier??] of the clause or question text related to the reason
// type or reference of this  action in the referenced form or
// QuestionnaireResponse.
List<String> reasonLinkId;

//  Comments made about the term action made by the requester, performer,
// subject or other participants.
List<Annotation> note;

//  Security labels that protects the action.
List<int> securityLabelNumber;

Contract_Action(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.doNotPerform,
    this.type,
    this.subject,
    this.intent,
    this.linkId,
    this.status,
    this.context,
    this.contextLinkId,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.requester,
    this.requesterLinkId,
    this.performerType,
    this.performerRole,
    this.performer,
    this.performerLinkId,
    this.reasonCode,
    this.reasonReference,
    this.reason,
    this.reasonLinkId,
    this.note,
    this.securityLabelNumber
    });

  factory Contract_Action.fromJson(Map<String, dynamic> json) => _$Contract_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Subject {

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

//  The entity the action is performed or not performed on or for.
List<Reference> reference;

//  Role type of agent assigned roles in this Contract.
CodeableConcept role;

Contract_Subject(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.role
    });

  factory Contract_Subject.fromJson(Map<String, dynamic> json) => _$Contract_SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SubjectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Signer {

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

//  Role of this Contract signer, e.g. notary, grantee.
Coding type;

//  Party which is a signator to this Contract.
Reference party;

//  Legally binding Contract DSIG signature contents in Base64.
List<Signature> signature;

Contract_Signer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.party,
    this.signature
    });

  factory Contract_Signer.fromJson(Map<String, dynamic> json) => _$Contract_SignerFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SignerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Friendly {

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

//  Human readable rendering of this Contract in a format and
// representation intended to enhance comprehension and ensure
// understandability.
Attachment contentAttachment;

//  Human readable rendering of this Contract in a format and
// representation intended to enhance comprehension and ensure
// understandability.
Reference contentReference;

Contract_Friendly(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference
    });

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) => _$Contract_FriendlyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_FriendlyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Legal {

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

//  Contract legal text in human renderable form.
Attachment contentAttachment;

//  Contract legal text in human renderable form.
Reference contentReference;

Contract_Legal(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference
    });

  factory Contract_Legal.fromJson(Map<String, dynamic> json) => _$Contract_LegalFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_LegalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Rule {

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

//  Computable Contract conveyed using a policy rule language (e.g. XACML,
// DKAL, SecPal).
Attachment contentAttachment;

//  Computable Contract conveyed using a policy rule language (e.g. XACML,
// DKAL, SecPal).
Reference contentReference;

Contract_Rule(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference
    });

  factory Contract_Rule.fromJson(Map<String, dynamic> json) => _$Contract_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_RuleToJson(this);
}

