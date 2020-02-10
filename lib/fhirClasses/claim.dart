import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'claim.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim {

  //  This is a Claim resource
  final String resourceType= 'Claim';

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
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

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
  List<dynamic> contained;

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

  //  A unique identifier assigned to this claim.
  List<Identifier> identifier;

  //  The status of the resource instance.
  String status;

  //  Extensions for status
  Element elementStatus;

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
  String use; // <code> enum: claim/preauthorization/predetermination;

  //  Extensions for use
  Element elementUse;

  //  The party to whom the professional services and/or products have been
  // supplied or are being considered and for whom actual or forecast
  // reimbursement is sought.
  Reference patient;

  //  The period for which charges are being submitted.
  Period billablePeriod;

  //  The date this resource was created.
  DateTime created;

  //  Extensions for created
  Element elementCreated;

  //  Individual who created the claim, predetermination or
  // preauthorization.
  Reference enterer;

  //  The Insurer who is target of the request.
  Reference insurer;

  //  The provider which is responsible for the claim, predetermination or
  // preauthorization.
  Reference provider;

  //  The provider-required urgency of processing the request. Typical
  // values include: stat, routine deferred.
  CodeableConcept priority;

  //  A code to indicate whether and for whom funds are to be reserved for
  // future claims.
  CodeableConcept fundsReserve;

  //  Other claims which are related to this claim such as prior submissions
  // or claims for related services or for the same event.
  List<Claim_Related> related;

  //  Prescription to support the dispensing of pharmacy, device or vision
  // products.
  Reference prescription;

  //  Original prescription which has been superseded by this prescription
  // to support the dispensing of pharmacy services, medications or
  // products.
  Reference originalPrescription;

  //  The party to be reimbursed for cost of the products and services
  // according to the terms of the policy.
  Claim_Payee payee;

  //  A reference to a referral resource.
  Reference referral;

  //  Facility where the services were provided.
  Reference facility;

  //  The members of the team who provided the products and services.
  List<Claim_CareTeam> careTeam;

  //  Additional information codes regarding exceptions, special
  // considerations, the condition, situation, prior or concurrent issues.
  List<Claim_SupportingInfo> supportingInfo;

  //  Information about diagnoses relevant to the claim items.
  List<Claim_Diagnosis> diagnosis;

  //  Procedures performed on the patient relevant to the billing items with
  // the claim.
  List<Claim_Procedure> procedure;

  //  Financial instruments for reimbursement for the health care products
  // and services specified on the claim.
  List<Claim_Insurance> insurance;

  //  Details of an accident which resulted in injuries which required the
  // products and services listed in the claim.
  Claim_Accident accident;

  //  A claim line. Either a simple  product or service or a 'group' of
  // details which can each be a simple items or groups of sub-details.
  List<Claim_Item> item;

  //  The total value of the all the items in the claim.
  Money total;

Claim(
  this.type,
    this.patient,
    this.provider,
    this.priority,
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
    this.insurer,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.accident,
    this.item,
    this.total
    });

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Related {

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

Claim_Related(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference
    });

  factory Claim_Related.fromJson(Map<String, dynamic> json) => _$Claim_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Payee {

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

  //  Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConcept type;

  //  Reference to the individual or organization to whom any payment will
  // be made.
  Reference party;

Claim_Payee(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.party
    });

  factory Claim_Payee.fromJson(Map<String, dynamic> json) => _$Claim_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_PayeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_CareTeam {

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
  Element elementSequence;

  //  Member of the team who provided the product or service.
  Reference provider;

  //  The party who is billing and/or responsible for the claimed products
  // or services.
  bool responsible;

  //  Extensions for responsible
  Element elementResponsible;

  //  The lead, assisting or supervising practitioner and their discipline
  // if a multidisciplinary team.
  CodeableConcept role;

  //  The qualification of the practitioner which is applicable for this
  // service.
  CodeableConcept qualification;

Claim_CareTeam(
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

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) => _$Claim_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SupportingInfo {

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
  Element elementSequence;

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
  Element elementTimingDate;

  //  The date when or period to which this information refers.
  Period timingPeriod;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  Additional data or information such as resources, documents, images
  // etc. including references to the data or the actual inclusion of the
  // data.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

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
  CodeableConcept reason;

Claim_SupportingInfo(
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

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) => _$Claim_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Diagnosis {

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
  Element elementSequence;

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

Claim_Diagnosis(
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

  factory Claim_Diagnosis.fromJson(Map<String, dynamic> json) => _$Claim_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Procedure {

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
  Element elementSequence;

  //  When the condition was observed or the relative ranking.
  List<CodeableConcept> type;

  //  Date and optionally time the procedure was performed.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The code or reference to a Procedure resource which identifies the
  // clinical intervention performed.
  CodeableConcept procedureCodeableConcept;

  //  The code or reference to a Procedure resource which identifies the
  // clinical intervention performed.
  Reference procedureReference;

  //  Unique Device Identifiers associated with this line item.
  List<Reference> udi;

Claim_Procedure(
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

  factory Claim_Procedure.fromJson(Map<String, dynamic> json) => _$Claim_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Insurance {

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

  //  A number to uniquely identify insurance entries and provide a sequence
  // of coverages to convey coordination of benefit order.
  int sequence;

  //  Extensions for sequence
  Element elementSequence;

  //  A flag to indicate that this Coverage is to be used for adjudication
  // of this claim when set to true.
  bool focal;

  //  Extensions for focal
  Element elementFocal;

  //  The business identifier to be used when the claim is sent for
  // adjudication against this insurance policy.
  Identifier identifier;

  //  Reference to the insurance card level information contained in the
  // Coverage resource. The coverage issuing insurer will use these details
  // to locate the patient's actual coverage within the insurer's
  // information system.
  Reference coverage;

  //  A business agreement number established between the provider and the
  // insurer for special business processing purposes.
  String businessArrangement;

  //  Extensions for businessArrangement
  Element elementBusinessArrangement;

  //  Reference numbers previously provided by the insurer to the provider
  // to be quoted on subsequent claims containing services or products
  // related to the prior authorization.
  List<String> preAuthRef;

  //  Extensions for preAuthRef
  List<Element> elementPreAuthRef;

  //  The result of the adjudication of the line items for the Coverage
  // specified in this insurance.
  Reference claimResponse;

Claim_Insurance(
  this.coverage,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.focal,
    this.elementFocal,
    this.identifier,
    this.businessArrangement,
    this.elementBusinessArrangement,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.claimResponse
    });

  factory Claim_Insurance.fromJson(Map<String, dynamic> json) => _$Claim_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Accident {

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
  Element elementDate;

  //  The type or context of the accident event for the purposes of
  // selection of potential insurance coverages and determination of
  // coordination between insurers.
  CodeableConcept type;

  //  The physical location of the accident event.
  Address locationAddress;

  //  The physical location of the accident event.
  Reference locationReference;

Claim_Accident(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.type,
    this.locationAddress,
    this.locationReference
    });

  factory Claim_Accident.fromJson(Map<String, dynamic> json) => _$Claim_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Item {

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
  Element elementSequence;

  //  CareTeam members related to this service or product.
  List<int> careTeamSequence;

  //  Extensions for careTeamSequence
  List<Element> elementCareTeamSequence;

  //  Diagnosis applicable for this service or product.
  List<int> diagnosisSequence;

  //  Extensions for diagnosisSequence
  List<Element> elementDiagnosisSequence;

  //  Procedures applicable for this service or product.
  List<int> procedureSequence;

  //  Extensions for procedureSequence
  List<Element> elementProcedureSequence;

  //  Exceptions, special conditions and supporting information applicable
  // for this service or product.
  List<int> informationSequence;

  //  Extensions for informationSequence
  List<Element> elementInformationSequence;

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
  Element elementServicedDate;

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
  Element elementFactor;

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

  //  The Encounters during which this Claim was created or to which the
  // creation of this record is tightly associated.
  List<Reference> encounter;

  //  A claim detail line. Either a simple (a product or service) or a
  // 'group' of sub-details which are simple items.
  List<Claim_Detail> detail;

Claim_Item(
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
    this.detail
    });

  factory Claim_Item.fromJson(Map<String, dynamic> json) => _$Claim_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Detail {

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
  Element elementSequence;

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
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  Money net;

  //  Unique Device Identifiers associated with this line item.
  List<Reference> udi;

  //  A claim detail line. Either a simple (a product or service) or a
  // 'group' of sub-details which are simple items.
  List<Claim_SubDetail> subDetail;

Claim_Detail(
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
    this.subDetail
    });

  factory Claim_Detail.fromJson(Map<String, dynamic> json) => _$Claim_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SubDetail {

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
  Element elementSequence;

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
  Element elementFactor;

  //  The quantity times the unit price for an additional service or product
  // or charge.
  Money net;

  //  Unique Device Identifiers associated with this line item.
  List<Reference> udi;

Claim_SubDetail(
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
    this.udi
    });

  factory Claim_SubDetail.fromJson(Map<String, dynamic> json) => _$Claim_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SubDetailToJson(this);
}

