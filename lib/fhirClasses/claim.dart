import 'package:hive/hive.dart';
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 115)
class Claim {

  //  This is a Claim resource
  @HiveField(0)
  final String resourceType= 'Claim';

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

  //  A unique identifier assigned to this claim.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status;

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
  String use; // <code> enum: claim/preauthorization/predetermination;

  //  Extensions for use
  @HiveField(17)
  Element elementUse;

  //  The party to whom the professional services and/or products have been
  // supplied or are being considered and for whom actual or forecast
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

  //  The Insurer who is target of the request.
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
  CodeableConcept fundsReserve;

  //  Other claims which are related to this claim such as prior submissions
  // or claims for related services or for the same event.
  @HiveField(27)
  List<Claim_Related> related;

  //  Prescription to support the dispensing of pharmacy, device or vision
  // products.
  @HiveField(28)
  Reference prescription;

  //  Original prescription which has been superseded by this prescription
  // to support the dispensing of pharmacy services, medications or
  // products.
  @HiveField(29)
  Reference originalPrescription;

  //  The party to be reimbursed for cost of the products and services
  // according to the terms of the policy.
  @HiveField(30)
  Claim_Payee payee;

  //  A reference to a referral resource.
  @HiveField(31)
  Reference referral;

  //  Facility where the services were provided.
  @HiveField(32)
  Reference facility;

  //  The members of the team who provided the products and services.
  @HiveField(33)
  List<Claim_CareTeam> careTeam;

  //  Additional information codes regarding exceptions, special
  // considerations, the condition, situation, prior or concurrent issues.
  @HiveField(34)
  List<Claim_SupportingInfo> supportingInfo;

  //  Information about diagnoses relevant to the claim items.
  @HiveField(35)
  List<Claim_Diagnosis> diagnosis;

  //  Procedures performed on the patient relevant to the billing items with
  // the claim.
  @HiveField(36)
  List<Claim_Procedure> procedure;

  //  Financial instruments for reimbursement for the health care products
  // and services specified on the claim.
  @HiveField(37)
  List<Claim_Insurance> insurance;

  //  Details of an accident which resulted in injuries which required the
  // products and services listed in the claim.
  @HiveField(38)
  Claim_Accident accident;

  //  A claim line. Either a simple  product or service or a 'group' of
  // details which can each be a simple items or groups of sub-details.
  @HiveField(39)
  List<Claim_Item> item;

  //  The total value of the all the items in the claim.
  @HiveField(40)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClaimAdapter extends TypeAdapter<Claim> {
  @override
  final typeId = 115;

  @override
  Claim read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim(
      fields[14] as CodeableConcept,
      fields[18] as Reference,
      fields[24] as Reference,
      fields[25] as CodeableConcept,
      (fields[37] as List)?.cast<Claim_Insurance>(),
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
      insurer: fields[23] as Reference,
      fundsReserve: fields[26] as CodeableConcept,
      related: (fields[27] as List)?.cast<Claim_Related>(),
      prescription: fields[28] as Reference,
      originalPrescription: fields[29] as Reference,
      payee: fields[30] as Claim_Payee,
      referral: fields[31] as Reference,
      facility: fields[32] as Reference,
      careTeam: (fields[33] as List)?.cast<Claim_CareTeam>(),
      supportingInfo: (fields[34] as List)?.cast<Claim_SupportingInfo>(),
      diagnosis: (fields[35] as List)?.cast<Claim_Diagnosis>(),
      procedure: (fields[36] as List)?.cast<Claim_Procedure>(),
      accident: fields[38] as Claim_Accident,
      item: (fields[39] as List)?.cast<Claim_Item>(),
      total: fields[40] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, Claim obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.fundsReserve)
      ..writeByte(27)
      ..write(obj.related)
      ..writeByte(28)
      ..write(obj.prescription)
      ..writeByte(29)
      ..write(obj.originalPrescription)
      ..writeByte(30)
      ..write(obj.payee)
      ..writeByte(31)
      ..write(obj.referral)
      ..writeByte(32)
      ..write(obj.facility)
      ..writeByte(33)
      ..write(obj.careTeam)
      ..writeByte(34)
      ..write(obj.supportingInfo)
      ..writeByte(35)
      ..write(obj.diagnosis)
      ..writeByte(36)
      ..write(obj.procedure)
      ..writeByte(37)
      ..write(obj.insurance)
      ..writeByte(38)
      ..write(obj.accident)
      ..writeByte(39)
      ..write(obj.item)
      ..writeByte(40)
      ..write(obj.total);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Claim _$ClaimFromJson(Map<String, dynamic> json) {
  return Claim(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Insurance.fromJson(e as Map<String, dynamic>))
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
    insurer: json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    fundsReserve: json['fundsReserve'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserve'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Related.fromJson(e as Map<String, dynamic>))
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
        : Claim_Payee.fromJson(json['payee'] as Map<String, dynamic>),
    referral: json['referral'] == null
        ? null
        : Reference.fromJson(json['referral'] as Map<String, dynamic>),
    facility: json['facility'] == null
        ? null
        : Reference.fromJson(json['facility'] as Map<String, dynamic>),
    careTeam: (json['careTeam'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_CareTeam.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_SupportingInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    procedure: (json['procedure'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Procedure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    accident: json['accident'] == null
        ? null
        : Claim_Accident.fromJson(json['accident'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) =>
            e == null ? null : Claim_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: json['total'] == null
        ? null
        : Money.fromJson(json['total'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimToJson(Claim instance) => <String, dynamic>{
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
      'fundsReserve': instance.fundsReserve?.toJson(),
      'related': instance.related?.map((e) => e?.toJson())?.toList(),
      'prescription': instance.prescription?.toJson(),
      'originalPrescription': instance.originalPrescription?.toJson(),
      'payee': instance.payee?.toJson(),
      'referral': instance.referral?.toJson(),
      'facility': instance.facility?.toJson(),
      'careTeam': instance.careTeam?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'procedure': instance.procedure?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'accident': instance.accident?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
      'total': instance.total?.toJson(),
    };

Claim_Related _$Claim_RelatedFromJson(Map<String, dynamic> json) {
  return Claim_Related(
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

Map<String, dynamic> _$Claim_RelatedToJson(Claim_Related instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'claim': instance.claim?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'reference': instance.reference?.toJson(),
    };

Claim_Payee _$Claim_PayeeFromJson(Map<String, dynamic> json) {
  return Claim_Payee(
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
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_PayeeToJson(Claim_Payee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'party': instance.party?.toJson(),
    };

Claim_CareTeam _$Claim_CareTeamFromJson(Map<String, dynamic> json) {
  return Claim_CareTeam(
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

Map<String, dynamic> _$Claim_CareTeamToJson(Claim_CareTeam instance) =>
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

Claim_SupportingInfo _$Claim_SupportingInfoFromJson(Map<String, dynamic> json) {
  return Claim_SupportingInfo(
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
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_SupportingInfoToJson(
        Claim_SupportingInfo instance) =>
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

Claim_Diagnosis _$Claim_DiagnosisFromJson(Map<String, dynamic> json) {
  return Claim_Diagnosis(
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

Map<String, dynamic> _$Claim_DiagnosisToJson(Claim_Diagnosis instance) =>
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

Claim_Procedure _$Claim_ProcedureFromJson(Map<String, dynamic> json) {
  return Claim_Procedure(
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

Map<String, dynamic> _$Claim_ProcedureToJson(Claim_Procedure instance) =>
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

Claim_Insurance _$Claim_InsuranceFromJson(Map<String, dynamic> json) {
  return Claim_Insurance(
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
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    focal: json['focal'] as bool,
    elementFocal: json['elementFocal'] == null
        ? null
        : Element.fromJson(json['elementFocal'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    businessArrangement: json['businessArrangement'] as String,
    elementBusinessArrangement: json['elementBusinessArrangement'] == null
        ? null
        : Element.fromJson(
            json['elementBusinessArrangement'] as Map<String, dynamic>),
    preAuthRef: (json['preAuthRef'] as List)?.map((e) => e as String)?.toList(),
    elementPreAuthRef: (json['elementPreAuthRef'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    claimResponse: json['claimResponse'] == null
        ? null
        : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_InsuranceToJson(Claim_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'focal': instance.focal,
      'elementFocal': instance.elementFocal?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'businessArrangement': instance.businessArrangement,
      'elementBusinessArrangement':
          instance.elementBusinessArrangement?.toJson(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef':
          instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList(),
      'claimResponse': instance.claimResponse?.toJson(),
    };

Claim_Accident _$Claim_AccidentFromJson(Map<String, dynamic> json) {
  return Claim_Accident(
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

Map<String, dynamic> _$Claim_AccidentToJson(Claim_Accident instance) =>
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

Claim_Item _$Claim_ItemFromJson(Map<String, dynamic> json) {
  return Claim_Item(
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
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Claim_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Claim_ItemToJson(Claim_Item instance) =>
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
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

Claim_Detail _$Claim_DetailFromJson(Map<String, dynamic> json) {
  return Claim_Detail(
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
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_SubDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Claim_DetailToJson(Claim_Detail instance) =>
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
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

Claim_SubDetail _$Claim_SubDetailFromJson(Map<String, dynamic> json) {
  return Claim_SubDetail(
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
  );
}

Map<String, dynamic> _$Claim_SubDetailToJson(Claim_SubDetail instance) =>
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
    };
