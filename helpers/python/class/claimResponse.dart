
part 'claimResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse {
  
  // This is a ClaimResponse 
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

  // A unique identifier assigned to this claim response.
  List<Identifier identifier;

  // The status of the resource instance.
  String status;

  // Extensions for status
  Element _status;

  // A finer grained suite of claim type codes which may convey additional
  //  information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConcept type;

  // A finer grained suite of claim type codes which may convey additional
  //  information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConcept subType;

  // A code to indicate whether the nature of the request is: to request
  //  adjudication of products and services previously rendered; or requesting
  //  authorization and adjudication for provision in the future; or requesting the
  //  non-binding adjudication of the listed products and services which could be
  //  provided in the future.
  String use;

  // Extensions for use
  Element _use;

  // The party to whom the professional services and/or products have been
  //  supplied or are being considered and for whom actual for facast reimbursement
  //  is sought.
  Reference patient;

  // The date this resource was created.
  StringTime created;

  // Extensions for created
  Element _created;

  // The party responsible for authorization, adjudication and reimbursement.
  Reference insurer;

  // The provider which is responsible for the claim, predetermination or
  //  preauthorization.
  Reference requestor;

  // Original request resource reference.
  Reference request;

  // The outcome of the claim, predetermination, or preauthorization processing.
  String outcome;

  // Extensions for outcome
  Element _outcome;

  // A human readable description of the status of the adjudication.
  String disposition;

  // Extensions for disposition
  Element _disposition;

  // Reference from the Insurer which is used in later communications which
  //  refers to this adjudication.
  String preAuthRef;

  // Extensions for preAuthRef
  Element _preAuthRef;

  // The time frame during which this authorization is effective.
  Period preAuthPeriod;

  // Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConcept payeeType;

  // A claim line. Either a simple (a product or service) or a 'group' of
  //  details which can also be a simple items or groups of sub-details.
  List<ClaimResponse_Item item;

  // The first-tier service adjudications for payor added product or service
  //  lines.
  List<ClaimResponse_AddItem addItem;

  // The adjudication results which are presented at the header level rather
  //  than at the line-item or add-item levels.
  List<ClaimResponse_Adjudication adjudication;

  // Categorized monetary totals for the adjudication.
  List<ClaimResponse_Total total;

  // Payment details for the adjudication of the claim.
  ClaimResponse_Payment payment;

  // A code, used only on a response to a preauthorization, to indicate whether
  //  the benefits payable have been reserved and for whom.
  CodeableConcept fundsReserve;

  // A code for the form to be used for printing the content.
  CodeableConcept formCode;

  // The actual form, by reference or inclusion, for printing the content or an
  //  EOB.
  Attachment form;

  // A note that describes or explains adjudication results in a human readable
  //  form.
  List<ClaimResponse_ProcessNote processNote;

  // Request for additional supporting or authorizing information.
  List<Reference communicationRequest;

  // Financial instruments for reimbursement for the health care products and
  //  services specified on the claim.
  List<ClaimResponse_Insurance insurance;

  // Errors encountered during the processing of the adjudication.
  List<ClaimResponse_Error error
ClaimResponse(
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
this.created,
this._created,
this.insurer,
this.requestor,
this.request,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.preAuthRef,
this._preAuthRef,
this.preAuthPeriod,
this.payeeType,
this.item,
this.addItem,
this.adjudication,
this.total,
this.payment,
this.fundsReserve,
this.formCode,
this.form,
this.processNote,
this.communicationRequest,
this.insurance,
this.error});

  factory ClaimResponse.fromJson(Map<String, dynamic> json) => _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_AddItem {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Claim items which this service line is intended to replace.
  List<int itemSequence;

  // Extensions for itemSequence
  List<Element _itemSequence;

  // The sequence number of the details within the claim item which this line is
  //  intended to replace.
  List<int detailSequence;

  // Extensions for detailSequence
  List<Element _detailSequence;

  // The sequence number of the sub-details within the details within the claim
  //  item which this line is intended to replace.
  List<int subdetailSequence;

  // Extensions for subdetailSequence
  List<Element _subdetailSequence;

  // The providers who are authorized for the services rendered to the patient.
  List<Reference provider;

  // When the value is a group code then this item collects a set of related
  //  claim details, otherwise this contains the product, service, drug or other
  //  billing code for the item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // Identifies the program under which this may be recovered.
  List<CodeableConcept programCode;

  // The date or dates when the service or product was supplied, performed or
  //  completed. string servicedDate;

  // Extensions for servicedDate
  Element _servicedDate;

  // The date or dates when the service or product was supplied, performed or
  //  completed.
  Period servicedPeriod;

  // Where the product or service was provided.
  CodeableConcept locationCodeableConcept;

  // Where the product or service was provided.
  Address locationAddress;

  // Where the product or service was provided.
  Reference locationReference;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // If the item is not a group then this is the fee for the product or service,
  //  otherwise this is the total of the fees for the details of the group.
  Money unitPrice;

  // A real number that represents a multiplier used in determining the overall
  //  value of services delivered and/or goods received. The concept of a Factor
  //  allows for a discount or surcharge multiplier to be applied to a monetary amount.
  double factor;

  // Extensions for factor
  Element _factor;

  // The quantity times the unit price for an additional service or product or
  //  charge.
  Money net;

  // Physical service site on the patient (limb, tooth, etc.).
  CodeableConcept bodySite;

  // A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  List<CodeableConcept subSite;

  // The numbers associated with notes below which apply to the adjudication of
  //  this item.
  List<int noteNumber;

  // Extensions for noteNumber
  List<Element _noteNumber;

  // The adjudication results.
  List<ClaimResponse_Adjudication adjudication;

  // The second-tier service adjudications for payor added services.
  List<ClaimResponse_Detail1 detail
ClaimResponse_AddItem(
      {this.id,
this.extension,
this.modifierExtension,
this.itemSequence,
this._itemSequence,
this.detailSequence,
this._detailSequence,
this.subdetailSequence,
this._subdetailSequence,
this.provider,
this.productOrService,
this.modifier,
this.programCode,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.locationCodeableConcept,
this.locationAddress,
this.locationReference,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.bodySite,
this.subSite,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.detail});

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Adjudication {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code to indicate the information type of this adjudication record.
  //  Information types may include the value submitted, maximum values or
  //  percentages allowed or payable under the plan, amounts that: the patient is
  //  responsible for in aggregate or pertaining to this item; amounts paid by other
  //  coverages; and, the benefit payable for this item.
  CodeableConcept category;

  // A code supporting the understanding of the adjudication result and
  //  explaining variance from expected amount.
  CodeableConcept reason;

  // Monetary amount associated with the category.
  Money amount;

  // A non-monetary value associated with the category. Mutually exclusive to
  //  the amount element above.
  double value;

  // Extensions for value
  Element _value
ClaimResponse_Adjudication(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.reason,
this.amount,
this.value,
this._value});

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely reference the claim detail entry.
  int detailSequence;

  // Extensions for detailSequence
  Element _detailSequence;

  // The numbers associated with notes below which apply to the adjudication of
  //  this item.
  List<int noteNumber;

  // Extensions for noteNumber
  List<Element _noteNumber;

  // The adjudication results.
  List<ClaimResponse_Adjudication adjudication;

  // A sub-detail adjudication of a simple product or service.
  List<ClaimResponse_SubDetail subDetail
ClaimResponse_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.detailSequence,
this._detailSequence,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.subDetail});

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail1 {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // When the value is a group code then this item collects a set of related
  //  claim details, otherwise this contains the product, service, drug or other
  //  billing code for the item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // If the item is not a group then this is the fee for the product or service,
  //  otherwise this is the total of the fees for the details of the group.
  Money unitPrice;

  // A real number that represents a multiplier used in determining the overall
  //  value of services delivered and/or goods received. The concept of a Factor
  //  allows for a discount or surcharge multiplier to be applied to a monetary amount.
  double factor;

  // Extensions for factor
  Element _factor;

  // The quantity times the unit price for an additional service or product or
  //  charge.
  Money net;

  // The numbers associated with notes below which apply to the adjudication of
  //  this item.
  List<int noteNumber;

  // Extensions for noteNumber
  List<Element _noteNumber;

  // The adjudication results.
  List<ClaimResponse_Adjudication adjudication;

  // The third-tier service adjudications for payor added services.
  List<ClaimResponse_SubDetail1 subDetail
ClaimResponse_Detail1(
      {this.id,
this.extension,
this.modifierExtension,
this.productOrService,
this.modifier,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.subDetail});

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Error {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The sequence number of the line item submitted which contains the error.
  //  This value is omitted when the error occurs outside of the item structure.
  int itemSequence;

  // Extensions for itemSequence
  Element _itemSequence;

  // The sequence number of the detail within the line item submitted which
  //  contains the error. This value is omitted when the error occurs outside of the
  //  item structure.
  int detailSequence;

  // Extensions for detailSequence
  Element _detailSequence;

  // The sequence number of the sub-detail within the detail within the line
  //  item submitted which contains the error. This value is omitted when the error
  //  occurs outside of the item structure.
  int subDetailSequence;

  // Extensions for subDetailSequence
  Element _subDetailSequence;

  // An error code, from a specified code system, which details why the claim
  //  could not be adjudicated.
  CodeableConcept code
ClaimResponse_Error(
      {this.id,
this.extension,
this.modifierExtension,
this.itemSequence,
this._itemSequence,
this.detailSequence,
this._detailSequence,
this.subDetailSequence,
this._subDetailSequence,
this.code});

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Insurance {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify insurance entries and provide a sequence of
  //  coverages to convey coordination of benefit order.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // A flag to indicate that this Coverage is to be used for adjudication of
  //  this claim when set to true.
  bool focal;

  // Extensions for focal
  Element _focal;

  // Reference to the insurance card level information contained in the Coverage
  //  resource. The coverage issuing insurer will use these details to locate the
  //  patient's actual coverage within the insurer's information system.
  Reference coverage;

  // A business agreement number established between the provider and the
  //  insurer for special business processing purposes.
  String businessArrangement;

  // Extensions for businessArrangement
  Element _businessArrangement;

  // The result of the adjudication of the line items for the Coverage specified
  //  in this insurance.
  Reference claimResponse
ClaimResponse_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.focal,
this._focal,
this.coverage,
this.businessArrangement,
this._businessArrangement,
this.claimResponse});

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) => _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Item {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely reference the claim item entries.
  int itemSequence;

  // Extensions for itemSequence
  Element _itemSequence;

  // The numbers associated with notes below which apply to the adjudication of
  //  this item.
  List<int noteNumber;

  // Extensions for noteNumber
  List<Element _noteNumber;

  // If this item is a group then the values here are a summary of the
  //  adjudication of the detail items. If this item is a simple product or service
  //  then this is the result of the adjudication of this item.
  List<ClaimResponse_Adjudication adjudication;

  // A claim detail. Either a simple (a product or service) or a 'group' of
  //  sub-details which are simple items.
  List<ClaimResponse_Detail detail
ClaimResponse_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.itemSequence,
this._itemSequence,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.detail});

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Payment {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Whether this represents partial or complete payment of the benefits
  //  payable.
  CodeableConcept type;

  // Total amount of all adjustments to this payment included in this
  //  transaction which are not related to this claim's adjudication.
  Money adjustment;

  // Reason for the payment adjustment.
  CodeableConcept adjustmentReason;

  // Estimated date the payment will be issued or the actual issue date of
  //  payment.
  String date;

  // Extensions for date
  Element _date;

  // Benefits payable less any payment adjustment.
  Money amount;

  // Issuer's unique identifier for the payment instrument.
  Identifier identifier
ClaimResponse_Payment(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.adjustment,
this.adjustmentReason,
this.date,
this._date,
this.amount,
this.identifier});

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) => _$ClaimResponse_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_ProcessNote {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify a note entry.
  int number;

  // Extensions for number
  Element _number;

  // The business purpose of the note text.Enum enum; // displayprintprintoper
  //  type;

  // Extensions for type
  Element _type;

  // The explanation or description associated with the processing.
  String text;

  // Extensions for text
  Element _text;

  // A code to define the language used in the text of the note.
  CodeableConcept language
ClaimResponse_ProcessNote(
      {this.id,
this.extension,
this.modifierExtension,
this.number,
this._number,
this.type,
this._type,
this.text,
this._text,
this.language});

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely reference the claim sub-detail entry.
  int subDetailSequence;

  // Extensions for subDetailSequence
  Element _subDetailSequence;

  // The numbers associated with notes below which apply to the adjudication of
  //  this item.
  List<int noteNumber;

  // Extensions for noteNumber
  List<Element _noteNumber;

  // The adjudication results.
  List<ClaimResponse_Adjudication adjudication
ClaimResponse_SubDetail(
      {this.id,
this.extension,
this.modifierExtension,
this.subDetailSequence,
this._subDetailSequence,
this.noteNumber,
this._noteNumber,
this.adjudication});

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail1 {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // When the value is a group code then this item collects a set of related
  //  claim details, otherwise this contains the product, service, drug or other
  //  billing code for the item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // If the item is not a group then this is the fee for the product or service,
  //  otherwise this is the total of the fees for the details of the group.
  Money unitPrice;

  // A real number that represents a multiplier used in determining the overall
  //  value of services delivered and/or goods received. The concept of a Factor
  //  allows for a discount or surcharge multiplier to be applied to a monetary amount.
  double factor;

  // Extensions for factor
  Element _factor;

  // The quantity times the unit price for an additional service or product or
  //  charge.
  Money net;

  // The numbers associated with notes below which apply to the adjudication of
  //  this item.
  List<int noteNumber;

  // Extensions for noteNumber
  List<Element _noteNumber;

  // The adjudication results.
  List<ClaimResponse_Adjudication adjudication
ClaimResponse_SubDetail1(
      {this.id,
this.extension,
this.modifierExtension,
this.productOrService,
this.modifier,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.noteNumber,
this._noteNumber,
this.adjudication});

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code to indicate the information type of this adjudication record.
  //  Information types may include: the value submitted, maximum values or
  //  percentages allowed or payable under the plan, amounts that the patient is
  //  responsible for in aggregate or pertaining to this item, amounts paid by other
  //  coverages, and the benefit payable for this item.
  CodeableConcept category;

  // Monetary total amount associated with the category.
  Money amount
ClaimResponse_Total(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.amount});

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) => _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Accident {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Date of an accident event  related to the products and services contained
  //  in the claim.
  String date;

  // Extensions for date
  Element _date;

  // The type or context of the accident event for the purposes of selection of
  //  potential insurance coverages and determination of coordination between
  //  insurers.
  CodeableConcept type;

  // The physical location of the accident event.
  Address locationAddress;

  // The physical location of the accident event.
  Reference locationReference
Claim_Accident(
      {this.id,
this.extension,
this.modifierExtension,
this.date,
this._date,
this.type,
this.locationAddress,
this.locationReference});

  factory Claim_Accident.fromJson(Map<String, dynamic> json) => _$Claim_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_CareTeam {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify care team entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // Member of the team who provided the product or service.
  Reference provider;

  // The party who is billing and/or responsible for the claimed products or
  //  services.
  bool responsible;

  // Extensions for responsible
  Element _responsible;

  // The lead, assisting or supervising practitioner and their discipline if a
  //  multidisciplinary team.
  CodeableConcept role;

  // The qualification of the practitioner which is applicable for this service.
  CodeableConcept qualification
Claim_CareTeam(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.provider,
this.responsible,
this._responsible,
this.role,
this.qualification});

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) => _$Claim_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Detail {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify item entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // The type of revenue or cost center providing the product and/or service.
  CodeableConcept revenue;

  // Code to identify the general type of benefits under which products and
  //  services are provided.
  CodeableConcept category;

  // When the value is a group code then this item collects a set of related
  //  claim details, otherwise this contains the product, service, drug or other
  //  billing code for the item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // Identifies the program under which this may be recovered.
  List<CodeableConcept programCode;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // If the item is not a group then this is the fee for the product or service,
  //  otherwise this is the total of the fees for the details of the group.
  Money unitPrice;

  // A real number that represents a multiplier used in determining the overall
  //  value of services delivered and/or goods received. The concept of a Factor
  //  allows for a discount or surcharge multiplier to be applied to a monetary amount.
  double factor;

  // Extensions for factor
  Element _factor;

  // The quantity times the unit price for an additional service or product or
  //  charge.
  Money net;

  // Unique Device Identifiers associated with this line item.
  List<Reference udi;

  // A claim detail line. Either a simple (a product or service) or a 'group' of
  //  sub-details which are simple items.
  List<Claim_SubDetail subDetail
Claim_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.revenue,
this.category,
this.productOrService,
this.modifier,
this.programCode,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.udi,
this.subDetail});

  factory Claim_Detail.fromJson(Map<String, dynamic> json) => _$Claim_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Diagnosis {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify diagnosis entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // The nature of illness or problem in a coded form or as a reference to an
  //  external defined Condition.
  CodeableConcept diagnosisCodeableConcept;

  // The nature of illness or problem in a coded form or as a reference to an
  //  external defined Condition.
  Reference diagnosisReference;

  // When the condition was observed or the relative ranking.
  List<CodeableConcept type;

  // Indication of whether the diagnosis was present on admission to a facility.
  CodeableConcept onAdmission;

  // A package billing code or bundle code used to group products and services
  //  to a particular health condition (such as heart attack) which is based on a
  //  predetermined grouping code system.
  CodeableConcept packageCode
Claim_Diagnosis(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.diagnosisCodeableConcept,
this.diagnosisReference,
this.type,
this.onAdmission,
this.packageCode});

  factory Claim_Diagnosis.fromJson(Map<String, dynamic> json) => _$Claim_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Insurance {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify insurance entries and provide a sequence of
  //  coverages to convey coordination of benefit order.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // A flag to indicate that this Coverage is to be used for adjudication of
  //  this claim when set to true.
  bool focal;

  // Extensions for focal
  Element _focal;

  // The business identifier to be used when the claim is sent for adjudication
  //  against this insurance policy.
  Identifier identifier;

  // Reference to the insurance card level information contained in the Coverage
  //  resource. The coverage issuing insurer will use these details to locate the
  //  patient's actual coverage within the insurer's information system.
  Reference coverage;

  // A business agreement number established between the provider and the
  //  insurer for special business processing purposes.
  String businessArrangement;

  // Extensions for businessArrangement
  Element _businessArrangement;

  // Reference numbers previously provided by the insurer to the provider to be
  //  quoted on subsequent claims containing services or products related to the
  //  prior authorization.
  List<String preAuthRef;

  // Extensions for preAuthRef
  List<Element _preAuthRef;

  // The result of the adjudication of the line items for the Coverage specified
  //  in this insurance.
  Reference claimResponse
Claim_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.focal,
this._focal,
this.identifier,
this.coverage,
this.businessArrangement,
this._businessArrangement,
this.preAuthRef,
this._preAuthRef,
this.claimResponse});

  factory Claim_Insurance.fromJson(Map<String, dynamic> json) => _$Claim_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Item {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify item entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // CareTeam members related to this service or product.
  List<int careTeamSequence;

  // Extensions for careTeamSequence
  List<Element _careTeamSequence;

  // Diagnosis applicable for this service or product.
  List<int diagnosisSequence;

  // Extensions for diagnosisSequence
  List<Element _diagnosisSequence;

  // Procedures applicable for this service or product.
  List<int procedureSequence;

  // Extensions for procedureSequence
  List<Element _procedureSequence;

  // Exceptions, special conditions and supporting information applicable for
  //  this service or product.
  List<int informationSequence;

  // Extensions for informationSequence
  List<Element _informationSequence;

  // The type of revenue or cost center providing the product and/or service.
  CodeableConcept revenue;

  // Code to identify the general type of benefits under which products and
  //  services are provided.
  CodeableConcept category;

  // When the value is a group code then this item collects a set of related
  //  claim details, otherwise this contains the product, service, drug or other
  //  billing code for the item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // Identifies the program under which this may be recovered.
  List<CodeableConcept programCode;

  // The date or dates when the service or product was supplied, performed or
  //  completed. string servicedDate;

  // Extensions for servicedDate
  Element _servicedDate;

  // The date or dates when the service or product was supplied, performed or
  //  completed.
  Period servicedPeriod;

  // Where the product or service was provided.
  CodeableConcept locationCodeableConcept;

  // Where the product or service was provided.
  Address locationAddress;

  // Where the product or service was provided.
  Reference locationReference;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // If the item is not a group then this is the fee for the product or service,
  //  otherwise this is the total of the fees for the details of the group.
  Money unitPrice;

  // A real number that represents a multiplier used in determining the overall
  //  value of services delivered and/or goods received. The concept of a Factor
  //  allows for a discount or surcharge multiplier to be applied to a monetary amount.
  double factor;

  // Extensions for factor
  Element _factor;

  // The quantity times the unit price for an additional service or product or
  //  charge.
  Money net;

  // Unique Device Identifiers associated with this line item.
  List<Reference udi;

  // Physical service site on the patient (limb, tooth, etc.).
  CodeableConcept bodySite;

  // A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  List<CodeableConcept subSite;

  // The Encounters during which this Claim was created or to which the creation
  //  of this record is tightly associated.
  List<Reference encounter;

  // A claim detail line. Either a simple (a product or service) or a 'group' of
  //  sub-details which are simple items.
  List<Claim_Detail detail
Claim_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.careTeamSequence,
this._careTeamSequence,
this.diagnosisSequence,
this._diagnosisSequence,
this.procedureSequence,
this._procedureSequence,
this.informationSequence,
this._informationSequence,
this.revenue,
this.category,
this.productOrService,
this.modifier,
this.programCode,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.locationCodeableConcept,
this.locationAddress,
this.locationReference,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.udi,
this.bodySite,
this.subSite,
this.encounter,
this.detail});

  factory Claim_Item.fromJson(Map<String, dynamic> json) => _$Claim_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Payee {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConcept type;

  // Reference to the individual or organization to whom any payment will be
  //  made.
  Reference party
Claim_Payee(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.party});

  factory Claim_Payee.fromJson(Map<String, dynamic> json) => _$Claim_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_PayeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Procedure {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify procedure entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // When the condition was observed or the relative ranking.
  List<CodeableConcept type;

  // Date and optionally time the procedure was performed.
  StringTime date;

  // Extensions for date
  Element _date;

  // The code or reference to a Procedure resource which identifies the clinical
  //  intervention performed.
  CodeableConcept procedureCodeableConcept;

  // The code or reference to a Procedure resource which identifies the clinical
  //  intervention performed.
  Reference procedureReference;

  // Unique Device Identifiers associated with this line item.
  List<Reference udi
Claim_Procedure(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.type,
this.date,
this._date,
this.procedureCodeableConcept,
this.procedureReference,
this.udi});

  factory Claim_Procedure.fromJson(Map<String, dynamic> json) => _$Claim_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Related {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Reference to a related claim.
  Reference claim;

  // A code to convey how the claims are related.
  CodeableConcept relationship;

  // An alternate organizational reference to the case or file to which this
  //  particular claim pertains.
  Identifier reference
Claim_Related(
      {this.id,
this.extension,
this.modifierExtension,
this.claim,
this.relationship,
this.reference});

  factory Claim_Related.fromJson(Map<String, dynamic> json) => _$Claim_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SubDetail {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify item entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // The type of revenue or cost center providing the product and/or service.
  CodeableConcept revenue;

  // Code to identify the general type of benefits under which products and
  //  services are provided.
  CodeableConcept category;

  // When the value is a group code then this item collects a set of related
  //  claim details, otherwise this contains the product, service, drug or other
  //  billing code for the item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // Identifies the program under which this may be recovered.
  List<CodeableConcept programCode;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // If the item is not a group then this is the fee for the product or service,
  //  otherwise this is the total of the fees for the details of the group.
  Money unitPrice;

  // A real number that represents a multiplier used in determining the overall
  //  value of services delivered and/or goods received. The concept of a Factor
  //  allows for a discount or surcharge multiplier to be applied to a monetary amount.
  double factor;

  // Extensions for factor
  Element _factor;

  // The quantity times the unit price for an additional service or product or
  //  charge.
  Money net;

  // Unique Device Identifiers associated with this line item.
  List<Reference udi
Claim_SubDetail(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.revenue,
this.category,
this.productOrService,
this.modifier,
this.programCode,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.udi});

  factory Claim_SubDetail.fromJson(Map<String, dynamic> json) => _$Claim_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SupportingInfo {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A number to uniquely identify supporting information entries.
  int sequence;

  // Extensions for sequence
  Element _sequence;

  // The general class of the information supplied: information; exception;
  //  accident, employment; onset, etc.
  CodeableConcept category;

  // System and code pertaining to the specific information regarding special
  //  conditions relating to the setting, treatment or patient  for which care is
  //  sought.
  CodeableConcept code;

  // The date when or period to which this information refers. string
  //  timingDate;

  // Extensions for timingDate
  Element _timingDate;

  // The date when or period to which this information refers.
  Period timingPeriod;

  // Additional data or information such as resources, documents, images etc.
  //  including references to the data or the actual inclusion of the data. boolean
  //  valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // Additional data or information such as resources, documents, images etc.
  //  including references to the data or the actual inclusion of the data. string
  //  valueString;

  // Extensions for valueString
  Element _valueString;

  // Additional data or information such as resources, documents, images etc.
  //  including references to the data or the actual inclusion of the data.
  Quantity valueQuantity;

  // Additional data or information such as resources, documents, images etc.
  //  including references to the data or the actual inclusion of the data.
  Attachment valueAttachment;

  // Additional data or information such as resources, documents, images etc.
  //  including references to the data or the actual inclusion of the data.
  Reference valueReference;

  // Provides the reason in the situation where a reason code is required in
  //  addition to the content.
  CodeableConcept reason
Claim_SupportingInfo(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.category,
this.code,
this.timingDate,
this._timingDate,
this.timingPeriod,
this.valueBoolean,
this._valueBoolean,
this.valueString,
this._valueString,
this.valueQuantity,
this.valueAttachment,
this.valueReference,
this.reason});

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) => _$Claim_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SupportingInfoToJson(this);
}
