import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
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
@HiveType(typeId: 267)
class ExplanationOfBenefit {

  //  This is a ExplanationOfBenefit resource
  @HiveField(0)
  final String resourceType= 'ExplanationOfBenefit';

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

  //  A unique identifier assigned to this explanation of benefit.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status; // <code> enum: active/cancelled/draft/entered-in-error;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The category of claim, e.g. oral, pharmacy, vision, institutional,
  // professional.
  @HiveField(14)
  CodeableConcept type;

  //  A finer grained suite of claim type codes which may convey additional
  // information such as Inpatient vs Outpatient and/or a specialty service.
  @HiveField(15)
  CodeableConcept subType;

  //  A code to indicate whether the nature of the request is: to request
  // adjudication of products and services previously rendered; or
  // requesting authorization and adjudication for provision in the future;
  // or requesting the non-binding adjudication of the listed products and
  // services which could be provided in the future.
  @HiveField(16)
  String use;

  //  Extensions for use
  @HiveField(17)
  Element elementUse;

  //  The party to whom the professional services and/or products have been
  // supplied or are being considered and for whom actual for forecast
  // reimbursement is sought.
  @HiveField(18)
  Reference patient;

  //  The period for which charges are being submitted.
  @HiveField(19)
  Period billablePeriod;

  //  The date this resource was created.
  @HiveField(20)
  DateTime created;

  //  Extensions for created
  @HiveField(21)
  Element elementCreated;

  //  Individual who created the claim, predetermination or
  // preauthorization.
  @HiveField(22)
  Reference enterer;

  //  The party responsible for authorization, adjudication and
  // reimbursement.
  @HiveField(23)
  Reference insurer;

  //  The provider which is responsible for the claim, predetermination or
  // preauthorization.
  @HiveField(24)
  Reference provider;

  //  The provider-required urgency of processing the request. Typical
  // values include: stat, routine deferred.
  @HiveField(25)
  CodeableConcept priority;

  //  A code to indicate whether and for whom funds are to be reserved for
  // future claims.
  @HiveField(26)
  CodeableConcept fundsReserveRequested;

  //  A code, used only on a response to a preauthorization, to indicate
  // whether the benefits payable have been reserved and for whom.
  @HiveField(27)
  CodeableConcept fundsReserve;

  //  Other claims which are related to this claim such as prior submissions
  // or claims for related services or for the same event.
  @HiveField(28)
  List<ExplanationOfBenefit_Related> related;

  //  Prescription to support the dispensing of pharmacy, device or vision
  // products.
  @HiveField(29)
  Reference prescription;

  //  Original prescription which has been superseded by this prescription
  // to support the dispensing of pharmacy services, medications or
  // products.
  @HiveField(30)
  Reference originalPrescription;

  //  The party to be reimbursed for cost of the products and services
  // according to the terms of the policy.
  @HiveField(31)
  ExplanationOfBenefit_Payee payee;

  //  A reference to a referral resource.
  @HiveField(32)
  Reference referral;

  //  Facility where the services were provided.
  @HiveField(33)
  Reference facility;

  //  The business identifier for the instance of the adjudication request:
  // claim predetermination or preauthorization.
  @HiveField(34)
  Reference claim;

  //  The business identifier for the instance of the adjudication response:
  // claim, predetermination or preauthorization response.
  @HiveField(35)
  Reference claimResponse;

  //  The outcome of the claim, predetermination, or preauthorization
  // processing.
  @HiveField(36)
  String outcome;

  //  Extensions for outcome
  @HiveField(37)
  Element elementOutcome;

  //  A human readable description of the status of the adjudication.
  @HiveField(38)
  String disposition;

  //  Extensions for disposition
  @HiveField(39)
  Element elementDisposition;

  //  Reference from the Insurer which is used in later communications which
  // refers to this adjudication.
  @HiveField(40)
  List<String> preAuthRef;

  //  Extensions for preAuthRef
  @HiveField(41)
  List<Element> elementPreAuthRef;

  //  The timeframe during which the supplied preauthorization reference may
  // be quoted on claims to obtain the adjudication as provided.
  @HiveField(42)
  List<Period> preAuthRefPeriod;

  //  The members of the team who provided the products and services.
  @HiveField(43)
  List<ExplanationOfBenefit_CareTeam> careTeam;

  //  Additional information codes regarding exceptions, special
  // considerations, the condition, situation, prior or concurrent issues.
  @HiveField(44)
  List<ExplanationOfBenefit_SupportingInfo> supportingInfo;

  //  Information about diagnoses relevant to the claim items.
  @HiveField(45)
  List<ExplanationOfBenefit_Diagnosis> diagnosis;

  //  Procedures performed on the patient relevant to the billing items with
  // the claim.
  @HiveField(46)
  List<ExplanationOfBenefit_Procedure> procedure;

  //  This indicates the relative order of a series of EOBs related to
  // different coverages for the same suite of services.
  @HiveField(47)
  int precedence;

  //  Extensions for precedence
  @HiveField(48)
  Element elementPrecedence;

  //  Financial instruments for reimbursement for the health care products
  // and services specified on the claim.
  @HiveField(49)
  List<ExplanationOfBenefit_Insurance> insurance;

  //  Details of a accident which resulted in injuries which required the
  // products and services listed in the claim.
  @HiveField(50)
  ExplanationOfBenefit_Accident accident;

  //  A claim line. Either a simple (a product or service) or a 'group' of
  // details which can also be a simple items or groups of sub-details.
  @HiveField(51)
  List<ExplanationOfBenefit_Item> item;

  //  The first-tier service adjudications for payor added product or
  // service lines.
  @HiveField(52)
  List<ExplanationOfBenefit_AddItem> addItem;

  //  The adjudication results which are presented at the header level
  // rather than at the line-item or add-item levels.
  @HiveField(53)
  List<ExplanationOfBenefit_Adjudication> adjudication;

  //  Categorized monetary totals for the adjudication.
  @HiveField(54)
  List<ExplanationOfBenefit_Total> total;

  //  Payment details for the adjudication of the claim.
  @HiveField(55)
  ExplanationOfBenefit_Payment payment;

  //  A code for the form to be used for printing the content.
  @HiveField(56)
  CodeableConcept formCode;

  //  The actual form, by reference or inclusion, for printing the content
  // or an EOB.
  @HiveField(57)
  Attachment form;

  //  A note that describes or explains adjudication results in a human
  // readable form.
  @HiveField(58)
  List<ExplanationOfBenefit_ProcessNote> processNote;

  //  The term of the benefits documented in this response.
  @HiveField(59)
  Period benefitPeriod;

  //  Balance by Benefit Category.
  @HiveField(60)
  List<ExplanationOfBenefit_BenefitBalance> benefitBalance;

ExplanationOfBenefit(
  this.type,
    this.patient,
    this.insurer,
    this.provider,
    this.insurance,
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
    this.status,
    this.elementStatus,
    this.subType,
    this.use,
    this.elementUse,
    this.billablePeriod,
    this.created,
    this.elementCreated,
    this.enterer,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.claim,
    this.claimResponse,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.elementPrecedence,
    this.accident,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance
    });

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefitFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 268)
class ExplanationOfBenefit_Related {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Reference to a related claim.
  @HiveField(3)
  Reference claim;

  //  A code to convey how the claims are related.
  @HiveField(4)
  CodeableConcept relationship;

  //  An alternate organizational reference to the case or file to which
  // this particular claim pertains.
  @HiveField(5)
  Identifier reference;

ExplanationOfBenefit_Related(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference
    });

  factory ExplanationOfBenefit_Related.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 269)
class ExplanationOfBenefit_Payee {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Type of Party to be reimbursed: Subscriber, provider, other.
  @HiveField(3)
  CodeableConcept type;

  //  Reference to the individual or organization to whom any payment will
  // be made.
  @HiveField(4)
  Reference party;

ExplanationOfBenefit_Payee(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.party
    });

  factory ExplanationOfBenefit_Payee.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PayeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 270)
class ExplanationOfBenefit_CareTeam {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A number to uniquely identify care team entries.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  Member of the team who provided the product or service.
  @HiveField(5)
  Reference provider;

  //  The party who is billing and/or responsible for the claimed products
  // or services.
  @HiveField(6)
  bool responsible;

  //  Extensions for responsible
  @HiveField(7)
  Element elementResponsible;

  //  The lead, assisting or supervising practitioner and their discipline
  // if a multidisciplinary team.
  @HiveField(8)
  CodeableConcept role;

  //  The qualification of the practitioner which is applicable for this
  // service.
  @HiveField(9)
  CodeableConcept qualification;

ExplanationOfBenefit_CareTeam(
  this.provider,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.responsible,
    this.elementResponsible,
    this.role,
    this.qualification
    });

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 271)
class ExplanationOfBenefit_SupportingInfo {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A number to uniquely identify supporting information entries.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  The general class of the information supplied: information; exception;
  // accident, employment; onset, etc.
  @HiveField(5)
  CodeableConcept category;

  //  System and code pertaining to the specific information regarding
  // special conditions relating to the setting, treatment or patient  for
  // which care is sought.
  @HiveField(6)
  CodeableConcept code;

  //  The date when or period to which this information refers.
  @HiveField(7)
  String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for timingDate
  @HiveField(8)
  Element elementTimingDate;

  //  The date when or period to which this information refers.
  @HiveField(9)
  Period timingPeriod;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  @HiveField(10)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(11)
  Element elementValueBoolean;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  @HiveField(12)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(13)
  Element elementValueString;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  @HiveField(14)
  Quantity valueQuantity;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  @HiveField(15)
  Attachment valueAttachment;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  @HiveField(16)
  Reference valueReference;

  //  Provides the reason in the situation where a reason code is required
  // in addition to the content.
  @HiveField(17)
  Coding reason;

ExplanationOfBenefit_SupportingInfo(
  this.category,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.code,
    this.timingDate,
    this.elementTimingDate,
    this.timingPeriod,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueString,
    this.elementValueString,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason
    });

  factory ExplanationOfBenefit_SupportingInfo.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 272)
class ExplanationOfBenefit_Diagnosis {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A number to uniquely identify diagnosis entries.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  The nature of illness or problem in a coded form or as a reference to
  // an external defined Condition.
  @HiveField(5)
  CodeableConcept diagnosisCodeableConcept;

  //  The nature of illness or problem in a coded form or as a reference to
  // an external defined Condition.
  @HiveField(6)
  Reference diagnosisReference;

  //  When the condition was observed or the relative ranking.
  @HiveField(7)
  List<CodeableConcept> type;

  //  Indication of whether the diagnosis was present on admission to a
  // facility.
  @HiveField(8)
  CodeableConcept onAdmission;

  //  A package billing code or bundle code used to group products and
  // services to a particular health condition (such as heart attack) which
  // is based on a predetermined grouping code system.
  @HiveField(9)
  CodeableConcept packageCode;

ExplanationOfBenefit_Diagnosis(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode
    });

  factory ExplanationOfBenefit_Diagnosis.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 273)
class ExplanationOfBenefit_Procedure {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A number to uniquely identify procedure entries.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  When the condition was observed or the relative ranking.
  @HiveField(5)
  List<CodeableConcept> type;

  //  Date and optionally time the procedure was performed.
  @HiveField(6)
  DateTime date;

  //  Extensions for date
  @HiveField(7)
  Element elementDate;

  //  The code or reference to a Procedure resource which identifies the
  // clinical intervention performed.
  @HiveField(8)
  CodeableConcept procedureCodeableConcept;

  //  The code or reference to a Procedure resource which identifies the
  // clinical intervention performed.
  @HiveField(9)
  Reference procedureReference;

  //  Unique Device Identifiers associated with this line item.
  @HiveField(10)
  List<Reference> udi;

ExplanationOfBenefit_Procedure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.type,
    this.date,
    this.elementDate,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi
    });

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 274)
class ExplanationOfBenefit_Insurance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A flag to indicate that this Coverage is to be used for adjudication
  // of this claim when set to true.
  @HiveField(3)
  bool focal;

  //  Extensions for focal
  @HiveField(4)
  Element elementFocal;

  //  Reference to the insurance card level information contained in the
  // Coverage resource. The coverage issuing insurer will use these details
  // to locate the patient's actual coverage within the insurer's
  // information system.
  @HiveField(5)
  Reference coverage;

  //  Reference numbers previously provided by the insurer to the provider
  // to be quoted on subsequent claims containing services or products
  // related to the prior authorization.
  @HiveField(6)
  List<String> preAuthRef;

  //  Extensions for preAuthRef
  @HiveField(7)
  List<Element> elementPreAuthRef;

ExplanationOfBenefit_Insurance(
  this.coverage,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.elementFocal,
    this.preAuthRef,
    this.elementPreAuthRef
    });

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 275)
class ExplanationOfBenefit_Accident {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Date of an accident event  related to the products and services
  // contained in the claim.
  @HiveField(3)
  String date;

  //  Extensions for date
  @HiveField(4)
  Element elementDate;

  //  The type or context of the accident event for the purposes of
  // selection of potential insurance coverages and determination of
  // coordination between insurers.
  @HiveField(5)
  CodeableConcept type;

  //  The physical location of the accident event.
  @HiveField(6)
  Address locationAddress;

  //  The physical location of the accident event.
  @HiveField(7)
  Reference locationReference;

ExplanationOfBenefit_Accident(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.type,
    this.locationAddress,
    this.locationReference
    });

  factory ExplanationOfBenefit_Accident.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 276)
class ExplanationOfBenefit_Item {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A number to uniquely identify item entries.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  Care team members related to this service or product.
  @HiveField(5)
  List<int> careTeamSequence;

  //  Extensions for careTeamSequence
  @HiveField(6)
  List<Element> elementCareTeamSequence;

  //  Diagnoses applicable for this service or product.
  @HiveField(7)
  List<int> diagnosisSequence;

  //  Extensions for diagnosisSequence
  @HiveField(8)
  List<Element> elementDiagnosisSequence;

  //  Procedures applicable for this service or product.
  @HiveField(9)
  List<int> procedureSequence;

  //  Extensions for procedureSequence
  @HiveField(10)
  List<Element> elementProcedureSequence;

  //  Exceptions, special conditions and supporting information applicable
  // for this service or product.
  @HiveField(11)
  List<int> informationSequence;

  //  Extensions for informationSequence
  @HiveField(12)
  List<Element> elementInformationSequence;

  //  The type of revenue or cost center providing the product and/or
  // service.
  @HiveField(13)
  CodeableConcept revenue;

  //  Code to identify the general type of benefits under which products and
  // services are provided.
  @HiveField(14)
  CodeableConcept category;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  @HiveField(15)
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  @HiveField(16)
  List<CodeableConcept> modifier;

  //  Identifies the program under which this may be recovered.
  @HiveField(17)
  List<CodeableConcept> programCode;

  //  The date or dates when the service or product was supplied, performed
  // or completed.
  @HiveField(18)
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for servicedDate
  @HiveField(19)
  Element elementServicedDate;

  //  The date or dates when the service or product was supplied, performed
  // or completed.
  @HiveField(20)
  Period servicedPeriod;

  //  Where the product or service was provided.
  @HiveField(21)
  CodeableConcept locationCodeableConcept;

  //  Where the product or service was provided.
  @HiveField(22)
  Address locationAddress;

  //  Where the product or service was provided.
  @HiveField(23)
  Reference locationReference;

  //  The number of repetitions of a service or product.
  @HiveField(24)
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  @HiveField(25)
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  @HiveField(26)
  double factor;

  //  Extensions for factor
  @HiveField(27)
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  @HiveField(28)
  Money net;

  //  Unique Device Identifiers associated with this line item.
  @HiveField(29)
  List<Reference> udi;

  //  Physical service site on the patient (limb, tooth, etc.).
  @HiveField(30)
  CodeableConcept bodySite;

  //  A region or surface of the bodySite, e.g. limb region or tooth
  // surface(s).
  @HiveField(31)
  List<CodeableConcept> subSite;

  //  A billed item may include goods or services provided in multiple
  // encounters.
  @HiveField(32)
  List<Reference> encounter;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  @HiveField(33)
  List<int> noteNumber;

  //  Extensions for noteNumber
  @HiveField(34)
  List<Element> elementNoteNumber;

  //  If this item is a group then the values here are a summary of the
  // adjudication of the detail items. If this item is a simple product or
  // service then this is the result of the adjudication of this item.
  @HiveField(35)
  List<ExplanationOfBenefit_Adjudication> adjudication;

  //  Second-tier of goods and services.
  @HiveField(36)
  List<ExplanationOfBenefit_Detail> detail;

ExplanationOfBenefit_Item(
  this.productOrService,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.careTeamSequence,
    this.elementCareTeamSequence,
    this.diagnosisSequence,
    this.elementDiagnosisSequence,
    this.procedureSequence,
    this.elementProcedureSequence,
    this.informationSequence,
    this.elementInformationSequence,
    this.revenue,
    this.category,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
    this.detail
    });

  factory ExplanationOfBenefit_Item.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 277)
class ExplanationOfBenefit_Adjudication {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A code to indicate the information type of this adjudication record.
  // Information types may include: the value submitted, maximum values or
  // percentages allowed or payable under the plan, amounts that the patient
  // is responsible for in-aggregate or pertaining to this item, amounts
  // paid by other coverages, and the benefit payable for this item.
  @HiveField(3)
  CodeableConcept category;

  //  A code supporting the understanding of the adjudication result and
  // explaining variance from expected amount.
  @HiveField(4)
  CodeableConcept reason;

  //  Monetary amount associated with the category.
  @HiveField(5)
  Money amount;

  //  A non-monetary value associated with the category. Mutually exclusive
  // to the amount element above.
  @HiveField(6)
  double value;

  //  Extensions for value
  @HiveField(7)
  Element elementValue;

ExplanationOfBenefit_Adjudication(
  this.category,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.reason,
    this.amount,
    this.value,
    this.elementValue
    });

  factory ExplanationOfBenefit_Adjudication.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 278)
class ExplanationOfBenefit_Detail {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A claim detail line. Either a simple (a product or service) or a
  // 'group' of sub-details which are simple items.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  The type of revenue or cost center providing the product and/or
  // service.
  @HiveField(5)
  CodeableConcept revenue;

  //  Code to identify the general type of benefits under which products and
  // services are provided.
  @HiveField(6)
  CodeableConcept category;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  @HiveField(7)
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  @HiveField(8)
  List<CodeableConcept> modifier;

  //  Identifies the program under which this may be recovered.
  @HiveField(9)
  List<CodeableConcept> programCode;

  //  The number of repetitions of a service or product.
  @HiveField(10)
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  @HiveField(11)
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  @HiveField(12)
  double factor;

  //  Extensions for factor
  @HiveField(13)
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  @HiveField(14)
  Money net;

  //  Unique Device Identifiers associated with this line item.
  @HiveField(15)
  List<Reference> udi;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  @HiveField(16)
  List<int> noteNumber;

  //  Extensions for noteNumber
  @HiveField(17)
  List<Element> elementNoteNumber;

  //  The adjudication results.
  @HiveField(18)
  List<ExplanationOfBenefit_Adjudication> adjudication;

  //  Third-tier of goods and services.
  @HiveField(19)
  List<ExplanationOfBenefit_SubDetail> subDetail;

ExplanationOfBenefit_Detail(
  this.productOrService,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.revenue,
    this.category,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.udi,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
    this.subDetail
    });

  factory ExplanationOfBenefit_Detail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 279)
class ExplanationOfBenefit_SubDetail {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A claim detail line. Either a simple (a product or service) or a
  // 'group' of sub-details which are simple items.
  @HiveField(3)
  int sequence;

  //  Extensions for sequence
  @HiveField(4)
  Element elementSequence;

  //  The type of revenue or cost center providing the product and/or
  // service.
  @HiveField(5)
  CodeableConcept revenue;

  //  Code to identify the general type of benefits under which products and
  // services are provided.
  @HiveField(6)
  CodeableConcept category;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  @HiveField(7)
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  @HiveField(8)
  List<CodeableConcept> modifier;

  //  Identifies the program under which this may be recovered.
  @HiveField(9)
  List<CodeableConcept> programCode;

  //  The number of repetitions of a service or product.
  @HiveField(10)
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  @HiveField(11)
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  @HiveField(12)
  double factor;

  //  Extensions for factor
  @HiveField(13)
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  @HiveField(14)
  Money net;

  //  Unique Device Identifiers associated with this line item.
  @HiveField(15)
  List<Reference> udi;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  @HiveField(16)
  List<int> noteNumber;

  //  Extensions for noteNumber
  @HiveField(17)
  List<Element> elementNoteNumber;

  //  The adjudication results.
  @HiveField(18)
  List<ExplanationOfBenefit_Adjudication> adjudication;

ExplanationOfBenefit_SubDetail(
  this.productOrService,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.revenue,
    this.category,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.udi,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication
    });

  factory ExplanationOfBenefit_SubDetail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 280)
class ExplanationOfBenefit_AddItem {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Claim items which this service line is intended to replace.
  @HiveField(3)
  List<int> itemSequence;

  //  Extensions for itemSequence
  @HiveField(4)
  List<Element> elementItemSequence;

  //  The sequence number of the details within the claim item which this
  // line is intended to replace.
  @HiveField(5)
  List<int> detailSequence;

  //  Extensions for detailSequence
  @HiveField(6)
  List<Element> elementDetailSequence;

  //  The sequence number of the sub-details woithin the details within the
  // claim item which this line is intended to replace.
  @HiveField(7)
  List<int> subDetailSequence;

  //  Extensions for subDetailSequence
  @HiveField(8)
  List<Element> elementSubDetailSequence;

  //  The providers who are authorized for the services rendered to the
  // patient.
  @HiveField(9)
  List<Reference> provider;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  @HiveField(10)
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  @HiveField(11)
  List<CodeableConcept> modifier;

  //  Identifies the program under which this may be recovered.
  @HiveField(12)
  List<CodeableConcept> programCode;

  //  The date or dates when the service or product was supplied, performed
  // or completed.
  @HiveField(13)
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for servicedDate
  @HiveField(14)
  Element elementServicedDate;

  //  The date or dates when the service or product was supplied, performed
  // or completed.
  @HiveField(15)
  Period servicedPeriod;

  //  Where the product or service was provided.
  @HiveField(16)
  CodeableConcept locationCodeableConcept;

  //  Where the product or service was provided.
  @HiveField(17)
  Address locationAddress;

  //  Where the product or service was provided.
  @HiveField(18)
  Reference locationReference;

  //  The number of repetitions of a service or product.
  @HiveField(19)
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  @HiveField(20)
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  @HiveField(21)
  double factor;

  //  Extensions for factor
  @HiveField(22)
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  @HiveField(23)
  Money net;

  //  Physical service site on the patient (limb, tooth, etc.).
  @HiveField(24)
  CodeableConcept bodySite;

  //  A region or surface of the bodySite, e.g. limb region or tooth
  // surface(s).
  @HiveField(25)
  List<CodeableConcept> subSite;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  @HiveField(26)
  List<int> noteNumber;

  //  Extensions for noteNumber
  @HiveField(27)
  List<Element> elementNoteNumber;

  //  The adjudication results.
  @HiveField(28)
  List<ExplanationOfBenefit_Adjudication> adjudication;

  //  The second-tier service adjudications for payor added services.
  @HiveField(29)
  List<ExplanationOfBenefit_Detail1> detail;

ExplanationOfBenefit_AddItem(
  this.productOrService,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subDetailSequence,
    this.elementSubDetailSequence,
    this.provider,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
    this.detail
    });

  factory ExplanationOfBenefit_AddItem.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 281)
class ExplanationOfBenefit_Detail1 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  @HiveField(3)
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  @HiveField(4)
  List<CodeableConcept> modifier;

  //  The number of repetitions of a service or product.
  @HiveField(5)
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  @HiveField(6)
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  @HiveField(7)
  double factor;

  //  Extensions for factor
  @HiveField(8)
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  @HiveField(9)
  Money net;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  @HiveField(10)
  List<int> noteNumber;

  //  Extensions for noteNumber
  @HiveField(11)
  List<Element> elementNoteNumber;

  //  The adjudication results.
  @HiveField(12)
  List<ExplanationOfBenefit_Adjudication> adjudication;

  //  The third-tier service adjudications for payor added services.
  @HiveField(13)
  List<ExplanationOfBenefit_SubDetail1> subDetail;

ExplanationOfBenefit_Detail1(
  this.productOrService,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
    this.subDetail
    });

  factory ExplanationOfBenefit_Detail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 282)
class ExplanationOfBenefit_SubDetail1 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  When the value is a group code then this item collects a set of
  // related claim details, otherwise this contains the product, service,
  // drug or other billing code for the item.
  @HiveField(3)
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  @HiveField(4)
  List<CodeableConcept> modifier;

  //  The number of repetitions of a service or product.
  @HiveField(5)
  Quantity quantity;

  //  If the item is not a group then this is the fee for the product or
  // service, otherwise this is the total of the fees for the details of the
  // group.
  @HiveField(6)
  Money unitPrice;

  //  A real number that represents a multiplier used in determining the
  // overall value of services delivered and/or goods received. The concept
  // of a Factor allows for a discount or surcharge multiplier to be applied
  // to a monetary amount.
  @HiveField(7)
  double factor;

  //  Extensions for factor
  @HiveField(8)
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  @HiveField(9)
  Money net;

  //  The numbers associated with notes below which apply to the
  // adjudication of this item.
  @HiveField(10)
  List<int> noteNumber;

  //  Extensions for noteNumber
  @HiveField(11)
  List<Element> elementNoteNumber;

  //  The adjudication results.
  @HiveField(12)
  List<ExplanationOfBenefit_Adjudication> adjudication;

ExplanationOfBenefit_SubDetail1(
  this.productOrService,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication
    });

  factory ExplanationOfBenefit_SubDetail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 283)
class ExplanationOfBenefit_Total {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A code to indicate the information type of this adjudication record.
  // Information types may include: the value submitted, maximum values or
  // percentages allowed or payable under the plan, amounts that the patient
  // is responsible for in aggregate or pertaining to this item, amounts
  // paid by other coverages, and the benefit payable for this item.
  @HiveField(3)
  CodeableConcept category;

  //  Monetary total amount associated with the category.
  @HiveField(4)
  Money amount;

ExplanationOfBenefit_Total(
  this.category,
    this.amount,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory ExplanationOfBenefit_Total.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 284)
class ExplanationOfBenefit_Payment {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Whether this represents partial or complete payment of the benefits
  // payable.
  @HiveField(3)
  CodeableConcept type;

  //  Total amount of all adjustments to this payment included in this
  // transaction which are not related to this claim's adjudication.
  @HiveField(4)
  Money adjustment;

  //  Reason for the payment adjustment.
  @HiveField(5)
  CodeableConcept adjustmentReason;

  //  Estimated date the payment will be issued or the actual issue date of
  // payment.
  @HiveField(6)
  String date;

  //  Extensions for date
  @HiveField(7)
  Element elementDate;

  //  Benefits payable less any payment adjustment.
  @HiveField(8)
  Money amount;

  //  Issuer's unique identifier for the payment instrument.
  @HiveField(9)
  Identifier identifier;

ExplanationOfBenefit_Payment(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.elementDate,
    this.amount,
    this.identifier
    });

  factory ExplanationOfBenefit_Payment.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 285)
class ExplanationOfBenefit_ProcessNote {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A number to uniquely identify a note entry.
  @HiveField(3)
  int number;

  //  Extensions for number
  @HiveField(4)
  Element elementNumber;

  //  The business purpose of the note text.
  @HiveField(5)
  String type; // <code> enum: display/print/printoper;

  //  Extensions for type
  @HiveField(6)
  Element elementType;

  //  The explanation or description associated with the processing.
  @HiveField(7)
  String text;

  //  Extensions for text
  @HiveField(8)
  Element elementText;

  //  A code to define the language used in the text of the note.
  @HiveField(9)
  CodeableConcept language;

ExplanationOfBenefit_ProcessNote(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    this.type,
    this.elementType,
    this.text,
    this.elementText,
    this.language
    });

  factory ExplanationOfBenefit_ProcessNote.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 286)
class ExplanationOfBenefit_BenefitBalance {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Code to identify the general type of benefits under which products and
  // services are provided.
  @HiveField(3)
  CodeableConcept category;

  //  True if the indicated class of service is excluded from the plan,
  // missing or False indicates the product or service is included in the
  // coverage.
  @HiveField(4)
  bool excluded;

  //  Extensions for excluded
  @HiveField(5)
  Element elementExcluded;

  //  A short name or tag for the benefit.
  @HiveField(6)
  String name;

  //  Extensions for name
  @HiveField(7)
  Element elementName;

  //  A richer description of the benefit or services covered.
  @HiveField(8)
  String description;

  //  Extensions for description
  @HiveField(9)
  Element elementDescription;

  //  Is a flag to indicate whether the benefits refer to in-network
  // providers or out-of-network providers.
  @HiveField(10)
  CodeableConcept network;

  //  Indicates if the benefits apply to an individual or to the family.
  @HiveField(11)
  CodeableConcept unit;

  //  The term or period of the values such as 'maximum lifetime benefit' or
  // 'maximum annual visits'.
  @HiveField(12)
  CodeableConcept term;

  //  Benefits Used to date.
  @HiveField(13)
  List<ExplanationOfBenefit_Financial> financial;

ExplanationOfBenefit_BenefitBalance(
  this.category,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.excluded,
    this.elementExcluded,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.network,
    this.unit,
    this.term,
    this.financial
    });

  factory ExplanationOfBenefit_BenefitBalance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_BenefitBalanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 287)
class ExplanationOfBenefit_Financial {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Classification of benefit being provided.
  @HiveField(3)
  CodeableConcept type;

  //  The quantity of the benefit which is permitted under the coverage.
  int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for allowedUnsignedInt
  @HiveField(5)
  Element elementAllowedUnsignedInt;

  //  The quantity of the benefit which is permitted under the coverage.
  @HiveField(6)
  String allowedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for allowedString
  @HiveField(7)
  Element elementAllowedString;

  //  The quantity of the benefit which is permitted under the coverage.
  @HiveField(8)
  Money allowedMoney;

  //  The quantity of the benefit which have been consumed to date.
  int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for usedUnsignedInt
  @HiveField(10)
  Element elementUsedUnsignedInt;

  //  The quantity of the benefit which have been consumed to date.
  @HiveField(11)
  Money usedMoney;

ExplanationOfBenefit_Financial(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.allowedUnsignedInt,
    this.elementAllowedUnsignedInt,
    this.allowedString,
    this.elementAllowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.elementUsedUnsignedInt,
    this.usedMoney
    });

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_FinancialFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_FinancialToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExplanationOfBenefitAdapter extends TypeAdapter<ExplanationOfBenefit> {
  @override
  final typeId = 267;

  @override
  ExplanationOfBenefit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit(
      fields[14] as CodeableConcept,
      fields[18] as Reference,
      fields[23] as Reference,
      fields[24] as Reference,
      (fields[49] as List)?.cast<ExplanationOfBenefit_Insurance>(),
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      subType: fields[15] as CodeableConcept,
      use: fields[16] as String,
      elementUse: fields[17] as Element,
      billablePeriod: fields[19] as Period,
      created: fields[20] as DateTime,
      elementCreated: fields[21] as Element,
      enterer: fields[22] as Reference,
      priority: fields[25] as CodeableConcept,
      fundsReserveRequested: fields[26] as CodeableConcept,
      fundsReserve: fields[27] as CodeableConcept,
      related: (fields[28] as List)?.cast<ExplanationOfBenefit_Related>(),
      prescription: fields[29] as Reference,
      originalPrescription: fields[30] as Reference,
      payee: fields[31] as ExplanationOfBenefit_Payee,
      referral: fields[32] as Reference,
      facility: fields[33] as Reference,
      claim: fields[34] as Reference,
      claimResponse: fields[35] as Reference,
      outcome: fields[36] as String,
      elementOutcome: fields[37] as Element,
      disposition: fields[38] as String,
      elementDisposition: fields[39] as Element,
      preAuthRef: (fields[40] as List)?.cast<String>(),
      elementPreAuthRef: (fields[41] as List)?.cast<Element>(),
      preAuthRefPeriod: (fields[42] as List)?.cast<Period>(),
      careTeam: (fields[43] as List)?.cast<ExplanationOfBenefit_CareTeam>(),
      supportingInfo:
          (fields[44] as List)?.cast<ExplanationOfBenefit_SupportingInfo>(),
      diagnosis: (fields[45] as List)?.cast<ExplanationOfBenefit_Diagnosis>(),
      procedure: (fields[46] as List)?.cast<ExplanationOfBenefit_Procedure>(),
      precedence: fields[47] as int,
      elementPrecedence: fields[48] as Element,
      accident: fields[50] as ExplanationOfBenefit_Accident,
      item: (fields[51] as List)?.cast<ExplanationOfBenefit_Item>(),
      addItem: (fields[52] as List)?.cast<ExplanationOfBenefit_AddItem>(),
      adjudication:
          (fields[53] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      total: (fields[54] as List)?.cast<ExplanationOfBenefit_Total>(),
      payment: fields[55] as ExplanationOfBenefit_Payment,
      formCode: fields[56] as CodeableConcept,
      form: fields[57] as Attachment,
      processNote:
          (fields[58] as List)?.cast<ExplanationOfBenefit_ProcessNote>(),
      benefitPeriod: fields[59] as Period,
      benefitBalance:
          (fields[60] as List)?.cast<ExplanationOfBenefit_BenefitBalance>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit obj) {
    writer
      ..writeByte(61)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.subType)
      ..writeByte(16)
      ..write(obj.use)
      ..writeByte(17)
      ..write(obj.elementUse)
      ..writeByte(18)
      ..write(obj.patient)
      ..writeByte(19)
      ..write(obj.billablePeriod)
      ..writeByte(20)
      ..write(obj.created)
      ..writeByte(21)
      ..write(obj.elementCreated)
      ..writeByte(22)
      ..write(obj.enterer)
      ..writeByte(23)
      ..write(obj.insurer)
      ..writeByte(24)
      ..write(obj.provider)
      ..writeByte(25)
      ..write(obj.priority)
      ..writeByte(26)
      ..write(obj.fundsReserveRequested)
      ..writeByte(27)
      ..write(obj.fundsReserve)
      ..writeByte(28)
      ..write(obj.related)
      ..writeByte(29)
      ..write(obj.prescription)
      ..writeByte(30)
      ..write(obj.originalPrescription)
      ..writeByte(31)
      ..write(obj.payee)
      ..writeByte(32)
      ..write(obj.referral)
      ..writeByte(33)
      ..write(obj.facility)
      ..writeByte(34)
      ..write(obj.claim)
      ..writeByte(35)
      ..write(obj.claimResponse)
      ..writeByte(36)
      ..write(obj.outcome)
      ..writeByte(37)
      ..write(obj.elementOutcome)
      ..writeByte(38)
      ..write(obj.disposition)
      ..writeByte(39)
      ..write(obj.elementDisposition)
      ..writeByte(40)
      ..write(obj.preAuthRef)
      ..writeByte(41)
      ..write(obj.elementPreAuthRef)
      ..writeByte(42)
      ..write(obj.preAuthRefPeriod)
      ..writeByte(43)
      ..write(obj.careTeam)
      ..writeByte(44)
      ..write(obj.supportingInfo)
      ..writeByte(45)
      ..write(obj.diagnosis)
      ..writeByte(46)
      ..write(obj.procedure)
      ..writeByte(47)
      ..write(obj.precedence)
      ..writeByte(48)
      ..write(obj.elementPrecedence)
      ..writeByte(49)
      ..write(obj.insurance)
      ..writeByte(50)
      ..write(obj.accident)
      ..writeByte(51)
      ..write(obj.item)
      ..writeByte(52)
      ..write(obj.addItem)
      ..writeByte(53)
      ..write(obj.adjudication)
      ..writeByte(54)
      ..write(obj.total)
      ..writeByte(55)
      ..write(obj.payment)
      ..writeByte(56)
      ..write(obj.formCode)
      ..writeByte(57)
      ..write(obj.form)
      ..writeByte(58)
      ..write(obj.processNote)
      ..writeByte(59)
      ..write(obj.benefitPeriod)
      ..writeByte(60)
      ..write(obj.benefitBalance);
  }
}

class ExplanationOfBenefit_RelatedAdapter
    extends TypeAdapter<ExplanationOfBenefit_Related> {
  @override
  final typeId = 268;

  @override
  ExplanationOfBenefit_Related read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Related(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      claim: fields[3] as Reference,
      relationship: fields[4] as CodeableConcept,
      reference: fields[5] as Identifier,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Related obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.claim)
      ..writeByte(4)
      ..write(obj.relationship)
      ..writeByte(5)
      ..write(obj.reference);
  }
}

class ExplanationOfBenefit_PayeeAdapter
    extends TypeAdapter<ExplanationOfBenefit_Payee> {
  @override
  final typeId = 269;

  @override
  ExplanationOfBenefit_Payee read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Payee(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      party: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Payee obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.party);
  }
}

class ExplanationOfBenefit_CareTeamAdapter
    extends TypeAdapter<ExplanationOfBenefit_CareTeam> {
  @override
  final typeId = 270;

  @override
  ExplanationOfBenefit_CareTeam read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_CareTeam(
      fields[5] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      responsible: fields[6] as bool,
      elementResponsible: fields[7] as Element,
      role: fields[8] as CodeableConcept,
      qualification: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_CareTeam obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.provider)
      ..writeByte(6)
      ..write(obj.responsible)
      ..writeByte(7)
      ..write(obj.elementResponsible)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.qualification);
  }
}

class ExplanationOfBenefit_SupportingInfoAdapter
    extends TypeAdapter<ExplanationOfBenefit_SupportingInfo> {
  @override
  final typeId = 271;

  @override
  ExplanationOfBenefit_SupportingInfo read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_SupportingInfo(
      fields[5] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      code: fields[6] as CodeableConcept,
      timingDate: fields[7] as String,
      elementTimingDate: fields[8] as Element,
      timingPeriod: fields[9] as Period,
      valueBoolean: fields[10] as bool,
      elementValueBoolean: fields[11] as Element,
      valueString: fields[12] as String,
      elementValueString: fields[13] as Element,
      valueQuantity: fields[14] as Quantity,
      valueAttachment: fields[15] as Attachment,
      valueReference: fields[16] as Reference,
      reason: fields[17] as Coding,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_SupportingInfo obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.code)
      ..writeByte(7)
      ..write(obj.timingDate)
      ..writeByte(8)
      ..write(obj.elementTimingDate)
      ..writeByte(9)
      ..write(obj.timingPeriod)
      ..writeByte(10)
      ..write(obj.valueBoolean)
      ..writeByte(11)
      ..write(obj.elementValueBoolean)
      ..writeByte(12)
      ..write(obj.valueString)
      ..writeByte(13)
      ..write(obj.elementValueString)
      ..writeByte(14)
      ..write(obj.valueQuantity)
      ..writeByte(15)
      ..write(obj.valueAttachment)
      ..writeByte(16)
      ..write(obj.valueReference)
      ..writeByte(17)
      ..write(obj.reason);
  }
}

class ExplanationOfBenefit_DiagnosisAdapter
    extends TypeAdapter<ExplanationOfBenefit_Diagnosis> {
  @override
  final typeId = 272;

  @override
  ExplanationOfBenefit_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Diagnosis(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      diagnosisCodeableConcept: fields[5] as CodeableConcept,
      diagnosisReference: fields[6] as Reference,
      type: (fields[7] as List)?.cast<CodeableConcept>(),
      onAdmission: fields[8] as CodeableConcept,
      packageCode: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Diagnosis obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.diagnosisCodeableConcept)
      ..writeByte(6)
      ..write(obj.diagnosisReference)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.onAdmission)
      ..writeByte(9)
      ..write(obj.packageCode);
  }
}

class ExplanationOfBenefit_ProcedureAdapter
    extends TypeAdapter<ExplanationOfBenefit_Procedure> {
  @override
  final typeId = 273;

  @override
  ExplanationOfBenefit_Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Procedure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      type: (fields[5] as List)?.cast<CodeableConcept>(),
      date: fields[6] as DateTime,
      elementDate: fields[7] as Element,
      procedureCodeableConcept: fields[8] as CodeableConcept,
      procedureReference: fields[9] as Reference,
      udi: (fields[10] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Procedure obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.elementDate)
      ..writeByte(8)
      ..write(obj.procedureCodeableConcept)
      ..writeByte(9)
      ..write(obj.procedureReference)
      ..writeByte(10)
      ..write(obj.udi);
  }
}

class ExplanationOfBenefit_InsuranceAdapter
    extends TypeAdapter<ExplanationOfBenefit_Insurance> {
  @override
  final typeId = 274;

  @override
  ExplanationOfBenefit_Insurance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Insurance(
      fields[5] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      focal: fields[3] as bool,
      elementFocal: fields[4] as Element,
      preAuthRef: (fields[6] as List)?.cast<String>(),
      elementPreAuthRef: (fields[7] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Insurance obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.focal)
      ..writeByte(4)
      ..write(obj.elementFocal)
      ..writeByte(5)
      ..write(obj.coverage)
      ..writeByte(6)
      ..write(obj.preAuthRef)
      ..writeByte(7)
      ..write(obj.elementPreAuthRef);
  }
}

class ExplanationOfBenefit_AccidentAdapter
    extends TypeAdapter<ExplanationOfBenefit_Accident> {
  @override
  final typeId = 275;

  @override
  ExplanationOfBenefit_Accident read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Accident(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      date: fields[3] as String,
      elementDate: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      locationAddress: fields[6] as Address,
      locationReference: fields[7] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Accident obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.elementDate)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.locationAddress)
      ..writeByte(7)
      ..write(obj.locationReference);
  }
}

class ExplanationOfBenefit_ItemAdapter
    extends TypeAdapter<ExplanationOfBenefit_Item> {
  @override
  final typeId = 276;

  @override
  ExplanationOfBenefit_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Item(
      fields[15] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      careTeamSequence: (fields[5] as List)?.cast<int>(),
      elementCareTeamSequence: (fields[6] as List)?.cast<Element>(),
      diagnosisSequence: (fields[7] as List)?.cast<int>(),
      elementDiagnosisSequence: (fields[8] as List)?.cast<Element>(),
      procedureSequence: (fields[9] as List)?.cast<int>(),
      elementProcedureSequence: (fields[10] as List)?.cast<Element>(),
      informationSequence: (fields[11] as List)?.cast<int>(),
      elementInformationSequence: (fields[12] as List)?.cast<Element>(),
      revenue: fields[13] as CodeableConcept,
      category: fields[14] as CodeableConcept,
      modifier: (fields[16] as List)?.cast<CodeableConcept>(),
      programCode: (fields[17] as List)?.cast<CodeableConcept>(),
      servicedDate: fields[18] as String,
      elementServicedDate: fields[19] as Element,
      servicedPeriod: fields[20] as Period,
      locationCodeableConcept: fields[21] as CodeableConcept,
      locationAddress: fields[22] as Address,
      locationReference: fields[23] as Reference,
      quantity: fields[24] as Quantity,
      unitPrice: fields[25] as Money,
      factor: fields[26] as double,
      elementFactor: fields[27] as Element,
      net: fields[28] as Money,
      udi: (fields[29] as List)?.cast<Reference>(),
      bodySite: fields[30] as CodeableConcept,
      subSite: (fields[31] as List)?.cast<CodeableConcept>(),
      encounter: (fields[32] as List)?.cast<Reference>(),
      noteNumber: (fields[33] as List)?.cast<int>(),
      elementNoteNumber: (fields[34] as List)?.cast<Element>(),
      adjudication:
          (fields[35] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      detail: (fields[36] as List)?.cast<ExplanationOfBenefit_Detail>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Item obj) {
    writer
      ..writeByte(37)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.careTeamSequence)
      ..writeByte(6)
      ..write(obj.elementCareTeamSequence)
      ..writeByte(7)
      ..write(obj.diagnosisSequence)
      ..writeByte(8)
      ..write(obj.elementDiagnosisSequence)
      ..writeByte(9)
      ..write(obj.procedureSequence)
      ..writeByte(10)
      ..write(obj.elementProcedureSequence)
      ..writeByte(11)
      ..write(obj.informationSequence)
      ..writeByte(12)
      ..write(obj.elementInformationSequence)
      ..writeByte(13)
      ..write(obj.revenue)
      ..writeByte(14)
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.productOrService)
      ..writeByte(16)
      ..write(obj.modifier)
      ..writeByte(17)
      ..write(obj.programCode)
      ..writeByte(18)
      ..write(obj.servicedDate)
      ..writeByte(19)
      ..write(obj.elementServicedDate)
      ..writeByte(20)
      ..write(obj.servicedPeriod)
      ..writeByte(21)
      ..write(obj.locationCodeableConcept)
      ..writeByte(22)
      ..write(obj.locationAddress)
      ..writeByte(23)
      ..write(obj.locationReference)
      ..writeByte(24)
      ..write(obj.quantity)
      ..writeByte(25)
      ..write(obj.unitPrice)
      ..writeByte(26)
      ..write(obj.factor)
      ..writeByte(27)
      ..write(obj.elementFactor)
      ..writeByte(28)
      ..write(obj.net)
      ..writeByte(29)
      ..write(obj.udi)
      ..writeByte(30)
      ..write(obj.bodySite)
      ..writeByte(31)
      ..write(obj.subSite)
      ..writeByte(32)
      ..write(obj.encounter)
      ..writeByte(33)
      ..write(obj.noteNumber)
      ..writeByte(34)
      ..write(obj.elementNoteNumber)
      ..writeByte(35)
      ..write(obj.adjudication)
      ..writeByte(36)
      ..write(obj.detail);
  }
}

class ExplanationOfBenefit_AdjudicationAdapter
    extends TypeAdapter<ExplanationOfBenefit_Adjudication> {
  @override
  final typeId = 277;

  @override
  ExplanationOfBenefit_Adjudication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Adjudication(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      reason: fields[4] as CodeableConcept,
      amount: fields[5] as Money,
      value: fields[6] as double,
      elementValue: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Adjudication obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.reason)
      ..writeByte(5)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.value)
      ..writeByte(7)
      ..write(obj.elementValue);
  }
}

class ExplanationOfBenefit_DetailAdapter
    extends TypeAdapter<ExplanationOfBenefit_Detail> {
  @override
  final typeId = 278;

  @override
  ExplanationOfBenefit_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Detail(
      fields[7] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      revenue: fields[5] as CodeableConcept,
      category: fields[6] as CodeableConcept,
      modifier: (fields[8] as List)?.cast<CodeableConcept>(),
      programCode: (fields[9] as List)?.cast<CodeableConcept>(),
      quantity: fields[10] as Quantity,
      unitPrice: fields[11] as Money,
      factor: fields[12] as double,
      elementFactor: fields[13] as Element,
      net: fields[14] as Money,
      udi: (fields[15] as List)?.cast<Reference>(),
      noteNumber: (fields[16] as List)?.cast<int>(),
      elementNoteNumber: (fields[17] as List)?.cast<Element>(),
      adjudication:
          (fields[18] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      subDetail: (fields[19] as List)?.cast<ExplanationOfBenefit_SubDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Detail obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.revenue)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.productOrService)
      ..writeByte(8)
      ..write(obj.modifier)
      ..writeByte(9)
      ..write(obj.programCode)
      ..writeByte(10)
      ..write(obj.quantity)
      ..writeByte(11)
      ..write(obj.unitPrice)
      ..writeByte(12)
      ..write(obj.factor)
      ..writeByte(13)
      ..write(obj.elementFactor)
      ..writeByte(14)
      ..write(obj.net)
      ..writeByte(15)
      ..write(obj.udi)
      ..writeByte(16)
      ..write(obj.noteNumber)
      ..writeByte(17)
      ..write(obj.elementNoteNumber)
      ..writeByte(18)
      ..write(obj.adjudication)
      ..writeByte(19)
      ..write(obj.subDetail);
  }
}

class ExplanationOfBenefit_SubDetailAdapter
    extends TypeAdapter<ExplanationOfBenefit_SubDetail> {
  @override
  final typeId = 279;

  @override
  ExplanationOfBenefit_SubDetail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_SubDetail(
      fields[7] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      revenue: fields[5] as CodeableConcept,
      category: fields[6] as CodeableConcept,
      modifier: (fields[8] as List)?.cast<CodeableConcept>(),
      programCode: (fields[9] as List)?.cast<CodeableConcept>(),
      quantity: fields[10] as Quantity,
      unitPrice: fields[11] as Money,
      factor: fields[12] as double,
      elementFactor: fields[13] as Element,
      net: fields[14] as Money,
      udi: (fields[15] as List)?.cast<Reference>(),
      noteNumber: (fields[16] as List)?.cast<int>(),
      elementNoteNumber: (fields[17] as List)?.cast<Element>(),
      adjudication:
          (fields[18] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_SubDetail obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.revenue)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.productOrService)
      ..writeByte(8)
      ..write(obj.modifier)
      ..writeByte(9)
      ..write(obj.programCode)
      ..writeByte(10)
      ..write(obj.quantity)
      ..writeByte(11)
      ..write(obj.unitPrice)
      ..writeByte(12)
      ..write(obj.factor)
      ..writeByte(13)
      ..write(obj.elementFactor)
      ..writeByte(14)
      ..write(obj.net)
      ..writeByte(15)
      ..write(obj.udi)
      ..writeByte(16)
      ..write(obj.noteNumber)
      ..writeByte(17)
      ..write(obj.elementNoteNumber)
      ..writeByte(18)
      ..write(obj.adjudication);
  }
}

class ExplanationOfBenefit_AddItemAdapter
    extends TypeAdapter<ExplanationOfBenefit_AddItem> {
  @override
  final typeId = 280;

  @override
  ExplanationOfBenefit_AddItem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_AddItem(
      fields[10] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemSequence: (fields[3] as List)?.cast<int>(),
      elementItemSequence: (fields[4] as List)?.cast<Element>(),
      detailSequence: (fields[5] as List)?.cast<int>(),
      elementDetailSequence: (fields[6] as List)?.cast<Element>(),
      subDetailSequence: (fields[7] as List)?.cast<int>(),
      elementSubDetailSequence: (fields[8] as List)?.cast<Element>(),
      provider: (fields[9] as List)?.cast<Reference>(),
      modifier: (fields[11] as List)?.cast<CodeableConcept>(),
      programCode: (fields[12] as List)?.cast<CodeableConcept>(),
      servicedDate: fields[13] as String,
      elementServicedDate: fields[14] as Element,
      servicedPeriod: fields[15] as Period,
      locationCodeableConcept: fields[16] as CodeableConcept,
      locationAddress: fields[17] as Address,
      locationReference: fields[18] as Reference,
      quantity: fields[19] as Quantity,
      unitPrice: fields[20] as Money,
      factor: fields[21] as double,
      elementFactor: fields[22] as Element,
      net: fields[23] as Money,
      bodySite: fields[24] as CodeableConcept,
      subSite: (fields[25] as List)?.cast<CodeableConcept>(),
      noteNumber: (fields[26] as List)?.cast<int>(),
      elementNoteNumber: (fields[27] as List)?.cast<Element>(),
      adjudication:
          (fields[28] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      detail: (fields[29] as List)?.cast<ExplanationOfBenefit_Detail1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_AddItem obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemSequence)
      ..writeByte(4)
      ..write(obj.elementItemSequence)
      ..writeByte(5)
      ..write(obj.detailSequence)
      ..writeByte(6)
      ..write(obj.elementDetailSequence)
      ..writeByte(7)
      ..write(obj.subDetailSequence)
      ..writeByte(8)
      ..write(obj.elementSubDetailSequence)
      ..writeByte(9)
      ..write(obj.provider)
      ..writeByte(10)
      ..write(obj.productOrService)
      ..writeByte(11)
      ..write(obj.modifier)
      ..writeByte(12)
      ..write(obj.programCode)
      ..writeByte(13)
      ..write(obj.servicedDate)
      ..writeByte(14)
      ..write(obj.elementServicedDate)
      ..writeByte(15)
      ..write(obj.servicedPeriod)
      ..writeByte(16)
      ..write(obj.locationCodeableConcept)
      ..writeByte(17)
      ..write(obj.locationAddress)
      ..writeByte(18)
      ..write(obj.locationReference)
      ..writeByte(19)
      ..write(obj.quantity)
      ..writeByte(20)
      ..write(obj.unitPrice)
      ..writeByte(21)
      ..write(obj.factor)
      ..writeByte(22)
      ..write(obj.elementFactor)
      ..writeByte(23)
      ..write(obj.net)
      ..writeByte(24)
      ..write(obj.bodySite)
      ..writeByte(25)
      ..write(obj.subSite)
      ..writeByte(26)
      ..write(obj.noteNumber)
      ..writeByte(27)
      ..write(obj.elementNoteNumber)
      ..writeByte(28)
      ..write(obj.adjudication)
      ..writeByte(29)
      ..write(obj.detail);
  }
}

class ExplanationOfBenefit_Detail1Adapter
    extends TypeAdapter<ExplanationOfBenefit_Detail1> {
  @override
  final typeId = 281;

  @override
  ExplanationOfBenefit_Detail1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Detail1(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      modifier: (fields[4] as List)?.cast<CodeableConcept>(),
      quantity: fields[5] as Quantity,
      unitPrice: fields[6] as Money,
      factor: fields[7] as double,
      elementFactor: fields[8] as Element,
      net: fields[9] as Money,
      noteNumber: (fields[10] as List)?.cast<int>(),
      elementNoteNumber: (fields[11] as List)?.cast<Element>(),
      adjudication:
          (fields[12] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      subDetail: (fields[13] as List)?.cast<ExplanationOfBenefit_SubDetail1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Detail1 obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.productOrService)
      ..writeByte(4)
      ..write(obj.modifier)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.unitPrice)
      ..writeByte(7)
      ..write(obj.factor)
      ..writeByte(8)
      ..write(obj.elementFactor)
      ..writeByte(9)
      ..write(obj.net)
      ..writeByte(10)
      ..write(obj.noteNumber)
      ..writeByte(11)
      ..write(obj.elementNoteNumber)
      ..writeByte(12)
      ..write(obj.adjudication)
      ..writeByte(13)
      ..write(obj.subDetail);
  }
}

class ExplanationOfBenefit_SubDetail1Adapter
    extends TypeAdapter<ExplanationOfBenefit_SubDetail1> {
  @override
  final typeId = 282;

  @override
  ExplanationOfBenefit_SubDetail1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_SubDetail1(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      modifier: (fields[4] as List)?.cast<CodeableConcept>(),
      quantity: fields[5] as Quantity,
      unitPrice: fields[6] as Money,
      factor: fields[7] as double,
      elementFactor: fields[8] as Element,
      net: fields[9] as Money,
      noteNumber: (fields[10] as List)?.cast<int>(),
      elementNoteNumber: (fields[11] as List)?.cast<Element>(),
      adjudication:
          (fields[12] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_SubDetail1 obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.productOrService)
      ..writeByte(4)
      ..write(obj.modifier)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.unitPrice)
      ..writeByte(7)
      ..write(obj.factor)
      ..writeByte(8)
      ..write(obj.elementFactor)
      ..writeByte(9)
      ..write(obj.net)
      ..writeByte(10)
      ..write(obj.noteNumber)
      ..writeByte(11)
      ..write(obj.elementNoteNumber)
      ..writeByte(12)
      ..write(obj.adjudication);
  }
}

class ExplanationOfBenefit_TotalAdapter
    extends TypeAdapter<ExplanationOfBenefit_Total> {
  @override
  final typeId = 283;

  @override
  ExplanationOfBenefit_Total read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Total(
      fields[3] as CodeableConcept,
      fields[4] as Money,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Total obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.amount);
  }
}

class ExplanationOfBenefit_PaymentAdapter
    extends TypeAdapter<ExplanationOfBenefit_Payment> {
  @override
  final typeId = 284;

  @override
  ExplanationOfBenefit_Payment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Payment(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      adjustment: fields[4] as Money,
      adjustmentReason: fields[5] as CodeableConcept,
      date: fields[6] as String,
      elementDate: fields[7] as Element,
      amount: fields[8] as Money,
      identifier: fields[9] as Identifier,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Payment obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.adjustment)
      ..writeByte(5)
      ..write(obj.adjustmentReason)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.elementDate)
      ..writeByte(8)
      ..write(obj.amount)
      ..writeByte(9)
      ..write(obj.identifier);
  }
}

class ExplanationOfBenefit_ProcessNoteAdapter
    extends TypeAdapter<ExplanationOfBenefit_ProcessNote> {
  @override
  final typeId = 285;

  @override
  ExplanationOfBenefit_ProcessNote read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_ProcessNote(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      number: fields[3] as int,
      elementNumber: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
      text: fields[7] as String,
      elementText: fields[8] as Element,
      language: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_ProcessNote obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.elementNumber)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.elementText)
      ..writeByte(9)
      ..write(obj.language);
  }
}

class ExplanationOfBenefit_BenefitBalanceAdapter
    extends TypeAdapter<ExplanationOfBenefit_BenefitBalance> {
  @override
  final typeId = 286;

  @override
  ExplanationOfBenefit_BenefitBalance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_BenefitBalance(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      excluded: fields[4] as bool,
      elementExcluded: fields[5] as Element,
      name: fields[6] as String,
      elementName: fields[7] as Element,
      description: fields[8] as String,
      elementDescription: fields[9] as Element,
      network: fields[10] as CodeableConcept,
      unit: fields[11] as CodeableConcept,
      term: fields[12] as CodeableConcept,
      financial: (fields[13] as List)?.cast<ExplanationOfBenefit_Financial>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_BenefitBalance obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.excluded)
      ..writeByte(5)
      ..write(obj.elementExcluded)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.elementDescription)
      ..writeByte(10)
      ..write(obj.network)
      ..writeByte(11)
      ..write(obj.unit)
      ..writeByte(12)
      ..write(obj.term)
      ..writeByte(13)
      ..write(obj.financial);
  }
}

class ExplanationOfBenefit_FinancialAdapter
    extends TypeAdapter<ExplanationOfBenefit_Financial> {
  @override
  final typeId = 287;

  @override
  ExplanationOfBenefit_Financial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Financial(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      elementAllowedUnsignedInt: fields[5] as Element,
      allowedString: fields[6] as String,
      elementAllowedString: fields[7] as Element,
      allowedMoney: fields[8] as Money,
      elementUsedUnsignedInt: fields[10] as Element,
      usedMoney: fields[11] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Financial obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.elementAllowedUnsignedInt)
      ..writeByte(6)
      ..write(obj.allowedString)
      ..writeByte(7)
      ..write(obj.elementAllowedString)
      ..writeByte(8)
      ..write(obj.allowedMoney)
      ..writeByte(10)
      ..write(obj.elementUsedUnsignedInt)
      ..writeByte(11)
      ..write(obj.usedMoney);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplanationOfBenefit _$ExplanationOfBenefitFromJson(Map<String, dynamic> json) {
  return ExplanationOfBenefit(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Insurance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    billablePeriod: json['billablePeriod'] == null
        ? null
        : Period.fromJson(json['billablePeriod'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    enterer: json['enterer'] == null
        ? null
        : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    fundsReserveRequested: json['fundsReserveRequested'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserveRequested'] as Map<String, dynamic>),
    fundsReserve: json['fundsReserve'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserve'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Related.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prescription: json['prescription'] == null
        ? null
        : Reference.fromJson(json['prescription'] as Map<String, dynamic>),
    originalPrescription: json['originalPrescription'] == null
        ? null
        : Reference.fromJson(
            json['originalPrescription'] as Map<String, dynamic>),
    payee: json['payee'] == null
        ? null
        : ExplanationOfBenefit_Payee.fromJson(
            json['payee'] as Map<String, dynamic>),
    referral: json['referral'] == null
        ? null
        : Reference.fromJson(json['referral'] as Map<String, dynamic>),
    facility: json['facility'] == null
        ? null
        : Reference.fromJson(json['facility'] as Map<String, dynamic>),
    claim: json['claim'] == null
        ? null
        : Reference.fromJson(json['claim'] as Map<String, dynamic>),
    claimResponse: json['claimResponse'] == null
        ? null
        : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    preAuthRef: (json['preAuthRef'] as List)?.map((e) => e as String)?.toList(),
    elementPreAuthRef: (json['elementPreAuthRef'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preAuthRefPeriod: (json['preAuthRefPeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careTeam: (json['careTeam'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_CareTeam.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_SupportingInfo.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Diagnosis.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    procedure: (json['procedure'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Procedure.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    precedence: json['precedence'] as int,
    elementPrecedence: json['elementPrecedence'] == null
        ? null
        : Element.fromJson(json['elementPrecedence'] as Map<String, dynamic>),
    accident: json['accident'] == null
        ? null
        : ExplanationOfBenefit_Accident.fromJson(
            json['accident'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addItem: (json['addItem'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_AddItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    total: (json['total'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Total.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payment: json['payment'] == null
        ? null
        : ExplanationOfBenefit_Payment.fromJson(
            json['payment'] as Map<String, dynamic>),
    formCode: json['formCode'] == null
        ? null
        : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : Attachment.fromJson(json['form'] as Map<String, dynamic>),
    processNote: (json['processNote'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_ProcessNote.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    benefitPeriod: json['benefitPeriod'] == null
        ? null
        : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
    benefitBalance: (json['benefitBalance'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_BenefitBalance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefitToJson(
        ExplanationOfBenefit instance) =>
    <String, dynamic>{
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'subType': instance.subType?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'patient': instance.patient?.toJson(),
      'billablePeriod': instance.billablePeriod?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'enterer': instance.enterer?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'provider': instance.provider?.toJson(),
      'priority': instance.priority?.toJson(),
      'fundsReserveRequested': instance.fundsReserveRequested?.toJson(),
      'fundsReserve': instance.fundsReserve?.toJson(),
      'related': instance.related?.map((e) => e?.toJson())?.toList(),
      'prescription': instance.prescription?.toJson(),
      'originalPrescription': instance.originalPrescription?.toJson(),
      'payee': instance.payee?.toJson(),
      'referral': instance.referral?.toJson(),
      'facility': instance.facility?.toJson(),
      'claim': instance.claim?.toJson(),
      'claimResponse': instance.claimResponse?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef':
          instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList(),
      'preAuthRefPeriod':
          instance.preAuthRefPeriod?.map((e) => e?.toJson())?.toList(),
      'careTeam': instance.careTeam?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'procedure': instance.procedure?.map((e) => e?.toJson())?.toList(),
      'precedence': instance.precedence,
      'elementPrecedence': instance.elementPrecedence?.toJson(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'accident': instance.accident?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
      'addItem': instance.addItem?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'total': instance.total?.map((e) => e?.toJson())?.toList(),
      'payment': instance.payment?.toJson(),
      'formCode': instance.formCode?.toJson(),
      'form': instance.form?.toJson(),
      'processNote': instance.processNote?.map((e) => e?.toJson())?.toList(),
      'benefitPeriod': instance.benefitPeriod?.toJson(),
      'benefitBalance':
          instance.benefitBalance?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Related _$ExplanationOfBenefit_RelatedFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Related(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    claim: json['claim'] == null
        ? null
        : Reference.fromJson(json['claim'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    reference: json['reference'] == null
        ? null
        : Identifier.fromJson(json['reference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_RelatedToJson(
        ExplanationOfBenefit_Related instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'claim': instance.claim?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'reference': instance.reference?.toJson(),
    };

ExplanationOfBenefit_Payee _$ExplanationOfBenefit_PayeeFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Payee(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_PayeeToJson(
        ExplanationOfBenefit_Payee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'party': instance.party?.toJson(),
    };

ExplanationOfBenefit_CareTeam _$ExplanationOfBenefit_CareTeamFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_CareTeam(
    json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    responsible: json['responsible'] as bool,
    elementResponsible: json['elementResponsible'] == null
        ? null
        : Element.fromJson(json['elementResponsible'] as Map<String, dynamic>),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    qualification: json['qualification'] == null
        ? null
        : CodeableConcept.fromJson(
            json['qualification'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_CareTeamToJson(
        ExplanationOfBenefit_CareTeam instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'provider': instance.provider?.toJson(),
      'responsible': instance.responsible,
      'elementResponsible': instance.elementResponsible?.toJson(),
      'role': instance.role?.toJson(),
      'qualification': instance.qualification?.toJson(),
    };

ExplanationOfBenefit_SupportingInfo
    _$ExplanationOfBenefit_SupportingInfoFromJson(Map<String, dynamic> json) {
  return ExplanationOfBenefit_SupportingInfo(
    json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    timingDate: json['timingDate'] as String,
    elementTimingDate: json['elementTimingDate'] == null
        ? null
        : Element.fromJson(json['elementTimingDate'] as Map<String, dynamic>),
    timingPeriod: json['timingPeriod'] == null
        ? null
        : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    reason: json['reason'] == null
        ? null
        : Coding.fromJson(json['reason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_SupportingInfoToJson(
        ExplanationOfBenefit_SupportingInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'category': instance.category?.toJson(),
      'code': instance.code?.toJson(),
      'timingDate': instance.timingDate,
      'elementTimingDate': instance.elementTimingDate?.toJson(),
      'timingPeriod': instance.timingPeriod?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'reason': instance.reason?.toJson(),
    };

ExplanationOfBenefit_Diagnosis _$ExplanationOfBenefit_DiagnosisFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Diagnosis(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    diagnosisCodeableConcept: json['diagnosisCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diagnosisCodeableConcept'] as Map<String, dynamic>),
    diagnosisReference: json['diagnosisReference'] == null
        ? null
        : Reference.fromJson(
            json['diagnosisReference'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    onAdmission: json['onAdmission'] == null
        ? null
        : CodeableConcept.fromJson(json['onAdmission'] as Map<String, dynamic>),
    packageCode: json['packageCode'] == null
        ? null
        : CodeableConcept.fromJson(json['packageCode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_DiagnosisToJson(
        ExplanationOfBenefit_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'diagnosisCodeableConcept': instance.diagnosisCodeableConcept?.toJson(),
      'diagnosisReference': instance.diagnosisReference?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'onAdmission': instance.onAdmission?.toJson(),
      'packageCode': instance.packageCode?.toJson(),
    };

ExplanationOfBenefit_Procedure _$ExplanationOfBenefit_ProcedureFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Procedure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    procedureCodeableConcept: json['procedureCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['procedureCodeableConcept'] as Map<String, dynamic>),
    procedureReference: json['procedureReference'] == null
        ? null
        : Reference.fromJson(
            json['procedureReference'] as Map<String, dynamic>),
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_ProcedureToJson(
        ExplanationOfBenefit_Procedure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'procedureCodeableConcept': instance.procedureCodeableConcept?.toJson(),
      'procedureReference': instance.procedureReference?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Insurance _$ExplanationOfBenefit_InsuranceFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Insurance(
    json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focal: json['focal'] as bool,
    elementFocal: json['elementFocal'] == null
        ? null
        : Element.fromJson(json['elementFocal'] as Map<String, dynamic>),
    preAuthRef: (json['preAuthRef'] as List)?.map((e) => e as String)?.toList(),
    elementPreAuthRef: (json['elementPreAuthRef'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_InsuranceToJson(
        ExplanationOfBenefit_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'focal': instance.focal,
      'elementFocal': instance.elementFocal?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef':
          instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Accident _$ExplanationOfBenefit_AccidentFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Accident(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    locationAddress: json['locationAddress'] == null
        ? null
        : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
    locationReference: json['locationReference'] == null
        ? null
        : Reference.fromJson(json['locationReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_AccidentToJson(
        ExplanationOfBenefit_Accident instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'type': instance.type?.toJson(),
      'locationAddress': instance.locationAddress?.toJson(),
      'locationReference': instance.locationReference?.toJson(),
    };

ExplanationOfBenefit_Item _$ExplanationOfBenefit_ItemFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Item(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    careTeamSequence:
        (json['careTeamSequence'] as List)?.map((e) => e as int)?.toList(),
    elementCareTeamSequence: (json['elementCareTeamSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosisSequence:
        (json['diagnosisSequence'] as List)?.map((e) => e as int)?.toList(),
    elementDiagnosisSequence: (json['elementDiagnosisSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    procedureSequence:
        (json['procedureSequence'] as List)?.map((e) => e as int)?.toList(),
    elementProcedureSequence: (json['elementProcedureSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    informationSequence:
        (json['informationSequence'] as List)?.map((e) => e as int)?.toList(),
    elementInformationSequence: (json['elementInformationSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    revenue: json['revenue'] == null
        ? null
        : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programCode: (json['programCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicedDate: json['servicedDate'] as String,
    elementServicedDate: json['elementServicedDate'] == null
        ? null
        : Element.fromJson(json['elementServicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    locationCodeableConcept: json['locationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['locationCodeableConcept'] as Map<String, dynamic>),
    locationAddress: json['locationAddress'] == null
        ? null
        : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
    locationReference: json['locationReference'] == null
        ? null
        : Reference.fromJson(json['locationReference'] as Map<String, dynamic>),
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
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    subSite: (json['subSite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: (json['encounter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_ItemToJson(
        ExplanationOfBenefit_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'careTeamSequence': instance.careTeamSequence,
      'elementCareTeamSequence':
          instance.elementCareTeamSequence?.map((e) => e?.toJson())?.toList(),
      'diagnosisSequence': instance.diagnosisSequence,
      'elementDiagnosisSequence':
          instance.elementDiagnosisSequence?.map((e) => e?.toJson())?.toList(),
      'procedureSequence': instance.procedureSequence,
      'elementProcedureSequence':
          instance.elementProcedureSequence?.map((e) => e?.toJson())?.toList(),
      'informationSequence': instance.informationSequence,
      'elementInformationSequence': instance.elementInformationSequence
          ?.map((e) => e?.toJson())
          ?.toList(),
      'revenue': instance.revenue?.toJson(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'locationCodeableConcept': instance.locationCodeableConcept?.toJson(),
      'locationAddress': instance.locationAddress?.toJson(),
      'locationReference': instance.locationReference?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'subSite': instance.subSite?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.map((e) => e?.toJson())?.toList(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Adjudication _$ExplanationOfBenefit_AdjudicationFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Adjudication(
    json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_AdjudicationToJson(
        ExplanationOfBenefit_Adjudication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'reason': instance.reason?.toJson(),
      'amount': instance.amount?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

ExplanationOfBenefit_Detail _$ExplanationOfBenefit_DetailFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Detail(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    revenue: json['revenue'] == null
        ? null
        : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programCode: (json['programCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_SubDetail.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_DetailToJson(
        ExplanationOfBenefit_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'revenue': instance.revenue?.toJson(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_SubDetail _$ExplanationOfBenefit_SubDetailFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_SubDetail(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    revenue: json['revenue'] == null
        ? null
        : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programCode: (json['programCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_SubDetailToJson(
        ExplanationOfBenefit_SubDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'revenue': instance.revenue?.toJson(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_AddItem _$ExplanationOfBenefit_AddItemFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_AddItem(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence:
        (json['itemSequence'] as List)?.map((e) => e as int)?.toList(),
    elementItemSequence: (json['elementItemSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detailSequence:
        (json['detailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementDetailSequence: (json['elementDetailSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetailSequence:
        (json['subDetailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementSubDetailSequence: (json['elementSubDetailSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provider: (json['provider'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programCode: (json['programCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicedDate: json['servicedDate'] as String,
    elementServicedDate: json['elementServicedDate'] == null
        ? null
        : Element.fromJson(json['elementServicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    locationCodeableConcept: json['locationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['locationCodeableConcept'] as Map<String, dynamic>),
    locationAddress: json['locationAddress'] == null
        ? null
        : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
    locationReference: json['locationReference'] == null
        ? null
        : Reference.fromJson(json['locationReference'] as Map<String, dynamic>),
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
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    subSite: (json['subSite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Detail1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_AddItemToJson(
        ExplanationOfBenefit_AddItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence':
          instance.elementItemSequence?.map((e) => e?.toJson())?.toList(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence':
          instance.elementDetailSequence?.map((e) => e?.toJson())?.toList(),
      'subDetailSequence': instance.subDetailSequence,
      'elementSubDetailSequence':
          instance.elementSubDetailSequence?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'locationCodeableConcept': instance.locationCodeableConcept?.toJson(),
      'locationAddress': instance.locationAddress?.toJson(),
      'locationReference': instance.locationReference?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'bodySite': instance.bodySite?.toJson(),
      'subSite': instance.subSite?.map((e) => e?.toJson())?.toList(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Detail1 _$ExplanationOfBenefit_Detail1FromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Detail1(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_SubDetail1.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_Detail1ToJson(
        ExplanationOfBenefit_Detail1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_SubDetail1 _$ExplanationOfBenefit_SubDetail1FromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_SubDetail1(
    json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_SubDetail1ToJson(
        ExplanationOfBenefit_SubDetail1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Total _$ExplanationOfBenefit_TotalFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Total(
    json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefit_TotalToJson(
        ExplanationOfBenefit_Total instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'amount': instance.amount?.toJson(),
    };

ExplanationOfBenefit_Payment _$ExplanationOfBenefit_PaymentFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Payment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    adjustment: json['adjustment'] == null
        ? null
        : Money.fromJson(json['adjustment'] as Map<String, dynamic>),
    adjustmentReason: json['adjustmentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['adjustmentReason'] as Map<String, dynamic>),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_PaymentToJson(
        ExplanationOfBenefit_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'adjustment': instance.adjustment?.toJson(),
      'adjustmentReason': instance.adjustmentReason?.toJson(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'amount': instance.amount?.toJson(),
      'identifier': instance.identifier?.toJson(),
    };

ExplanationOfBenefit_ProcessNote _$ExplanationOfBenefit_ProcessNoteFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_ProcessNote(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    language: json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_ProcessNoteToJson(
        ExplanationOfBenefit_ProcessNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'elementNumber': instance.elementNumber?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'language': instance.language?.toJson(),
    };

ExplanationOfBenefit_BenefitBalance
    _$ExplanationOfBenefit_BenefitBalanceFromJson(Map<String, dynamic> json) {
  return ExplanationOfBenefit_BenefitBalance(
    json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    excluded: json['excluded'] as bool,
    elementExcluded: json['elementExcluded'] == null
        ? null
        : Element.fromJson(json['elementExcluded'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    network: json['network'] == null
        ? null
        : CodeableConcept.fromJson(json['network'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    term: json['term'] == null
        ? null
        : CodeableConcept.fromJson(json['term'] as Map<String, dynamic>),
    financial: (json['financial'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Financial.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_BenefitBalanceToJson(
        ExplanationOfBenefit_BenefitBalance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'excluded': instance.excluded,
      'elementExcluded': instance.elementExcluded?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'network': instance.network?.toJson(),
      'unit': instance.unit?.toJson(),
      'term': instance.term?.toJson(),
      'financial': instance.financial?.map((e) => e?.toJson())?.toList(),
    };

ExplanationOfBenefit_Financial _$ExplanationOfBenefit_FinancialFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Financial(
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
    allowedUnsignedInt: json['allowedUnsignedInt'] as int,
    elementAllowedUnsignedInt: json['elementAllowedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedUnsignedInt'] as Map<String, dynamic>),
    allowedString: json['allowedString'] as String,
    elementAllowedString: json['elementAllowedString'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedString'] as Map<String, dynamic>),
    allowedMoney: json['allowedMoney'] == null
        ? null
        : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
    usedUnsignedInt: json['usedUnsignedInt'] as int,
    elementUsedUnsignedInt: json['elementUsedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementUsedUnsignedInt'] as Map<String, dynamic>),
    usedMoney: json['usedMoney'] == null
        ? null
        : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_FinancialToJson(
        ExplanationOfBenefit_Financial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'allowedUnsignedInt': instance.allowedUnsignedInt,
      'elementAllowedUnsignedInt': instance.elementAllowedUnsignedInt?.toJson(),
      'allowedString': instance.allowedString,
      'elementAllowedString': instance.elementAllowedString?.toJson(),
      'allowedMoney': instance.allowedMoney?.toJson(),
      'usedUnsignedInt': instance.usedUnsignedInt,
      'elementUsedUnsignedInt': instance.elementUsedUnsignedInt?.toJson(),
      'usedMoney': instance.usedMoney?.toJson(),
    };
