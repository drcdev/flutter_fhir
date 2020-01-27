
part 'claim.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim {
  
  // This is a Claim 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A unique identifier assigned to this claim.
  List<Identifier identifier;

  // The status of the resource instance.
  String status;

  // Extensions for status
  Element _status;

  // The category of claim, e.g. oral, pharmacy, vision, institutional,
  //  professional.
  CodeableConcept type;

  // A finer grained suite of claim type codes which may convey additional
  //  information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConcept subType;

  // A code to indicate whether the nature of the request is: to request
  //  adjudication of products and services previously rendered; or requesting
  //  authorization and adjudication for provision in the future; or requesting the
  //  non-binding adjudication of the listed products and services which could be
  //  provided in the future.Enum enum; // claimpreauthorizationpredetermination use;

  // Extensions for use
  Element _use;

  // The party to whom the professional services and/or products have been
  //  supplied or are being considered and for whom actual or forecast reimbursement
  //  is sought.
  Reference patient;

  // The period for which charges are being submitted.
  Period billablePeriod;

  // The date this resource was created.
  StringTime created;

  // Extensions for created
  Element _created;

  // Individual who created the claim, predetermination or preauthorization.
  Reference enterer;

  // The Insurer who is target of the request.
  Reference insurer;

  // The provider which is responsible for the claim, predetermination or
  //  preauthorization.
  Reference provider;

  // The provider-required urgency of processing the request. Typical values
  //  include: stat, routine deferred.
  CodeableConcept priority;

  // A code to indicate whether and for whom funds are to be reserved for future
  //  claims.
  CodeableConcept fundsReserve;

  // Other claims which are related to this claim such as prior submissions or
  //  claims for related services or for the same event.
  List<Claim_Related related;

  // Prescription to support the dispensing of pharmacy, device or vision
  //  products.
  Reference prescription;

  // Original prescription which has been superseded by this prescription to
  //  support the dispensing of pharmacy services, medications or products.
  Reference originalPrescription;

  // The party to be reimbursed for cost of the products and services according
  //  to the terms of the policy.
  Claim_Payee payee;

  // A reference to a referral resource.
  Reference referral;

  // Facility where the services were provided.
  Reference facility;

  // The members of the team who provided the products and services.
  List<Claim_CareTeam careTeam;

  // Additional information codes regarding exceptions, special considerations,
  //  the condition, situation, prior or concurrent issues.
  List<Claim_SupportingInfo supportingInfo;

  // Information about diagnoses relevant to the claim items.
  List<Claim_Diagnosis diagnosis;

  // Procedures performed on the patient relevant to the billing items with the
  //  claim.
  List<Claim_Procedure procedure;

  // Financial instruments for reimbursement for the health care products and
  //  services specified on the claim.
  List<Claim_Insurance insurance;

  // Details of an accident which resulted in injuries which required the
  //  products and services listed in the claim.
  Claim_Accident accident;

  // A claim line. Either a simple  product or service or a 'group' of details
  //  which can each be a simple items or groups of sub-details.
  List<Claim_Item item;

  // The total value of the all the items in the claim.
  Money total
Claim(
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
this.type,
this.subType,
this.use,
this._use,
this.patient,
this.billablePeriod,
this.created,
this._created,
this.enterer,
this.insurer,
this.provider,
this.priority,
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
this.insurance,
this.accident,
this.item,
this.total});

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimToJson(this);
}
