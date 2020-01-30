import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'explanationOfBenefit.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit {

//  This is a ExplanationOfBenefit resource
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

//  Extensions for implicitRules
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

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

//  A unique identifier assigned to this explanation of benefit.
List<Identifier> identifier;

//  The status of the resource instance.
String status; // <code> enum: active/cancelled/draft/entered-in-error;

//  Extensions for status
Element element_status;

//  The category of claim, e.g. oral, pharmacy, vision, institutional,
// professional.
CodeableConcept type;

//  A finer grained suite of claim type codes which may convey additional
// information such as Inpatient vs Outpatient and/or a specialty service.
CodeableConcept subType;

//  A code to indicate whether the nature of the request is: to request
// adjudication of products and services previously rendered; or
// requesting authorization and adjudication for provision in the future;
// or requesting the non-binding adjudication of the listed products and
// services which could be provided in the future.
String use;

//  Extensions for use
Element element_use;

//  The party to whom the professional services and/or products have been
// supplied or are being considered and for whom actual for forecast
// reimbursement is sought.
Reference patient;

//  The period for which charges are being submitted.
Period billablePeriod;

//  The date this resource was created.
DateTime created;

//  Extensions for created
Element element_created;

//  Individual who created the claim, predetermination or
// preauthorization.
Reference enterer;

//  The party responsible for authorization, adjudication and
// reimbursement.
Reference insurer;

//  The provider which is responsible for the claim, predetermination or
// preauthorization.
Reference provider;

//  The provider-required urgency of processing the request. Typical
// values include: stat, routine deferred.
CodeableConcept priority;

//  A code to indicate whether and for whom funds are to be reserved for
// future claims.
CodeableConcept fundsReserveRequested;

//  A code, used only on a response to a preauthorization, to indicate
// whether the benefits payable have been reserved and for whom.
CodeableConcept fundsReserve;

//  Other claims which are related to this claim such as prior submissions
// or claims for related services or for the same event.
List<ExplanationOfBenefit_Related> related;

//  Prescription to support the dispensing of pharmacy, device or vision
// products.
Reference prescription;

//  Original prescription which has been superseded by this prescription
// to support the dispensing of pharmacy services, medications or
// products.
Reference originalPrescription;

//  The party to be reimbursed for cost of the products and services
// according to the terms of the policy.
ExplanationOfBenefit_Payee payee;

//  A reference to a referral resource.
Reference referral;

//  Facility where the services were provided.
Reference facility;

//  The business identifier for the instance of the adjudication request:
// claim predetermination or preauthorization.
Reference claim;

//  The business identifier for the instance of the adjudication response:
// claim, predetermination or preauthorization response.
Reference claimResponse;

//  The outcome of the claim, predetermination, or preauthorization
// processing.
String outcome;

//  Extensions for outcome
Element element_outcome;

//  A human readable description of the status of the adjudication.
String disposition;

//  Extensions for disposition
Element element_disposition;

//  Reference from the Insurer which is used in later communications which
// refers to this adjudication.
List<String> preAuthRef;

//  Extensions for preAuthRef
List<Element> element_preAuthRef;

//  The timeframe during which the supplied preauthorization reference may
// be quoted on claims to obtain the adjudication as provided.
List<Period> preAuthRefPeriod;

//  The members of the team who provided the products and services.
List<ExplanationOfBenefit_CareTeam> careTeam;

//  Additional information codes regarding exceptions, special
// considerations, the condition, situation, prior or concurrent issues.
List<ExplanationOfBenefit_SupportingInfo> supportingInfo;

//  Information about diagnoses relevant to the claim items.
List<ExplanationOfBenefit_Diagnosis> diagnosis;

//  Procedures performed on the patient relevant to the billing items with
// the claim.
List<ExplanationOfBenefit_Procedure> procedure;

//  This indicates the relative order of a series of EOBs related to
// different coverages for the same suite of services.
int precedence;

//  Extensions for precedence
Element element_precedence;

//  Financial instruments for reimbursement for the health care products
// and services specified on the claim.
List<ExplanationOfBenefit_Insurance> insurance;

//  Details of a accident which resulted in injuries which required the
// products and services listed in the claim.
ExplanationOfBenefit_Accident accident;

//  A claim line. Either a simple (a product or service) or a 'group' of
// details which can also be a simple items or groups of sub-details.
List<ExplanationOfBenefit_Item> item;

//  The first-tier service adjudications for payor added product or
// service lines.
List<ExplanationOfBenefit_AddItem> addItem;

//  The adjudication results which are presented at the header level
// rather than at the line-item or add-item levels.
List<ExplanationOfBenefit_Adjudication> adjudication;

//  Categorized monetary totals for the adjudication.
List<ExplanationOfBenefit_Total> total;

//  Payment details for the adjudication of the claim.
ExplanationOfBenefit_Payment payment;

//  A code for the form to be used for printing the content.
CodeableConcept formCode;

//  The actual form, by reference or inclusion, for printing the content
// or an EOB.
Attachment form;

//  A note that describes or explains adjudication results in a human
// readable form.
List<ExplanationOfBenefit_ProcessNote> processNote;

//  The term of the benefits documented in this response.
Period benefitPeriod;

//  Balance by Benefit Category.
List<ExplanationOfBenefit_BenefitBalance> benefitBalance;

ExplanationOfBenefit(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.type,
    this.subType,
    this.use,
    this.element_use,
    this.patient,
    this.billablePeriod,
    this.created,
    this.element_created,
    this.enterer,
    this.insurer,
    this.provider,
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
    this.element_outcome,
    this.disposition,
    this.element_disposition,
    this.preAuthRef,
    this.element_preAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.element_precedence,
    this.insurance,
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
class ExplanationOfBenefit_Related {

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

//  Reference to a related claim.
Reference claim;

//  A code to convey how the claims are related.
CodeableConcept relationship;

//  An alternate organizational reference to the case or file to which
// this particular claim pertains.
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
class ExplanationOfBenefit_Payee {

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

//  Type of Party to be reimbursed: Subscriber, provider, other.
CodeableConcept type;

//  Reference to the individual or organization to whom any payment will
// be made.
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
class ExplanationOfBenefit_CareTeam {

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

//  A number to uniquely identify care team entries.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  Member of the team who provided the product or service.
Reference provider;

//  The party who is billing and/or responsible for the claimed products
// or services.
bool responsible;

//  Extensions for responsible
Element element_responsible;

//  The lead, assisting or supervising practitioner and their discipline
// if a multidisciplinary team.
CodeableConcept role;

//  The qualification of the practitioner which is applicable for this
// service.
CodeableConcept qualification;

ExplanationOfBenefit_CareTeam(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.provider,
    this.responsible,
    this.element_responsible,
    this.role,
    this.qualification
    });

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SupportingInfo {

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

//  A number to uniquely identify supporting information entries.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  The general class of the information supplied: information; exception;
// accident, employment; onset, etc.
CodeableConcept category;

//  System and code pertaining to the specific information regarding
// special conditions relating to the setting, treatment or patient  for
// which care is sought.
CodeableConcept code;

//  The date when or period to which this information refers.
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

//  Extensions for timingDate
Element element_timingDate;

//  The date when or period to which this information refers.
Period timingPeriod;

//  Additional data or information such as resources, documents, images
// etc. including references to the data or the actual inclusion of the
// data.
bool valueBoolean; //  pattern: ^true|false$

//  Extensions for valueBoolean
Element element_valueBoolean;

//  Additional data or information such as resources, documents, images
// etc. including references to the data or the actual inclusion of the
// data.
String valueString; //  pattern: ^[ \r\n\t\S]+$

//  Extensions for valueString
Element element_valueString;

//  Additional data or information such as resources, documents, images
// etc. including references to the data or the actual inclusion of the
// data.
Quantity valueQuantity;

//  Additional data or information such as resources, documents, images
// etc. including references to the data or the actual inclusion of the
// data.
Attachment valueAttachment;

//  Additional data or information such as resources, documents, images
// etc. including references to the data or the actual inclusion of the
// data.
Reference valueReference;

//  Provides the reason in the situation where a reason code is required
// in addition to the content.
Coding reason;

ExplanationOfBenefit_SupportingInfo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.category,
    this.code,
    this.timingDate,
    this.element_timingDate,
    this.timingPeriod,
    this.valueBoolean,
    this.element_valueBoolean,
    this.valueString,
    this.element_valueString,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason
    });

  factory ExplanationOfBenefit_SupportingInfo.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Diagnosis {

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

//  A number to uniquely identify diagnosis entries.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  The nature of illness or problem in a coded form or as a reference to
// an external defined Condition.
CodeableConcept diagnosisCodeableConcept;

//  The nature of illness or problem in a coded form or as a reference to
// an external defined Condition.
Reference diagnosisReference;

//  When the condition was observed or the relative ranking.
List<CodeableConcept> type;

//  Indication of whether the diagnosis was present on admission to a
// facility.
CodeableConcept onAdmission;

//  A package billing code or bundle code used to group products and
// services to a particular health condition (such as heart attack) which
// is based on a predetermined grouping code system.
CodeableConcept packageCode;

ExplanationOfBenefit_Diagnosis(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
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
class ExplanationOfBenefit_Procedure {

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

//  A number to uniquely identify procedure entries.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  When the condition was observed or the relative ranking.
List<CodeableConcept> type;

//  Date and optionally time the procedure was performed.
DateTime date;

//  Extensions for date
Element element_date;

//  The code or reference to a Procedure resource which identifies the
// clinical intervention performed.
CodeableConcept procedureCodeableConcept;

//  The code or reference to a Procedure resource which identifies the
// clinical intervention performed.
Reference procedureReference;

//  Unique Device Identifiers associated with this line item.
List<Reference> udi;

ExplanationOfBenefit_Procedure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.type,
    this.date,
    this.element_date,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi
    });

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Insurance {

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

//  A flag to indicate that this Coverage is to be used for adjudication
// of this claim when set to true.
bool focal;

//  Extensions for focal
Element element_focal;

//  Reference to the insurance card level information contained in the
// Coverage resource. The coverage issuing insurer will use these details
// to locate the patient's actual coverage within the insurer's
// information system.
Reference coverage;

//  Reference numbers previously provided by the insurer to the provider
// to be quoted on subsequent claims containing services or products
// related to the prior authorization.
List<String> preAuthRef;

//  Extensions for preAuthRef
List<Element> element_preAuthRef;

ExplanationOfBenefit_Insurance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.element_focal,
    this.coverage,
    this.preAuthRef,
    this.element_preAuthRef
    });

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Accident {

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

//  Date of an accident event  related to the products and services
// contained in the claim.
String date;

//  Extensions for date
Element element_date;

//  The type or context of the accident event for the purposes of
// selection of potential insurance coverages and determination of
// coordination between insurers.
CodeableConcept type;

//  The physical location of the accident event.
Address locationAddress;

//  The physical location of the accident event.
Reference locationReference;

ExplanationOfBenefit_Accident(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.element_date,
    this.type,
    this.locationAddress,
    this.locationReference
    });

  factory ExplanationOfBenefit_Accident.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Item {

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

//  A number to uniquely identify item entries.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  Care team members related to this service or product.
List<int> careTeamSequence;

//  Extensions for careTeamSequence
List<Element> element_careTeamSequence;

//  Diagnoses applicable for this service or product.
List<int> diagnosisSequence;

//  Extensions for diagnosisSequence
List<Element> element_diagnosisSequence;

//  Procedures applicable for this service or product.
List<int> procedureSequence;

//  Extensions for procedureSequence
List<Element> element_procedureSequence;

//  Exceptions, special conditions and supporting information applicable
// for this service or product.
List<int> informationSequence;

//  Extensions for informationSequence
List<Element> element_informationSequence;

//  The type of revenue or cost center providing the product and/or
// service.
CodeableConcept revenue;

//  Code to identify the general type of benefits under which products and
// services are provided.
CodeableConcept category;

//  When the value is a group code then this item collects a set of
// related claim details, otherwise this contains the product, service,
// drug or other billing code for the item.
CodeableConcept productOrService;

//  Item typification or modifiers codes to convey additional context for
// the product or service.
List<CodeableConcept> modifier;

//  Identifies the program under which this may be recovered.
List<CodeableConcept> programCode;

//  The date or dates when the service or product was supplied, performed
// or completed.
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

//  Extensions for servicedDate
Element element_servicedDate;

//  The date or dates when the service or product was supplied, performed
// or completed.
Period servicedPeriod;

//  Where the product or service was provided.
CodeableConcept locationCodeableConcept;

//  Where the product or service was provided.
Address locationAddress;

//  Where the product or service was provided.
Reference locationReference;

//  The number of repetitions of a service or product.
Quantity quantity;

//  If the item is not a group then this is the fee for the product or
// service, otherwise this is the total of the fees for the details of the
// group.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of services delivered and/or goods received. The concept
// of a Factor allows for a discount or surcharge multiplier to be applied
// to a monetary amount.
double factor;

//  Extensions for factor
Element element_factor;

//  The quantity times the unit price for an additional service or product
// or charge.
Money net;

//  Unique Device Identifiers associated with this line item.
List<Reference> udi;

//  Physical service site on the patient (limb, tooth, etc.).
CodeableConcept bodySite;

//  A region or surface of the bodySite, e.g. limb region or tooth
// surface(s).
List<CodeableConcept> subSite;

//  A billed item may include goods or services provided in multiple
// encounters.
List<Reference> encounter;

//  The numbers associated with notes below which apply to the
// adjudication of this item.
List<int> noteNumber;

//  Extensions for noteNumber
List<Element> element_noteNumber;

//  If this item is a group then the values here are a summary of the
// adjudication of the detail items. If this item is a simple product or
// service then this is the result of the adjudication of this item.
List<ExplanationOfBenefit_Adjudication> adjudication;

//  Second-tier of goods and services.
List<ExplanationOfBenefit_Detail> detail;

ExplanationOfBenefit_Item(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.careTeamSequence,
    this.element_careTeamSequence,
    this.diagnosisSequence,
    this.element_diagnosisSequence,
    this.procedureSequence,
    this.element_procedureSequence,
    this.informationSequence,
    this.element_informationSequence,
    this.revenue,
    this.category,
    this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.element_servicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.element_factor,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,
    this.element_noteNumber,
    this.adjudication,
    this.detail
    });

  factory ExplanationOfBenefit_Item.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Adjudication {

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

//  A code to indicate the information type of this adjudication record.
// Information types may include: the value submitted, maximum values or
// percentages allowed or payable under the plan, amounts that the patient
// is responsible for in-aggregate or pertaining to this item, amounts
// paid by other coverages, and the benefit payable for this item.
CodeableConcept category;

//  A code supporting the understanding of the adjudication result and
// explaining variance from expected amount.
CodeableConcept reason;

//  Monetary amount associated with the category.
Money amount;

//  A non-monetary value associated with the category. Mutually exclusive
// to the amount element above.
double value;

//  Extensions for value
Element element_value;

ExplanationOfBenefit_Adjudication(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.reason,
    this.amount,
    this.value,
    this.element_value
    });

  factory ExplanationOfBenefit_Adjudication.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail {

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

//  A claim detail line. Either a simple (a product or service) or a
// 'group' of sub-details which are simple items.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  The type of revenue or cost center providing the product and/or
// service.
CodeableConcept revenue;

//  Code to identify the general type of benefits under which products and
// services are provided.
CodeableConcept category;

//  When the value is a group code then this item collects a set of
// related claim details, otherwise this contains the product, service,
// drug or other billing code for the item.
CodeableConcept productOrService;

//  Item typification or modifiers codes to convey additional context for
// the product or service.
List<CodeableConcept> modifier;

//  Identifies the program under which this may be recovered.
List<CodeableConcept> programCode;

//  The number of repetitions of a service or product.
Quantity quantity;

//  If the item is not a group then this is the fee for the product or
// service, otherwise this is the total of the fees for the details of the
// group.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of services delivered and/or goods received. The concept
// of a Factor allows for a discount or surcharge multiplier to be applied
// to a monetary amount.
double factor;

//  Extensions for factor
Element element_factor;

//  The quantity times the unit price for an additional service or product
// or charge.
Money net;

//  Unique Device Identifiers associated with this line item.
List<Reference> udi;

//  The numbers associated with notes below which apply to the
// adjudication of this item.
List<int> noteNumber;

//  Extensions for noteNumber
List<Element> element_noteNumber;

//  The adjudication results.
List<ExplanationOfBenefit_Adjudication> adjudication;

//  Third-tier of goods and services.
List<ExplanationOfBenefit_SubDetail> subDetail;

ExplanationOfBenefit_Detail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.revenue,
    this.category,
    this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.element_factor,
    this.net,
    this.udi,
    this.noteNumber,
    this.element_noteNumber,
    this.adjudication,
    this.subDetail
    });

  factory ExplanationOfBenefit_Detail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail {

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

//  A claim detail line. Either a simple (a product or service) or a
// 'group' of sub-details which are simple items.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  The type of revenue or cost center providing the product and/or
// service.
CodeableConcept revenue;

//  Code to identify the general type of benefits under which products and
// services are provided.
CodeableConcept category;

//  When the value is a group code then this item collects a set of
// related claim details, otherwise this contains the product, service,
// drug or other billing code for the item.
CodeableConcept productOrService;

//  Item typification or modifiers codes to convey additional context for
// the product or service.
List<CodeableConcept> modifier;

//  Identifies the program under which this may be recovered.
List<CodeableConcept> programCode;

//  The number of repetitions of a service or product.
Quantity quantity;

//  If the item is not a group then this is the fee for the product or
// service, otherwise this is the total of the fees for the details of the
// group.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of services delivered and/or goods received. The concept
// of a Factor allows for a discount or surcharge multiplier to be applied
// to a monetary amount.
double factor;

//  Extensions for factor
Element element_factor;

//  The quantity times the unit price for an additional service or product
// or charge.
Money net;

//  Unique Device Identifiers associated with this line item.
List<Reference> udi;

//  The numbers associated with notes below which apply to the
// adjudication of this item.
List<int> noteNumber;

//  Extensions for noteNumber
List<Element> element_noteNumber;

//  The adjudication results.
List<ExplanationOfBenefit_Adjudication> adjudication;

ExplanationOfBenefit_SubDetail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.revenue,
    this.category,
    this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.element_factor,
    this.net,
    this.udi,
    this.noteNumber,
    this.element_noteNumber,
    this.adjudication
    });

  factory ExplanationOfBenefit_SubDetail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_AddItem {

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

//  Claim items which this service line is intended to replace.
List<int> itemSequence;

//  Extensions for itemSequence
List<Element> element_itemSequence;

//  The sequence number of the details within the claim item which this
// line is intended to replace.
List<int> detailSequence;

//  Extensions for detailSequence
List<Element> element_detailSequence;

//  The sequence number of the sub-details woithin the details within the
// claim item which this line is intended to replace.
List<int> subDetailSequence;

//  Extensions for subDetailSequence
List<Element> element_subDetailSequence;

//  The providers who are authorized for the services rendered to the
// patient.
List<Reference> provider;

//  When the value is a group code then this item collects a set of
// related claim details, otherwise this contains the product, service,
// drug or other billing code for the item.
CodeableConcept productOrService;

//  Item typification or modifiers codes to convey additional context for
// the product or service.
List<CodeableConcept> modifier;

//  Identifies the program under which this may be recovered.
List<CodeableConcept> programCode;

//  The date or dates when the service or product was supplied, performed
// or completed.
String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

//  Extensions for servicedDate
Element element_servicedDate;

//  The date or dates when the service or product was supplied, performed
// or completed.
Period servicedPeriod;

//  Where the product or service was provided.
CodeableConcept locationCodeableConcept;

//  Where the product or service was provided.
Address locationAddress;

//  Where the product or service was provided.
Reference locationReference;

//  The number of repetitions of a service or product.
Quantity quantity;

//  If the item is not a group then this is the fee for the product or
// service, otherwise this is the total of the fees for the details of the
// group.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of services delivered and/or goods received. The concept
// of a Factor allows for a discount or surcharge multiplier to be applied
// to a monetary amount.
double factor;

//  Extensions for factor
Element element_factor;

//  The quantity times the unit price for an additional service or product
// or charge.
Money net;

//  Physical service site on the patient (limb, tooth, etc.).
CodeableConcept bodySite;

//  A region or surface of the bodySite, e.g. limb region or tooth
// surface(s).
List<CodeableConcept> subSite;

//  The numbers associated with notes below which apply to the
// adjudication of this item.
List<int> noteNumber;

//  Extensions for noteNumber
List<Element> element_noteNumber;

//  The adjudication results.
List<ExplanationOfBenefit_Adjudication> adjudication;

//  The second-tier service adjudications for payor added services.
List<ExplanationOfBenefit_Detail1> detail;

ExplanationOfBenefit_AddItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.element_itemSequence,
    this.detailSequence,
    this.element_detailSequence,
    this.subDetailSequence,
    this.element_subDetailSequence,
    this.provider,
    this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.element_servicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.element_factor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.element_noteNumber,
    this.adjudication,
    this.detail
    });

  factory ExplanationOfBenefit_AddItem.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail1 {

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

//  When the value is a group code then this item collects a set of
// related claim details, otherwise this contains the product, service,
// drug or other billing code for the item.
CodeableConcept productOrService;

//  Item typification or modifiers codes to convey additional context for
// the product or service.
List<CodeableConcept> modifier;

//  The number of repetitions of a service or product.
Quantity quantity;

//  If the item is not a group then this is the fee for the product or
// service, otherwise this is the total of the fees for the details of the
// group.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of services delivered and/or goods received. The concept
// of a Factor allows for a discount or surcharge multiplier to be applied
// to a monetary amount.
double factor;

//  Extensions for factor
Element element_factor;

//  The quantity times the unit price for an additional service or product
// or charge.
Money net;

//  The numbers associated with notes below which apply to the
// adjudication of this item.
List<int> noteNumber;

//  Extensions for noteNumber
List<Element> element_noteNumber;

//  The adjudication results.
List<ExplanationOfBenefit_Adjudication> adjudication;

//  The third-tier service adjudications for payor added services.
List<ExplanationOfBenefit_SubDetail1> subDetail;

ExplanationOfBenefit_Detail1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.element_factor,
    this.net,
    this.noteNumber,
    this.element_noteNumber,
    this.adjudication,
    this.subDetail
    });

  factory ExplanationOfBenefit_Detail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail1 {

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

//  When the value is a group code then this item collects a set of
// related claim details, otherwise this contains the product, service,
// drug or other billing code for the item.
CodeableConcept productOrService;

//  Item typification or modifiers codes to convey additional context for
// the product or service.
List<CodeableConcept> modifier;

//  The number of repetitions of a service or product.
Quantity quantity;

//  If the item is not a group then this is the fee for the product or
// service, otherwise this is the total of the fees for the details of the
// group.
Money unitPrice;

//  A real number that represents a multiplier used in determining the
// overall value of services delivered and/or goods received. The concept
// of a Factor allows for a discount or surcharge multiplier to be applied
// to a monetary amount.
double factor;

//  Extensions for factor
Element element_factor;

//  The quantity times the unit price for an additional service or product
// or charge.
Money net;

//  The numbers associated with notes below which apply to the
// adjudication of this item.
List<int> noteNumber;

//  Extensions for noteNumber
List<Element> element_noteNumber;

//  The adjudication results.
List<ExplanationOfBenefit_Adjudication> adjudication;

ExplanationOfBenefit_SubDetail1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.element_factor,
    this.net,
    this.noteNumber,
    this.element_noteNumber,
    this.adjudication
    });

  factory ExplanationOfBenefit_SubDetail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Total {

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

//  A code to indicate the information type of this adjudication record.
// Information types may include: the value submitted, maximum values or
// percentages allowed or payable under the plan, amounts that the patient
// is responsible for in aggregate or pertaining to this item, amounts
// paid by other coverages, and the benefit payable for this item.
CodeableConcept category;

//  Monetary total amount associated with the category.
Money amount;

ExplanationOfBenefit_Total(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.amount
    });

  factory ExplanationOfBenefit_Total.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payment {

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

//  Whether this represents partial or complete payment of the benefits
// payable.
CodeableConcept type;

//  Total amount of all adjustments to this payment included in this
// transaction which are not related to this claim's adjudication.
Money adjustment;

//  Reason for the payment adjustment.
CodeableConcept adjustmentReason;

//  Estimated date the payment will be issued or the actual issue date of
// payment.
String date;

//  Extensions for date
Element element_date;

//  Benefits payable less any payment adjustment.
Money amount;

//  Issuer's unique identifier for the payment instrument.
Identifier identifier;

ExplanationOfBenefit_Payment(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.element_date,
    this.amount,
    this.identifier
    });

  factory ExplanationOfBenefit_Payment.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_ProcessNote {

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

//  A number to uniquely identify a note entry.
int number;

//  Extensions for number
Element element_number;

//  The business purpose of the note text.
String type; // <code> enum: display/print/printoper;

//  Extensions for type
Element element_type;

//  The explanation or description associated with the processing.
String text;

//  Extensions for text
Element element_text;

//  A code to define the language used in the text of the note.
CodeableConcept language;

ExplanationOfBenefit_ProcessNote(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.element_number,
    this.type,
    this.element_type,
    this.text,
    this.element_text,
    this.language
    });

  factory ExplanationOfBenefit_ProcessNote.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_BenefitBalance {

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

//  Code to identify the general type of benefits under which products and
// services are provided.
CodeableConcept category;

//  True if the indicated class of service is excluded from the plan,
// missing or False indicates the product or service is included in the
// coverage.
bool excluded;

//  Extensions for excluded
Element element_excluded;

//  A short name or tag for the benefit.
String name;

//  Extensions for name
Element element_name;

//  A richer description of the benefit or services covered.
String description;

//  Extensions for description
Element element_description;

//  Is a flag to indicate whether the benefits refer to in-network
// providers or out-of-network providers.
CodeableConcept network;

//  Indicates if the benefits apply to an individual or to the family.
CodeableConcept unit;

//  The term or period of the values such as 'maximum lifetime benefit' or
// 'maximum annual visits'.
CodeableConcept term;

//  Benefits Used to date.
List<ExplanationOfBenefit_Financial> financial;

ExplanationOfBenefit_BenefitBalance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.excluded,
    this.element_excluded,
    this.name,
    this.element_name,
    this.description,
    this.element_description,
    this.network,
    this.unit,
    this.term,
    this.financial
    });

  factory ExplanationOfBenefit_BenefitBalance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_BenefitBalanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Financial {

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

//  Classification of benefit being provided.
CodeableConcept type;

//  The quantity of the benefit which is permitted under the coverage.
int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

//  Extensions for allowedUnsignedInt
Element element_allowedUnsignedInt;

//  The quantity of the benefit which is permitted under the coverage.
String allowedString; //  pattern: ^[ \r\n\t\S]+$

//  Extensions for allowedString
Element element_allowedString;

//  The quantity of the benefit which is permitted under the coverage.
Money allowedMoney;

//  The quantity of the benefit which have been consumed to date.
int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

//  Extensions for usedUnsignedInt
Element element_usedUnsignedInt;

//  The quantity of the benefit which have been consumed to date.
Money usedMoney;

ExplanationOfBenefit_Financial(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.allowedUnsignedInt,
    this.element_allowedUnsignedInt,
    this.allowedString,
    this.element_allowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.element_usedUnsignedInt,
    this.usedMoney
    });

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_FinancialFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_FinancialToJson(this);
}

