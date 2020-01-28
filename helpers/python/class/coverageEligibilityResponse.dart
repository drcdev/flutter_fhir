
part 'coverageEligibilityResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse {
  
  // This is a CoverageEligibilityResponse 
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
  Element _status
  
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

  // The date this resource was created.
  StringTime created;

  // Extensions for created
  Element _created;

  // The provider which is responsible for the request.
  Reference requestor;

  // Reference to the original request resource.
  Reference request;

  // The outcome of the request processing.Enum enum; //
  //  queuedcompleteerrorpartial outcome;

  // Extensions for outcome
  Element _outcome;

  // A human readable description of the status of the adjudication.
  String disposition;

  // Extensions for disposition
  Element _disposition;

  // The Insurer who issued the coverage in question and is the author of the
  //  response.
  Reference insurer;

  // Financial instruments for reimbursement for the health care products and
  //  services.
  List<CoverageEligibilityResponse_Insurance insurance;

  // A reference from the Insurer to which these services pertain to be used on
  //  further communication and as proof that the request occurred.
  String preAuthRef;

  // Extensions for preAuthRef
  Element _preAuthRef;

  // A code for the form to be used for printing the content.
  CodeableConcept form;

  // Errors encountered during the processing of the request.
  List<CoverageEligibilityResponse_Error error
CoverageEligibilityResponse(
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
this.purpose,
this._purpose,
this.patient,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.created,
this._created,
this.requestor,
this.request,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.insurer,
this.insurance,
this.preAuthRef,
this._preAuthRef,
this.form,
this.error});

  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

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

  // Classification of benefit being provided.
  CodeableConcept type;

  // The quantity of the benefit which is permitted under the coverage. number
  //  allowedUnsignedInt;

  // Extensions for allowedUnsignedInt
  Element _allowedUnsignedInt;

  // The quantity of the benefit which is permitted under the coverage. string
  //  allowedString;

  // Extensions for allowedString
  Element _allowedString;

  // The quantity of the benefit which is permitted under the coverage.
  Money allowedMoney;

  // The quantity of the benefit which have been consumed to date. number
  //  usedUnsignedInt;

  // Extensions for usedUnsignedInt
  Element _usedUnsignedInt;

  // The quantity of the benefit which have been consumed to date. string
  //  usedString;

  // Extensions for usedString
  Element _usedString;

  // The quantity of the benefit which have been consumed to date.
  Money usedMoney
CoverageEligibilityResponse_Benefit(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.allowedUnsignedInt,
this._allowedUnsignedInt,
this.allowedString,
this._allowedString,
this.allowedMoney,
this.usedUnsignedInt,
this._usedUnsignedInt,
this.usedString,
this._usedString,
this.usedMoney});

  factory CoverageEligibilityResponse_Benefit.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

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

  // An error code,from a specified code system, which details why the
  //  eligibility check could not be performed.
  CodeableConcept code
CoverageEligibilityResponse_Error(
      {this.id,
this.extension,
this.modifierExtension,
this.code});

  factory CoverageEligibilityResponse_Error.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ErrorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Insurance {

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

  // Reference to the insurance card level information contained in the Coverage
  //  resource. The coverage issuing insurer will use these details to locate the
  //  patient's actual coverage within the insurer's information system.
  Reference coverage;

  // Flag indicating if the coverage provided is inforce currently if no service
  //  date(s) specified or for the whole duration of the service dates.
  bool inforce;

  // Extensions for inforce
  Element _inforce;

  // The term of the benefits documented in this response.
  Period benefitPeriod;

  // Benefits and optionally current balances, and authorization details by
  //  category or service.
  List<CoverageEligibilityResponse_Item item
CoverageEligibilityResponse_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.coverage,
this.inforce,
this._inforce,
this.benefitPeriod,
this.item});

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Item {

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

  // Code to identify the general type of benefits under which products and
  //  services are provided.
  CodeableConcept category;

  // This contains the product, service, drug or other billing code for the
  //  item.
  CodeableConcept productOrService;

  // Item typification or modifiers codes to convey additional context for the
  //  product or service.
  List<CodeableConcept modifier;

  // The practitioner who is eligible for the provision of the product or
  //  service.
  Reference provider;

  // True if the indicated class of service is excluded from the plan, missing
  //  or False indicates the product or service is included in the coverage.
  bool excluded;

  // Extensions for excluded
  Element _excluded;

  // A short name or tag for the benefit.
  String name;

  // Extensions for name
  Element _name;

  // A richer description of the benefit or services covered.
  String description;

  // Extensions for description
  Element _description;

  // Is a flag to indicate whether the benefits refer to in-network providers or
  //  out-of-network providers.
  CodeableConcept network;

  // Indicates if the benefits apply to an individual or to the family.
  CodeableConcept unit;

  // The term or period of the values such as 'maximum lifetime benefit' or
  //  'maximum annual visits'.
  CodeableConcept term;

  // Benefits used to date.
  List<CoverageEligibilityResponse_Benefit benefit;

  // A boolean flag indicating whether a preauthorization is required prior to
  //  actual service delivery.
  bool authorizationRequired;

  // Extensions for authorizationRequired
  Element _authorizationRequired;

  // Codes or comments regarding information or actions associated with the
  //  preauthorization.
  List<CodeableConcept authorizationSupporting;

  // A web location for obtaining requirements or descriptive information
  //  regarding the preauthorization.
  String authorizationUrl;

  // Extensions for authorizationUrl
  Element _authorizationUrl
CoverageEligibilityResponse_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.productOrService,
this.modifier,
this.provider,
this.excluded,
this._excluded,
this.name,
this._name,
this.description,
this._description,
this.network,
this.unit,
this.term,
this.benefit,
this.authorizationRequired,
this._authorizationRequired,
this.authorizationSupporting,
this.authorizationUrl,
this._authorizationUrl});

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Class {

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

  // The type of classification for which an insurer-specific class label or
  //  number and optional name is provided, for example may be used to identify a
  //  class of coverage or employer group, Policy, Plan.
  CodeableConcept type;

  // The alphanumeric string value associated with the insurer issued label.
  String value;

  // Extensions for value
  Element _value;

  // A short description for the class.
  String name;

  // Extensions for name
  Element _name
Coverage_Class(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.value,
this._value,
this.name,
this._name});

  factory Coverage_Class.fromJson(Map<String, dynamic> json) => _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ClassToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_CostToBeneficiary {

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

  // The category of patient centric costs associated with treatment.
  CodeableConcept type;

  // The amount due from the patient for the cost category.
  Quantity valueQuantity;

  // The amount due from the patient for the cost category.
  Money valueMoney;

  // A suite of codes indicating exceptions or reductions to patient costs and
  //  their effective periods.
  List<Coverage_Exception exception
Coverage_CostToBeneficiary(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueQuantity,
this.valueMoney,
this.exception});

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) => _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_CostToBeneficiaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {

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

  // The code for the specific exception.
  CodeableConcept type;

  // The timeframe during when the exception is in force.
  Period period
Coverage_Exception(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.period});

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) => _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ExceptionToJson(this);
}