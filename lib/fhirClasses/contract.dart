import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 85)
class Contract {

  //  This is a Contract resource
  @HiveField(0)
  final String resourceType= 'Contract';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Unique identifier for this Contract or a derivative that references a
  // Source Contract.
  @HiveField(11)
  List<Identifier> identifier;

  //  Canonical identifier for this contract, represented as a URI (globally
  // unique).
  @HiveField(12)
  String url;

  //  Extensions for url
  @HiveField(13)
  Element elementUrl;

  //  An edition identifier used for business purposes to label business
  // significant variants.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  The status of the resource instance.
  @HiveField(16)
  String status;

  //  Extensions for status
  @HiveField(17)
  Element elementStatus;

  //  Legal states of the formation of a legal instrument, which is a
  // formally executed written document that can be formally attributed to
  // its author, records and formally expresses a legally enforceable act,
  // process, or contractual duty, obligation, or right, and therefore
  // evidences that act, process, or agreement.
  @HiveField(18)
  CodeableConcept legalState;

  //  The URL pointing to a FHIR-defined Contract Definition that is adhered
  // to in whole or part by this Contract.
  @HiveField(19)
  Reference instantiatesCanonical;

  //  The URL pointing to an externally maintained definition that is
  // adhered to in whole or in part by this Contract.
  @HiveField(20)
  String instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(21)
  Element elementInstantiatesUri;

  //  The minimal content derived from the basal information source at a
  // specific stage in its lifecycle.
  @HiveField(22)
  CodeableConcept contentDerivative;

  //  When this  Contract was issued.
  @HiveField(23)
  DateTime issued;

  //  Extensions for issued
  @HiveField(24)
  Element elementIssued;

  //  Relevant time or time-period when this Contract is applicable.
  @HiveField(25)
  Period applies;

  //  Event resulting in discontinuation or termination of this Contract
  // instance by one or more parties to the contract.
  @HiveField(26)
  CodeableConcept expirationType;

  //  The target entity impacted by or of interest to parties to the
  // agreement.
  @HiveField(27)
  List<Reference> subject;

  //  A formally or informally recognized grouping of people, principals,
  // organizations, or jurisdictions formed for the purpose of achieving
  // some form of collective action such as the promulgation, administration
  // and enforcement of contracts and policies.
  @HiveField(28)
  List<Reference> authority;

  //  Recognized governance framework or system operating with a
  // circumscribed scope in accordance with specified principles, policies,
  // processes or procedures for managing rights, actions, or behaviors of
  // parties or principals relative to resources.
  @HiveField(29)
  List<Reference> domain;

  //  Sites in which the contract is complied with,  exercised, or in force.
  @HiveField(30)
  List<Reference> site;

  //  A natural language name identifying this Contract definition,
  // derivative, or instance in any legal state. Provides additional
  // information about its content. This name should be usable as an
  // identifier for the module by machine processing applications such as
  // code generation.
  @HiveField(31)
  String name;

  //  Extensions for name
  @HiveField(32)
  Element elementName;

  //  A short, descriptive, user-friendly title for this Contract
  // definition, derivative, or instance in any legal state.t giving
  // additional information about its content.
  @HiveField(33)
  String title;

  //  Extensions for title
  @HiveField(34)
  Element elementTitle;

  //  An explanatory or alternate user-friendly title for this Contract
  // definition, derivative, or instance in any legal state.t giving
  // additional information about its content.
  @HiveField(35)
  String subtitle;

  //  Extensions for subtitle
  @HiveField(36)
  Element elementSubtitle;

  //  Alternative representation of the title for this Contract definition,
  // derivative, or instance in any legal state., e.g., a domain specific
  // contract number related to legislation.
  @HiveField(37)
  List<String> alias;

  //  Extensions for alias
  @HiveField(38)
  List<Element> elementAlias;

  //  The individual or organization that authored the Contract definition,
  // derivative, or instance in any legal state.
  @HiveField(39)
  Reference author;

  //  A selector of legal concerns for this Contract definition, derivative,
  // or instance in any legal state.
  @HiveField(40)
  CodeableConcept scope;

  //  Narrows the range of legal concerns to focus on the achievement of
  // specific contractual objectives.
  @HiveField(41)
  CodeableConcept topicCodeableConcept;

  //  Narrows the range of legal concerns to focus on the achievement of
  // specific contractual objectives.
  @HiveField(42)
  Reference topicReference;

  //  A high-level category for the legal instrument, whether constructed as
  // a Contract definition, derivative, or instance in any legal state. 
  // Provides additional information about its content within the context of
  // the Contract's scope to distinguish the kinds of systems that would be
  // interested in the contract.
  @HiveField(43)
  CodeableConcept type;

  //  Sub-category for the Contract that distinguishes the kinds of systems
  // that would be interested in the Contract within the context of the
  // Contract's scope.
  @HiveField(44)
  List<CodeableConcept> subType;

  //  Precusory content developed with a focus and intent of supporting the
  // formation a Contract instance, which may be associated with and
  // transformable into a Contract.
  @HiveField(45)
  Contract_ContentDefinition contentDefinition;

  //  One or more Contract Provisions, which may be related and conveyed as
  // a group, and may contain nested groups.
  @HiveField(46)
  List<Contract_Term> term;

  //  Information that may be needed by/relevant to the performer in their
  // execution of this term action.
  @HiveField(47)
  List<Reference> supportingInfo;

  //  Links to Provenance records for past versions of this Contract
  // definition, derivative, or instance, which identify key state
  // transitions or updates that are likely to be relevant to a user looking
  // at the current version of the Contract.  The Provence.entity indicates
  // the target that was changed in the update.
  // http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  @HiveField(48)
  List<Reference> relevantHistory;

  //  Parties with legal standing in the Contract, including the principal
  // parties, the grantor(s) and grantee(s), which are any person or
  // organization bound by the contract, and any ancillary parties, which
  // facilitate the execution of the contract such as a notary or witness.
  @HiveField(49)
  List<Contract_Signer> signer;

  //  The "patient friendly language" versionof the Contract in whole or in
  // parts. "Patient friendly language" means the representation of the
  // Contract and Contract Provisions in a manner that is readily accessible
  // and understandable by a layperson in accordance with best practices for
  // communication styles that ensure that those agreeing to or signing the
  // Contract understand the roles, actions, obligations, responsibilities,
  // and implication of the agreement.
  @HiveField(50)
  List<Contract_Friendly> friendly;

  //  List of Legal expressions or representations of this Contract.
  @HiveField(51)
  List<Contract_Legal> legal;

  //  List of Computable Policy Rule Language Representations of this
  // Contract.
  @HiveField(52)
  List<Contract_Rule> rule;

  //  Legally binding Contract: This is the signed and legally recognized
  // representation of the Contract, which is considered the "source of
  // truth" and which would be the basis for legal action related to
  // enforcement of this Contract.
  @HiveField(53)
  Attachment legallyBindingAttachment;

  //  Legally binding Contract: This is the signed and legally recognized
  // representation of the Contract, which is considered the "source of
  // truth" and which would be the basis for legal action related to
  // enforcement of this Contract.
  @HiveField(54)
  Reference legallyBindingReference;

Contract(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.url,
    this.elementUrl,
    this.version,
    this.elementVersion,
    this.status,
    this.elementStatus,
    this.legalState,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.contentDerivative,
    this.issued,
    this.elementIssued,
    this.applies,
    this.expirationType,
    this.subject,
    this.authority,
    this.domain,
    this.site,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.subtitle,
    this.elementSubtitle,
    this.alias,
    this.elementAlias,
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

  //  Extensions for publicationDate
  Element elementPublicationDate;

  //  amended | appended | cancelled | disputed | entered-in-error |
  // executable | executed | negotiable | offered | policy | rejected |
  // renewed | revoked | resolved | terminated.
  String publicationStatus;

  //  Extensions for publicationStatus
  Element elementPublicationStatus;

  //  A copyright statement relating to Contract precursor content.
  // Copyright statements are generally legal restrictions on the use and
  // publishing of the Contract precursor content.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

Contract_ContentDefinition(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.elementPublicationDate,
    this.publicationStatus,
    this.elementPublicationStatus,
    this.copyright,
    this.elementCopyright
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

  //  Extensions for issued
  Element elementIssued;

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

  //  Extensions for text
  Element elementText;

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
  this.offer,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.issued,
    this.elementIssued,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
    this.elementText,
    this.securityLabel,
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

  //  Extensions for number
  List<Element> elementNumber;

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
  this.classification,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
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

  //  Extensions for text
  Element elementText;

  //  The id of the clause or question text of the offer in the referenced
  // questionnaire/response.
  List<String> linkId;

  //  Extensions for linkId
  List<Element> elementLinkId;

  //  Security labels that protects the offer.
  List<int> securityLabelNumber;

  //  Extensions for securityLabelNumber
  List<Element> elementSecurityLabelNumber;

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
    this.elementText,
    this.linkId,
    this.elementLinkId,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber
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
  this.reference,
    this.role,
    {this.id,
    this.extension,
    this.modifierExtension
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

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element elementValueDecimal;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element elementValueDate;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element elementValueTime;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  Response to an offer clause or question text,  which enables selection
  // of values to be agreed to, e.g., the period of participation, the date
  // of occupancy of a rental, warrently duration, or whether biospecimen
  // may be used for further research.
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  Element elementValueUri;

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
    this.elementValueBoolean,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueTime,
    this.elementValueTime,
    this.valueString,
    this.elementValueString,
    this.valueUri,
    this.elementValueUri,
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

  //  Extensions for condition
  Element elementCondition;

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

  //  Extensions for text
  Element elementText;

  //  Id [identifier??] of the clause or question text about the asset in
  // the referenced form or QuestionnaireResponse.
  List<String> linkId;

  //  Extensions for linkId
  List<Element> elementLinkId;

  //  Response to assets.
  List<Contract_Answer> answer;

  //  Security labels that protects the asset.
  List<int> securityLabelNumber;

  //  Extensions for securityLabelNumber
  List<Element> elementSecurityLabelNumber;

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
    this.elementCondition,
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.elementText,
    this.linkId,
    this.elementLinkId,
    this.answer,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber,
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

  //  Extensions for text
  Element elementText;

Contract_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.elementText
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

  //  Extensions for effectiveTime
  Element elementEffectiveTime;

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

  //  Extensions for factor
  Element elementFactor;

  //  An amount that expresses the weighting (based on difficulty, cost
  // and/or resource intensiveness) associated with the Contract Valued Item
  // delivered. The concept of Points allows for assignment of point values
  // for a Contract Valued Item, such that a monetary amount can be assigned
  // to each point.
  double points;

  //  Extensions for points
  Element elementPoints;

  //  Expresses the product of the Contract Valued Item unitQuantity and the
  // unitPriceAmt. For example, the formula: unit Quantity * unit Price
  // (Cost per Point) * factor Number  * points = net Amount. Quantity,
  // factor and points are assumed to be 1 if not supplied.
  Money net;

  //  Terms of valuation.
  String payment;

  //  Extensions for payment
  Element elementPayment;

  //  When payment is due.
  DateTime paymentDate;

  //  Extensions for paymentDate
  Element elementPaymentDate;

  //  Who will make payment.
  Reference responsible;

  //  Who will receive payment.
  Reference recipient;

  //  Id  of the clause or question text related to the context of this
  // valuedItem in the referenced form or QuestionnaireResponse.
  List<String> linkId;

  //  Extensions for linkId
  List<Element> elementLinkId;

  //  A set of security labels that define which terms are controlled by
  // this condition.
  List<int> securityLabelNumber;

  //  Extensions for securityLabelNumber
  List<Element> elementSecurityLabelNumber;

Contract_ValuedItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.entityCodeableConcept,
    this.entityReference,
    this.identifier,
    this.effectiveTime,
    this.elementEffectiveTime,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.points,
    this.elementPoints,
    this.net,
    this.payment,
    this.elementPayment,
    this.paymentDate,
    this.elementPaymentDate,
    this.responsible,
    this.recipient,
    this.linkId,
    this.elementLinkId,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber
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

  //  Extensions for doNotPerform
  Element elementDoNotPerform;

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

  //  Extensions for linkId
  List<Element> elementLinkId;

  //  Current state of the term action.
  CodeableConcept status;

  //  Encounter or Episode with primary association to specified term
  // activity.
  Reference context;

  //  Id [identifier??] of the clause or question text related to the
  // requester of this action in the referenced form or
  // QuestionnaireResponse.
  List<String> contextLinkId;

  //  Extensions for contextLinkId
  List<Element> elementContextLinkId;

  //  When action happens.
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  Element elementOccurrenceDateTime;

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

  //  Extensions for requesterLinkId
  List<Element> elementRequesterLinkId;

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

  //  Extensions for performerLinkId
  List<Element> elementPerformerLinkId;

  //  Rationale for the action to be performed or not performed. Describes
  // why the action is permitted or prohibited.
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies permitting or not
  // permitting this action.
  List<Reference> reasonReference;

  //  Describes why the action is to be performed or not performed in
  // textual form.
  List<String> reason;

  //  Extensions for reason
  List<Element> elementReason;

  //  Id [identifier??] of the clause or question text related to the reason
  // type or reference of this  action in the referenced form or
  // QuestionnaireResponse.
  List<String> reasonLinkId;

  //  Extensions for reasonLinkId
  List<Element> elementReasonLinkId;

  //  Comments made about the term action made by the requester, performer,
  // subject or other participants.
  List<Annotation> note;

  //  Security labels that protects the action.
  List<int> securityLabelNumber;

  //  Extensions for securityLabelNumber
  List<Element> elementSecurityLabelNumber;

Contract_Action(
  this.type,
    this.intent,
    this.status,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.subject,
    this.linkId,
    this.elementLinkId,
    this.context,
    this.contextLinkId,
    this.elementContextLinkId,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.requester,
    this.requesterLinkId,
    this.elementRequesterLinkId,
    this.performerType,
    this.performerRole,
    this.performer,
    this.performerLinkId,
    this.elementPerformerLinkId,
    this.reasonCode,
    this.reasonReference,
    this.reason,
    this.elementReason,
    this.reasonLinkId,
    this.elementReasonLinkId,
    this.note,
    this.securityLabelNumber,
    this.elementSecurityLabelNumber
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
  this.reference,
    {this.id,
    this.extension,
    this.modifierExtension,
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
  this.type,
    this.party,
    this.signature,
    {this.id,
    this.extension,
    this.modifierExtension
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContractAdapter extends TypeAdapter<Contract> {
  @override
  final typeId = 85;

  @override
  Contract read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Contract(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      url: fields[12] as String,
      elementUrl: fields[13] as Element,
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      status: fields[16] as String,
      elementStatus: fields[17] as Element,
      legalState: fields[18] as CodeableConcept,
      instantiatesCanonical: fields[19] as Reference,
      instantiatesUri: fields[20] as String,
      elementInstantiatesUri: fields[21] as Element,
      contentDerivative: fields[22] as CodeableConcept,
      issued: fields[23] as DateTime,
      elementIssued: fields[24] as Element,
      applies: fields[25] as Period,
      expirationType: fields[26] as CodeableConcept,
      subject: (fields[27] as List)?.cast<Reference>(),
      authority: (fields[28] as List)?.cast<Reference>(),
      domain: (fields[29] as List)?.cast<Reference>(),
      site: (fields[30] as List)?.cast<Reference>(),
      name: fields[31] as String,
      elementName: fields[32] as Element,
      title: fields[33] as String,
      elementTitle: fields[34] as Element,
      subtitle: fields[35] as String,
      elementSubtitle: fields[36] as Element,
      alias: (fields[37] as List)?.cast<String>(),
      elementAlias: (fields[38] as List)?.cast<Element>(),
      author: fields[39] as Reference,
      scope: fields[40] as CodeableConcept,
      topicCodeableConcept: fields[41] as CodeableConcept,
      topicReference: fields[42] as Reference,
      type: fields[43] as CodeableConcept,
      subType: (fields[44] as List)?.cast<CodeableConcept>(),
      contentDefinition: fields[45] as Contract_ContentDefinition,
      term: (fields[46] as List)?.cast<Contract_Term>(),
      supportingInfo: (fields[47] as List)?.cast<Reference>(),
      relevantHistory: (fields[48] as List)?.cast<Reference>(),
      signer: (fields[49] as List)?.cast<Contract_Signer>(),
      friendly: (fields[50] as List)?.cast<Contract_Friendly>(),
      legal: (fields[51] as List)?.cast<Contract_Legal>(),
      rule: (fields[52] as List)?.cast<Contract_Rule>(),
      legallyBindingAttachment: fields[53] as Attachment,
      legallyBindingReference: fields[54] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Contract obj) {
    writer
      ..writeByte(55)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.url)
      ..writeByte(13)
      ..write(obj.elementUrl)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.status)
      ..writeByte(17)
      ..write(obj.elementStatus)
      ..writeByte(18)
      ..write(obj.legalState)
      ..writeByte(19)
      ..write(obj.instantiatesCanonical)
      ..writeByte(20)
      ..write(obj.instantiatesUri)
      ..writeByte(21)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(22)
      ..write(obj.contentDerivative)
      ..writeByte(23)
      ..write(obj.issued)
      ..writeByte(24)
      ..write(obj.elementIssued)
      ..writeByte(25)
      ..write(obj.applies)
      ..writeByte(26)
      ..write(obj.expirationType)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.authority)
      ..writeByte(29)
      ..write(obj.domain)
      ..writeByte(30)
      ..write(obj.site)
      ..writeByte(31)
      ..write(obj.name)
      ..writeByte(32)
      ..write(obj.elementName)
      ..writeByte(33)
      ..write(obj.title)
      ..writeByte(34)
      ..write(obj.elementTitle)
      ..writeByte(35)
      ..write(obj.subtitle)
      ..writeByte(36)
      ..write(obj.elementSubtitle)
      ..writeByte(37)
      ..write(obj.alias)
      ..writeByte(38)
      ..write(obj.elementAlias)
      ..writeByte(39)
      ..write(obj.author)
      ..writeByte(40)
      ..write(obj.scope)
      ..writeByte(41)
      ..write(obj.topicCodeableConcept)
      ..writeByte(42)
      ..write(obj.topicReference)
      ..writeByte(43)
      ..write(obj.type)
      ..writeByte(44)
      ..write(obj.subType)
      ..writeByte(45)
      ..write(obj.contentDefinition)
      ..writeByte(46)
      ..write(obj.term)
      ..writeByte(47)
      ..write(obj.supportingInfo)
      ..writeByte(48)
      ..write(obj.relevantHistory)
      ..writeByte(49)
      ..write(obj.signer)
      ..writeByte(50)
      ..write(obj.friendly)
      ..writeByte(51)
      ..write(obj.legal)
      ..writeByte(52)
      ..write(obj.rule)
      ..writeByte(53)
      ..write(obj.legallyBindingAttachment)
      ..writeByte(54)
      ..write(obj.legallyBindingReference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return Contract(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    legalState: json['legalState'] == null
        ? null
        : CodeableConcept.fromJson(json['legalState'] as Map<String, dynamic>),
    instantiatesCanonical: json['instantiatesCanonical'] == null
        ? null
        : Reference.fromJson(
            json['instantiatesCanonical'] as Map<String, dynamic>),
    instantiatesUri: json['instantiatesUri'] as String,
    elementInstantiatesUri: json['elementInstantiatesUri'] == null
        ? null
        : Element.fromJson(
            json['elementInstantiatesUri'] as Map<String, dynamic>),
    contentDerivative: json['contentDerivative'] == null
        ? null
        : CodeableConcept.fromJson(
            json['contentDerivative'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    applies: json['applies'] == null
        ? null
        : Period.fromJson(json['applies'] as Map<String, dynamic>),
    expirationType: json['expirationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['expirationType'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: (json['authority'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: (json['domain'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    site: (json['site'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    subtitle: json['subtitle'] as String,
    elementSubtitle: json['elementSubtitle'] == null
        ? null
        : Element.fromJson(json['elementSubtitle'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    topicCodeableConcept: json['topicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['topicCodeableConcept'] as Map<String, dynamic>),
    topicReference: json['topicReference'] == null
        ? null
        : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: (json['subType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentDefinition: json['contentDefinition'] == null
        ? null
        : Contract_ContentDefinition.fromJson(
            json['contentDefinition'] as Map<String, dynamic>),
    term: (json['term'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    signer: (json['signer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Signer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    friendly: (json['friendly'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Friendly.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legal: (json['legal'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Legal.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legallyBindingAttachment: json['legallyBindingAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['legallyBindingAttachment'] as Map<String, dynamic>),
    legallyBindingReference: json['legallyBindingReference'] == null
        ? null
        : Reference.fromJson(
            json['legallyBindingReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContractToJson(Contract instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'legalState': instance.legalState?.toJson(),
      'instantiatesCanonical': instance.instantiatesCanonical?.toJson(),
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri': instance.elementInstantiatesUri?.toJson(),
      'contentDerivative': instance.contentDerivative?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'applies': instance.applies?.toJson(),
      'expirationType': instance.expirationType?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'authority': instance.authority?.map((e) => e?.toJson())?.toList(),
      'domain': instance.domain?.map((e) => e?.toJson())?.toList(),
      'site': instance.site?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'subtitle': instance.subtitle,
      'elementSubtitle': instance.elementSubtitle?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.toJson(),
      'scope': instance.scope?.toJson(),
      'topicCodeableConcept': instance.topicCodeableConcept?.toJson(),
      'topicReference': instance.topicReference?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.map((e) => e?.toJson())?.toList(),
      'contentDefinition': instance.contentDefinition?.toJson(),
      'term': instance.term?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
      'signer': instance.signer?.map((e) => e?.toJson())?.toList(),
      'friendly': instance.friendly?.map((e) => e?.toJson())?.toList(),
      'legal': instance.legal?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
      'legallyBindingAttachment': instance.legallyBindingAttachment?.toJson(),
      'legallyBindingReference': instance.legallyBindingReference?.toJson(),
    };

Contract_ContentDefinition _$Contract_ContentDefinitionFromJson(
    Map<String, dynamic> json) {
  return Contract_ContentDefinition(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    publisher: json['publisher'] == null
        ? null
        : Reference.fromJson(json['publisher'] as Map<String, dynamic>),
    publicationDate: json['publicationDate'] == null
        ? null
        : DateTime.parse(json['publicationDate'] as String),
    elementPublicationDate: json['elementPublicationDate'] == null
        ? null
        : Element.fromJson(
            json['elementPublicationDate'] as Map<String, dynamic>),
    publicationStatus: json['publicationStatus'] as String,
    elementPublicationStatus: json['elementPublicationStatus'] == null
        ? null
        : Element.fromJson(
            json['elementPublicationStatus'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_ContentDefinitionToJson(
        Contract_ContentDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'publisher': instance.publisher?.toJson(),
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'elementPublicationDate': instance.elementPublicationDate?.toJson(),
      'publicationStatus': instance.publicationStatus,
      'elementPublicationStatus': instance.elementPublicationStatus?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
    };

Contract_Term _$Contract_TermFromJson(Map<String, dynamic> json) {
  return Contract_Term(
    json['offer'] == null
        ? null
        : Contract_Offer.fromJson(json['offer'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    issued: json['issued'] == null
        ? null
        : DateTime.parse(json['issued'] as String),
    elementIssued: json['elementIssued'] == null
        ? null
        : Element.fromJson(json['elementIssued'] as Map<String, dynamic>),
    applies: json['applies'] == null
        ? null
        : Period.fromJson(json['applies'] as Map<String, dynamic>),
    topicCodeableConcept: json['topicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['topicCodeableConcept'] as Map<String, dynamic>),
    topicReference: json['topicReference'] == null
        ? null
        : Reference.fromJson(json['topicReference'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_SecurityLabel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    asset: (json['asset'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Asset.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: (json['action'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Action.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_TermToJson(Contract_Term instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'issued': instance.issued?.toIso8601String(),
      'elementIssued': instance.elementIssued?.toJson(),
      'applies': instance.applies?.toJson(),
      'topicCodeableConcept': instance.topicCodeableConcept?.toJson(),
      'topicReference': instance.topicReference?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'offer': instance.offer?.toJson(),
      'asset': instance.asset?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.map((e) => e?.toJson())?.toList(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

Contract_SecurityLabel _$Contract_SecurityLabelFromJson(
    Map<String, dynamic> json) {
  return Contract_SecurityLabel(
    json['classification'] == null
        ? null
        : Coding.fromJson(json['classification'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: (json['number'] as List)?.map((e) => e as int)?.toList(),
    elementNumber: (json['elementNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: (json['category'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    control: (json['control'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_SecurityLabelToJson(
        Contract_SecurityLabel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'elementNumber':
          instance.elementNumber?.map((e) => e?.toJson())?.toList(),
      'classification': instance.classification?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'control': instance.control?.map((e) => e?.toJson())?.toList(),
    };

Contract_Offer _$Contract_OfferFromJson(Map<String, dynamic> json) {
  return Contract_Offer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    party: (json['party'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Party.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    topic: json['topic'] == null
        ? null
        : Reference.fromJson(json['topic'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    decision: json['decision'] == null
        ? null
        : CodeableConcept.fromJson(json['decision'] as Map<String, dynamic>),
    decisionMode: (json['decisionMode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_OfferToJson(Contract_Offer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'party': instance.party?.map((e) => e?.toJson())?.toList(),
      'topic': instance.topic?.toJson(),
      'type': instance.type?.toJson(),
      'decision': instance.decision?.toJson(),
      'decisionMode': instance.decisionMode?.map((e) => e?.toJson())?.toList(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Contract_Party _$Contract_PartyFromJson(Map<String, dynamic> json) {
  return Contract_Party(
    (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_PartyToJson(Contract_Party instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
    };

Contract_Answer _$Contract_AnswerFromJson(Map<String, dynamic> json) {
  return Contract_Answer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_AnswerToJson(Contract_Answer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
    };

Contract_Asset _$Contract_AssetFromJson(Map<String, dynamic> json) {
  return Contract_Asset(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    scope: json['scope'] == null
        ? null
        : CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeReference: (json['typeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subtype: (json['subtype'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relationship: json['relationship'] == null
        ? null
        : Coding.fromJson(json['relationship'] as Map<String, dynamic>),
    context: (json['context'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: json['condition'] as String,
    elementCondition: json['elementCondition'] == null
        ? null
        : Element.fromJson(json['elementCondition'] as Map<String, dynamic>),
    periodType: (json['periodType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: (json['period'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usePeriod: (json['usePeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    answer: (json['answer'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Answer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valuedItem: (json['valuedItem'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_ValuedItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_AssetToJson(Contract_Asset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'scope': instance.scope?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'typeReference':
          instance.typeReference?.map((e) => e?.toJson())?.toList(),
      'subtype': instance.subtype?.map((e) => e?.toJson())?.toList(),
      'relationship': instance.relationship?.toJson(),
      'context': instance.context?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition,
      'elementCondition': instance.elementCondition?.toJson(),
      'periodType': instance.periodType?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.map((e) => e?.toJson())?.toList(),
      'usePeriod': instance.usePeriod?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'answer': instance.answer?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
      'valuedItem': instance.valuedItem?.map((e) => e?.toJson())?.toList(),
    };

Contract_Context _$Contract_ContextFromJson(Map<String, dynamic> json) {
  return Contract_Context(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_ContextToJson(Contract_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };

Contract_ValuedItem _$Contract_ValuedItemFromJson(Map<String, dynamic> json) {
  return Contract_ValuedItem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entityCodeableConcept: json['entityCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['entityCodeableConcept'] as Map<String, dynamic>),
    entityReference: json['entityReference'] == null
        ? null
        : Reference.fromJson(json['entityReference'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    effectiveTime: json['effectiveTime'] == null
        ? null
        : DateTime.parse(json['effectiveTime'] as String),
    elementEffectiveTime: json['elementEffectiveTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveTime'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    points: (json['points'] as num)?.toDouble(),
    elementPoints: json['elementPoints'] == null
        ? null
        : Element.fromJson(json['elementPoints'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    payment: json['payment'] as String,
    elementPayment: json['elementPayment'] == null
        ? null
        : Element.fromJson(json['elementPayment'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] == null
        ? null
        : DateTime.parse(json['paymentDate'] as String),
    elementPaymentDate: json['elementPaymentDate'] == null
        ? null
        : Element.fromJson(json['elementPaymentDate'] as Map<String, dynamic>),
    responsible: json['responsible'] == null
        ? null
        : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
    recipient: json['recipient'] == null
        ? null
        : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_ValuedItemToJson(
        Contract_ValuedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'entityCodeableConcept': instance.entityCodeableConcept?.toJson(),
      'entityReference': instance.entityReference?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'effectiveTime': instance.effectiveTime?.toIso8601String(),
      'elementEffectiveTime': instance.elementEffectiveTime?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'points': instance.points,
      'elementPoints': instance.elementPoints?.toJson(),
      'net': instance.net?.toJson(),
      'payment': instance.payment,
      'elementPayment': instance.elementPayment?.toJson(),
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'elementPaymentDate': instance.elementPaymentDate?.toJson(),
      'responsible': instance.responsible?.toJson(),
      'recipient': instance.recipient?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Contract_Action _$Contract_ActionFromJson(Map<String, dynamic> json) {
  return Contract_Action(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['intent'] == null
        ? null
        : CodeableConcept.fromJson(json['intent'] as Map<String, dynamic>),
    json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) => e == null
            ? null
            : Contract_Subject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    linkId: (json['linkId'] as List)?.map((e) => e as String)?.toList(),
    elementLinkId: (json['elementLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    contextLinkId:
        (json['contextLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementContextLinkId: (json['elementContextLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    requester: (json['requester'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requesterLinkId:
        (json['requesterLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementRequesterLinkId: (json['elementRequesterLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performerType: (json['performerType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performerRole: json['performerRole'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerRole'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    performerLinkId:
        (json['performerLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementPerformerLinkId: (json['elementPerformerLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reason: (json['reason'] as List)?.map((e) => e as String)?.toList(),
    elementReason: (json['elementReason'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonLinkId:
        (json['reasonLinkId'] as List)?.map((e) => e as String)?.toList(),
    elementReasonLinkId: (json['elementReasonLinkId'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    securityLabelNumber:
        (json['securityLabelNumber'] as List)?.map((e) => e as int)?.toList(),
    elementSecurityLabelNumber: (json['elementSecurityLabelNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_ActionToJson(Contract_Action instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'type': instance.type?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'intent': instance.intent?.toJson(),
      'linkId': instance.linkId,
      'elementLinkId':
          instance.elementLinkId?.map((e) => e?.toJson())?.toList(),
      'status': instance.status?.toJson(),
      'context': instance.context?.toJson(),
      'contextLinkId': instance.contextLinkId,
      'elementContextLinkId':
          instance.elementContextLinkId?.map((e) => e?.toJson())?.toList(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'requester': instance.requester?.map((e) => e?.toJson())?.toList(),
      'requesterLinkId': instance.requesterLinkId,
      'elementRequesterLinkId':
          instance.elementRequesterLinkId?.map((e) => e?.toJson())?.toList(),
      'performerType':
          instance.performerType?.map((e) => e?.toJson())?.toList(),
      'performerRole': instance.performerRole?.toJson(),
      'performer': instance.performer?.toJson(),
      'performerLinkId': instance.performerLinkId,
      'elementPerformerLinkId':
          instance.elementPerformerLinkId?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'reason': instance.reason,
      'elementReason':
          instance.elementReason?.map((e) => e?.toJson())?.toList(),
      'reasonLinkId': instance.reasonLinkId,
      'elementReasonLinkId':
          instance.elementReasonLinkId?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'securityLabelNumber': instance.securityLabelNumber,
      'elementSecurityLabelNumber': instance.elementSecurityLabelNumber
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Contract_Subject _$Contract_SubjectFromJson(Map<String, dynamic> json) {
  return Contract_Subject(
    (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_SubjectToJson(Contract_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
    };

Contract_Signer _$Contract_SignerFromJson(Map<String, dynamic> json) {
  return Contract_Signer(
    json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
    (json['signature'] as List)
        ?.map((e) =>
            e == null ? null : Signature.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Contract_SignerToJson(Contract_Signer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'party': instance.party?.toJson(),
      'signature': instance.signature?.map((e) => e?.toJson())?.toList(),
    };

Contract_Friendly _$Contract_FriendlyFromJson(Map<String, dynamic> json) {
  return Contract_Friendly(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_FriendlyToJson(Contract_Friendly instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };

Contract_Legal _$Contract_LegalFromJson(Map<String, dynamic> json) {
  return Contract_Legal(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_LegalToJson(Contract_Legal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };

Contract_Rule _$Contract_RuleFromJson(Map<String, dynamic> json) {
  return Contract_Rule(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Contract_RuleToJson(Contract_Rule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };
