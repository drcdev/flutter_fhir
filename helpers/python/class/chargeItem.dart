
part 'chargeItem.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItem {
  
  // This is a ChargeItem 
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

  // Identifiers assigned to this event performer or other systems.
  List<Identifier identifier;

  // References the (external) source of pricing information, rules of
  //  application for the code this ChargeItem uses.
  List<String definitionUri;

  // Extensions for definitionUri
  List<Element _definitionUri;

  // References the source of pricing information, rules of application for the
  //  code this ChargeItem uses.
  List<String definitionCanonical;

  // The current state of the ChargeItem.Enum enum; //
  //  plannedbillablenot-billableabortedbilledentered-in-errorunknown status;

  // Extensions for status
  Element _status;

  // ChargeItems can be grouped to larger ChargeItems covering the whole set.
  List<Reference partOf;

  // A code that identifies the charge, like a billing code.
  CodeableConcept code;

  // The individual or set of individuals the action is being or was performed
  //  on.
  Reference subject;

  // The encounter or episode of care that establishes the context for this
  //  event.
  Reference context;

  // Date/time(s) or duration when the charged service was applied. string
  //  occurrenceDateTime;

  // Extensions for occurrenceDateTime
  Element _occurrenceDateTime;

  // Date/time(s) or duration when the charged service was applied.
  Period occurrencePeriod;

  // Date/time(s) or duration when the charged service was applied.
  Timing occurrenceTiming;

  // Indicates who or what performed or participated in the charged service.
  List<ChargeItem_Performer performer;

  // The organization requesting the service.
  Reference performingOrganization;

  // The organization performing the service.
  Reference requestingOrganization;

  // The financial cost center permits the tracking of charge attribution.
  Reference costCenter;

  // Quantity of which the charge item has been serviced.
  Quantity quantity;

  // The anatomical location where the related service has been applied.
  List<CodeableConcept bodysite;

  // Factor overriding the factor determined by the rules associated with the
  //  code.
  double factorOverride;

  // Extensions for factorOverride
  Element _factorOverride;

  // Total price of the charge overriding the list price associated with the
  //  code.
  Money priceOverride;

  // If the list price or the rule-based factor associated with the code is
  //  overridden, this attribute can capture a text to indicate the  reason for this
  //  action.
  String overrideReason;

  // Extensions for overrideReason
  Element _overrideReason;

  // The device, practitioner, etc. who entered the charge item.
  Reference enterer;

  // Date the charge item was entered.
  StringTime enteredDate;

  // Extensions for enteredDate
  Element _enteredDate;

  // Describes why the event occurred in coded or textual form.
  List<CodeableConcept reason;

  // Indicated the rendered service that caused this charge.
  List<Reference service;

  // Identifies the device, food, drug or other product being charged either by
  //  type code or reference to an instance.
  Reference productReference;

  // Identifies the device, food, drug or other product being charged either by
  //  type code or reference to an instance.
  CodeableConcept productCodeableConcept;

  // Account into which this ChargeItems belongs.
  List<Reference account;

  // Comments made about the event by the performer, subject or other
  //  participants.
  List<Annotation note;

  // Further information supporting this charge.
  List<Reference supportingInformation
ChargeItem(
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
this.definitionUri,
this._definitionUri,
this.definitionCanonical,
this.status,
this._status,
this.partOf,
this.code,
this.subject,
this.context,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.performer,
this.performingOrganization,
this.requestingOrganization,
this.costCenter,
this.quantity,
this.bodysite,
this.factorOverride,
this._factorOverride,
this.priceOverride,
this.overrideReason,
this._overrideReason,
this.enterer,
this.enteredDate,
this._enteredDate,
this.reason,
this.service,
this.productReference,
this.productCodeableConcept,
this.account,
this.note,
this.supportingInformation});

  factory ChargeItem.fromJson(Map<String, dynamic> json) => _$ChargeItemFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemToJson(this);
}