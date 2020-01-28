
part 'coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {
  
  // This is a Coverage 
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

  // A unique identifier assigned to this coverage.
  List<Identifier identifier;

  // The status of the resource instance.
  String status;

  // Extensions for status
  Element _status;

  // The type of coverage: social program, medical plan, accident coverage
  //  (workers compensation, auto), group health or payment by an individual or
  //  organization.
  CodeableConcept type;

  // The party who 'owns' the insurance policy.
  Reference policyHolder;

  // The party who has signed-up for or 'owns' the contractual relationship to
  //  the policy or to whom the benefit of the policy for services rendered to them
  //  or their family is due.
  Reference subscriber;

  // The insurer assigned ID for the Subscriber.
  String subscriberId;

  // Extensions for subscriberId
  Element _subscriberId;

  // The party who benefits from the insurance coverage; the patient when
  //  products and/or services are provided.
  Reference beneficiary;

  // A unique identifier for a dependent under the coverage.
  String dependent;

  // Extensions for dependent
  Element _dependent;

  // The relationship of beneficiary (patient) to the subscriber.
  CodeableConcept relationship;

  // Time period during which the coverage is in force. A missing start date
  //  indicates the start date isn't known, a missing end date means the coverage is
  //  continuing to be in force.
  Period period;

  // The program or plan underwriter or payor including both insurance and
  //  non-insurance agreements, such as patient-pay agreements.
  List<Reference payor;

  // A suite of underwriter specific classifiers.
  List<Coverage_Class class;

  // The order of applicability of this coverage relative to other coverages
  //  which are currently in force. Note, there may be gaps in the numbering and this
  //  does not imply primary, secondary etc. as the specific positioning of coverages
  //  depends upon the episode of care.
  int order;

  // Extensions for order
  Element _order;

  // The insurer-specific identifier for the insurer-defined network of
  //  providers to which the beneficiary may seek treatment which will be covered at
  //  the 'in-network' rate, otherwise 'out of network' terms and conditions apply.
  String network;

  // Extensions for network
  Element _network;

  // A suite of codes indicating the cost category and associated amount which
  //  have been detailed in the policy and may have been  included on the health card.
  List<Coverage_CostToBeneficiary costToBeneficiary;

  // When 'subrogation=true' this insurance instance has been included not for
  //  adjudication but to provide insurers with the details to recover costs.
  bool subrogation;

  // Extensions for subrogation
  Element _subrogation;

  // The policy(s) which constitute this insurance coverage.
  List<Reference contract
Coverage(
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
this.policyHolder,
this.subscriber,
this.subscriberId,
this._subscriberId,
this.beneficiary,
this.dependent,
this._dependent,
this.relationship,
this.period,
this.payor,
this.class,
this.order,
this._order,
this.network,
this._network,
this.costToBeneficiary,
this.subrogation,
this._subrogation,
this.contract});

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}