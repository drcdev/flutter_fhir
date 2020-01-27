
part 'serviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceRequest {
  
  // This is a ServiceRequest 
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

  // Identifiers assigned to this order instance by the orderer and/or the
  //  receiver and/or order fulfiller.
  List<Identifier identifier;

  // The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  //  definition that is adhered to in whole or in part by this ServiceRequest.
  List<String instantiatesCanonical;

  // The URL pointing to an externally maintained protocol, guideline, orderset
  //  or other definition that is adhered to in whole or in part by this
  //  ServiceRequest.
  List<String instantiatesUri;

  // Extensions for instantiatesUri
  List<Element _instantiatesUri;

  // Plan/proposal/order fulfilled by this request.
  List<Reference basedOn;

  // The request takes the place of the referenced completed or terminated
  //  request(s).
  List<Reference replaces;

  // A shared identifier common to all service requests that were authorized
  //  more or less simultaneously by a single author, representing the composite or
  //  group identifier.
  Identifier requisition;

  // The status of the order.
  String status;

  // Extensions for status
  Element _status;

  // Whether the request is a proposal, plan, an original order or a reflex
  //  order.
  String intent;

  // Extensions for intent
  Element _intent;

  // A code that classifies the service for searching, sorting and display
  //  purposes (e.g. "Surgical Procedure").
  List<CodeableConcept category;

  // Indicates how quickly the ServiceRequest should be addressed with respect
  //  to other requests.
  String priority;

  // Extensions for priority
  Element _priority;

  // Set this to true if the record is saying that the service/procedure should
  //  NOT be performed.
  bool doNotPerform;

  // Extensions for doNotPerform
  Element _doNotPerform;

  // A code that identifies a particular service (i.e., procedure, diagnostic
  //  investigation, or panel of investigations) that have been requested.
  CodeableConcept code;

  // Additional details and instructions about the how the services are to be
  //  delivered.   For example, and order for a urinary catheter may have an order
  //  detail for an external or indwelling catheter, or an order for a bandage may
  //  require additional instructions specifying how the bandage should be applied.
  List<CodeableConcept orderDetail;

  // An amount of service being requested which can be a quantity ( for example
  //  $1,500 home modification), a ratio ( for example, 20 half day visits per
  //  month), or a range (2.0 to 1.8 Gy per fraction).
  Quantity quantityQuantity;

  // An amount of service being requested which can be a quantity ( for example
  //  $1,500 home modification), a ratio ( for example, 20 half day visits per
  //  month), or a range (2.0 to 1.8 Gy per fraction).
  Ratio quantityRatio;

  // An amount of service being requested which can be a quantity ( for example
  //  $1,500 home modification), a ratio ( for example, 20 half day visits per
  //  month), or a range (2.0 to 1.8 Gy per fraction).
  Range quantityRange;

  // On whom or what the service is to be performed. This is usually a human
  //  patient, but can also be requested on animals, groups of humans or animals,
  //  devices such as dialysis machines, or even locations (typically for
  //  environmental scans).
  Reference subject;

  // An encounter that provides additional information about the healthcare
  //  context in which this request is made.
  Reference encounter;

  // The date/time at which the requested service should occur. string
  //  occurrenceDateTime;

  // Extensions for occurrenceDateTime
  Element _occurrenceDateTime;

  // The date/time at which the requested service should occur.
  Period occurrencePeriod;

  // The date/time at which the requested service should occur.
  Timing occurrenceTiming;

  // If a CodeableConcept is present, it indicates the pre-condition for
  //  performing the service.  For example "pain", "on flare-up", etc. boolean
  //  asNeededBoolean;

  // Extensions for asNeededBoolean
  Element _asNeededBoolean;

  // If a CodeableConcept is present, it indicates the pre-condition for
  //  performing the service.  For example "pain", "on flare-up", etc.
  CodeableConcept asNeededCodeableConcept;

  // When the request transitioned to being actionable.
  StringTime authoredOn;

  // Extensions for authoredOn
  Element _authoredOn;

  // The individual who initiated the request and has responsibility for its
  //  activation.
  Reference requester;

  // Desired type of performer for doing the requested service.
  CodeableConcept performerType;

  // The desired performer for doing the requested service.  For example, the
  //  surgeon, dermatopathologist, endoscopist, etc.
  List<Reference performer;

  // The preferred location(s) where the procedure should actually happen in
  //  coded or free text form. E.g. at home or nursing day care center.
  List<CodeableConcept locationCode;

  // A reference to the the preferred location(s) where the procedure should
  //  actually happen. E.g. at home or nursing day care center.
  List<Reference locationReference;

  // An explanation or justification for why this service is being requested in
  //  coded or textual form.   This is often for billing purposes.  May relate to the
  //  resources referred to in `supportingInfo`.
  List<CodeableConcept reasonCode;

  // Indicates another resource that provides a justification for why this
  //  service is being requested.   May relate to the resources referred to in
  //  `supportingInfo`.
  List<Reference reasonReference;

  // Insurance plans, coverage extensions, pre-authorizations and/or
  //  pre-determinations that may be needed for delivering the requested service.
  List<Reference insurance;

  // Additional clinical information about the patient or specimen that may
  //  influence the services or their interpretations.     This information includes
  //  diagnosis, clinical findings and other observations.  In laboratory ordering
  //  these are typically referred to as "ask at order entry questions (AOEs)".  This
  //  includes observations explicitly requested by the producer (filler) to provide
  //  context or supporting information needed to complete the order. For example, 
  //  reporting the amount of inspired oxygen for blood gas measurements.
  List<Reference supportingInfo;

  // One or more specimens that the laboratory procedure will use.
  List<Reference specimen;

  // Anatomic location where the procedure should be performed. This is the
  //  target site.
  List<CodeableConcept bodySite;

  // Any other notes and comments made about the service request. For example,
  //  internal billing notes.
  List<Annotation note;

  // Instructions in terms that are understood by the patient or consumer.
  String patientInstruction;

  // Extensions for patientInstruction
  Element _patientInstruction;

  // Key events in the history of the request.
  List<Reference relevantHistory
ServiceRequest(
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
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.basedOn,
this.replaces,
this.requisition,
this.status,
this._status,
this.intent,
this._intent,
this.category,
this.priority,
this._priority,
this.doNotPerform,
this._doNotPerform,
this.code,
this.orderDetail,
this.quantityQuantity,
this.quantityRatio,
this.quantityRange,
this.subject,
this.encounter,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.asNeededBoolean,
this._asNeededBoolean,
this.asNeededCodeableConcept,
this.authoredOn,
this._authoredOn,
this.requester,
this.performerType,
this.performer,
this.locationCode,
this.locationReference,
this.reasonCode,
this.reasonReference,
this.insurance,
this.supportingInfo,
this.specimen,
this.bodySite,
this.note,
this.patientInstruction,
this._patientInstruction,
this.relevantHistory});

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);
}
