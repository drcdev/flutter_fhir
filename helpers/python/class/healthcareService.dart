
part 'healthcareService.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService {
  
  // This is a HealthcareService 
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

  // External identifiers for this item.
  List<Identifier identifier;

  // This flag is used to mark the record to not be used. This is not used when
  //  a center is closed for maintenance, or for holidays, the notAvailable period is
  //  to be used for this.
  bool active;

  // Extensions for active
  Element _active;

  // The organization that provides this healthcare service.
  Reference providedBy;

  // Identifies the broad category of service being performed or delivered.
  List<CodeableConcept category;

  // The specific type of service that may be delivered or performed.
  List<CodeableConcept type;

  // Collection of specialties handled by the service site. This is more of a
  //  medical term.
  List<CodeableConcept specialty;

  // The location(s) where this healthcare service may be provided.
  List<Reference location;

  // Further description of the service as it would be presented to a consumer
  //  while searching.
  String name;

  // Extensions for name
  Element _name;

  // Any additional description of the service and/or any specific issues not
  //  covered by the other attributes, which can be displayed as further detail under
  //  the serviceName.
  String comment;

  // Extensions for comment
  Element _comment;

  // Extra details about the service that can't be placed in the other fields.
  String extraDetails;

  // Extensions for extraDetails
  Element _extraDetails;

  // If there is a photo/symbol associated with this HealthcareService, it may
  //  be included here to facilitate quick identification of the service in a list.
  Attachment photo;

  // List of contacts related to this specific healthcare service.
  List<ContactPoint telecom;

  // The location(s) that this service is available to (not where the service is
  //  provided).
  List<Reference coverageArea;

  // The code(s) that detail the conditions under which the healthcare service
  //  is available/offered.
  List<CodeableConcept serviceProvisionCode;

  // Does this service have specific eligibility requirements that need to be
  //  met in order to use the service?
  List<HealthcareService_Eligibility eligibility;

  // Programs that this service is applicable to.
  List<CodeableConcept program;

  // Collection of characteristics (attributes).
  List<CodeableConcept characteristic;

  // Some services are specifically made available in multiple languages, this
  //  property permits a directory to declare the languages this is offered in.
  //  Typically this is only provided where a service operates in communities with
  //  mixed languages used.
  List<CodeableConcept communication;

  // Ways that the service accepts referrals, if this is not provided then it is
  //  implied that no referral is required.
  List<CodeableConcept referralMethod;

  // Indicates whether or not a prospective consumer will require an appointment
  //  for a particular service at a site to be provided by the Organization.
  //  Indicates if an appointment is required for access to this service.
  bool appointmentRequired;

  // Extensions for appointmentRequired
  Element _appointmentRequired;

  // A collection of times that the Service Site is available.
  List<HealthcareService_AvailableTime availableTime;

  // The HealthcareService is not available during this period of time due to
  //  the provided reason.
  List<HealthcareService_NotAvailable notAvailable;

  // A description of site availability exceptions, e.g. public holiday
  //  availability. Succinctly describing all possible exceptions to normal site
  //  availability as details in the available Times and not available Times.
  String availabilityExceptions;

  // Extensions for availabilityExceptions
  Element _availabilityExceptions;

  // Technical endpoints providing access to services operated for the specific
  //  healthcare services defined at this resource.
  List<Reference endpoint
HealthcareService(
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
this.active,
this._active,
this.providedBy,
this.category,
this.type,
this.specialty,
this.location,
this.name,
this._name,
this.comment,
this._comment,
this.extraDetails,
this._extraDetails,
this.photo,
this.telecom,
this.coverageArea,
this.serviceProvisionCode,
this.eligibility,
this.program,
this.characteristic,
this.communication,
this.referralMethod,
this.appointmentRequired,
this._appointmentRequired,
this.availableTime,
this.notAvailable,
this.availabilityExceptions,
this._availabilityExceptions,
this.endpoint});

  factory HealthcareService.fromJson(Map<String, dynamic> json) => _$HealthcareServiceFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareServiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_AvailableTime {

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
  List<Extension modifierExtension
  
  List< daysOfWeek;

  // Extensions for daysOfWeek
  List<Element _daysOfWeek;

  // Is this always available? (hence times are irrelevant) e.g. 24 hour
  //  service.
  bool allDay;

  // Extensions for allDay
  Element _allDay;

  // The opening time of day. Note: If the AllDay flag is set, then this time is
  //  ignored.
  String availableStartTime;

  // Extensions for availableStartTime
  Element _availableStartTime;

  // The closing time of day. Note: If the AllDay flag is set, then this time is
  //  ignored.
  String availableEndTime;

  // Extensions for availableEndTime
  Element _availableEndTime
HealthcareService_AvailableTime(
      {this.id,
this.extension,
this.modifierExtension,
this.daysOfWeek,
this._daysOfWeek,
this.allDay,
this._allDay,
this.availableStartTime,
this._availableStartTime,
this.availableEndTime,
this._availableEndTime});

  factory HealthcareService_AvailableTime.fromJson(Map<String, dynamic> json) => _$HealthcareService_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_Eligibility {

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

  // Coded value for the eligibility.
  CodeableConcept code;

  // Describes the eligibility conditions for the service.
  String comment;

  // Extensions for comment
  Element _comment
HealthcareService_Eligibility(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.comment,
this._comment});

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) => _$HealthcareService_EligibilityFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_EligibilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_NotAvailable {

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

  // The reason that can be presented to the user as to why this time is not
  //  available.
  String description;

  // Extensions for description
  Element _description;

  // Service is not available (seasonally or for a public holiday) from this
  //  date.
  Period during
HealthcareService_NotAvailable(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.during});

  factory HealthcareService_NotAvailable.fromJson(Map<String, dynamic> json) => _$HealthcareService_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_NotAvailableToJson(this);
}
