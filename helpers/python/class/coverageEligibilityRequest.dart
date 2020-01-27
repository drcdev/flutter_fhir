
part 'coverageEligibilityRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest {
  
  // This is a CoverageEligibilityRequest 
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

  // A unique identifier assigned to this coverage eligiblity request.
  List<Identifier identifier;

  // The status of the resource instance.
  String status;

  // Extensions for status
  Element _status;

  // When the requestor expects the processor to complete processing.
  CodeableConcept priority
  
  List< purpose;

  // Extensions for purpose
  List<Element _purpose;

  // The party who is the beneficiary of the supplied coverage and for whom
  //  eligibility is sought.
  Reference patient;

  // The date or dates when the enclosed suite of services were performed or
  //  completed. string servicedDate;

  // Extensions for servicedDate
  Element _servicedDate;

  // The date or dates when the enclosed suite of services were performed or
  //  completed.
  Period servicedPeriod;

  // The date when this resource was created.
  StringTime created;

  // Extensions for created
  Element _created;

  // Person who created the request.
  Reference enterer;

  // The provider which is responsible for the request.
  Reference provider;

  // The Insurer who issued the coverage in question and is the recipient of the
  //  request.
  Reference insurer;

  // Facility where the services are intended to be provided.
  Reference facility;

  // Additional information codes regarding exceptions, special considerations,
  //  the condition, situation, prior or concurrent issues.
  List<CoverageEligibilityRequest_SupportingInfo supportingInfo;

  // Financial instruments for reimbursement for the health care products and
  //  services.
  List<CoverageEligibilityRequest_Insurance insurance;

  // Service categories or billable services for which benefit details and/or an
  //  authorization prior to service delivery may be required by the payor.
  List<CoverageEligibilityRequest_Item item
CoverageEligibilityRequest(
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
this.priority,
this.purpose,
this._purpose,
this.patient,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.created,
this._created,
this.enterer,
this.provider,
this.insurer,
this.facility,
this.supportingInfo,
this.insurance,
this.item});

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Diagnosis {

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

  // The nature of illness or problem in a coded form or as a reference to an
  //  external defined Condition.
  CodeableConcept diagnosisCodeableConcept;

  // The nature of illness or problem in a coded form or as a reference to an
  //  external defined Condition.
  Reference diagnosisReference
CoverageEligibilityRequest_Diagnosis(
      {this.id,
this.extension,
this.modifierExtension,
this.diagnosisCodeableConcept,
this.diagnosisReference});

  factory CoverageEligibilityRequest_Diagnosis.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Insurance {

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

  // A flag to indicate that this Coverage is to be used for evaluation of this
  //  request when set to true.
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
  Element _businessArrangement
CoverageEligibilityRequest_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.focal,
this._focal,
this.coverage,
this.businessArrangement,
this._businessArrangement});

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Item {

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

  // Exceptions, special conditions and supporting information applicable for
  //  this service or product line.
  List<int supportingInfoSequence;

  // Extensions for supportingInfoSequence
  List<Element _supportingInfoSequence;

  // Code to identify the general type of benefits under which products and
  //  services are provided.
  CodeableConcept category;

  // This contains the product, service, drug or other billing code for the
  //  item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // The practitioner who is responsible for the product or service to be
  //  rendered to the patient.
  Reference provider;

  // The number of repetitions of a service or product.
  Quantity quantity;

  // The amount charged to the patient by the provider for a single unit.
  Money unitPrice;

  // Facility where the services will be provided.
  Reference facility;

  // Patient diagnosis for which care is sought.
  List<CoverageEligibilityRequest_Diagnosis diagnosis;

  // The plan/proposal/order describing the proposed service in detail.
  List<Reference detail
CoverageEligibilityRequest_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.supportingInfoSequence,
this._supportingInfoSequence,
this.category,
this.productOrService,
this.modifier,
this.provider,
this.quantity,
this.unitPrice,
this.facility,
this.diagnosis,
this.detail});

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_SupportingInfo {

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

  // Additional data or information such as resources, documents, images etc.
  //  including references to the data or the actual inclusion of the data.
  Reference information;

  // The supporting materials are applicable for all detail items,
  //  product/servce categories and specific billing codes.
  bool appliesToAll;

  // Extensions for appliesToAll
  Element _appliesToAll
CoverageEligibilityRequest_SupportingInfo(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.information,
this.appliesToAll,
this._appliesToAll});

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_SupportingInfoToJson(this);
}
