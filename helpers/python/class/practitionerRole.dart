
part 'practitionerRole.g.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole {
  
  // This is a PractitionerRole 
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

  // Business Identifiers that are specific to a role/location.
  List<Identifier identifier;

  // Whether this practitioner role record is in active use.
  bool active;

  // Extensions for active
  Element _active;

  // The period during which the person is authorized to act as a practitioner
  //  in these role(s) for the organization.
  Period period;

  // Practitioner that is able to provide the defined services for the
  //  organization.
  Reference practitioner;

  // The organization where the Practitioner performs the roles associated.
  Reference organization;

  // Roles which this practitioner is authorized to perform for the
  //  organization.
  List<CodeableConcept code;

  // Specific specialty of the practitioner.
  List<CodeableConcept specialty;

  // The location(s) at which this practitioner provides care.
  List<Reference location;

  // The list of healthcare services that this worker provides for this role's
  //  Organization/Location(s).
  List<Reference healthcareService;

  // Contact details that are specific to the role/location/service.
  List<ContactPoint telecom;

  // A collection of times the practitioner is available or performing this role
  //  at the location and/or healthcareservice.
  List<PractitionerRole_AvailableTime availableTime;

  // The practitioner is not available or performing this role during this
  //  period of time due to the provided reason.
  List<PractitionerRole_NotAvailable notAvailable;

  // A description of site availability exceptions, e.g. public holiday
  //  availability. Succinctly describing all possible exceptions to normal site
  //  availability as details in the available Times and not available Times.
  String availabilityExceptions;

  // Extensions for availabilityExceptions
  Element _availabilityExceptions;

  // Technical endpoints providing access to services operated for the
  //  practitioner with this role.
  List<Reference endpoint
PractitionerRole(
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
this.period,
this.practitioner,
this.organization,
this.code,
this.specialty,
this.location,
this.healthcareService,
this.telecom,
this.availableTime,
this.notAvailable,
this.availabilityExceptions,
this._availabilityExceptions,
this.endpoint});

  factory PractitionerRole.fromJson(Map<String, dynamic> json) => _$PractitionerRoleFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRoleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_AvailableTime {

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

  // Indicates which days of the week are available between the start and end
  //  Times.
  List<String daysOfWeek;

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
PractitionerRole_AvailableTime(
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

  factory PractitionerRole_AvailableTime.fromJson(Map<String, dynamic> json) => _$PractitionerRole_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_NotAvailable {

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
PractitionerRole_NotAvailable(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.during});

  factory PractitionerRole_NotAvailable.fromJson(Map<String, dynamic> json) => _$PractitionerRole_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_NotAvailableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Practitioner_Qualification {

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

  // An identifier that applies to this person's qualification in this role.
  List<Identifier identifier;

  // Coded representation of the qualification.
  CodeableConcept code;

  // Period during which the qualification is valid.
  Period period;

  // Organization that regulates and issues the qualification.
  Reference issuer
Practitioner_Qualification(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.code,
this.period,
this.issuer});

  factory Practitioner_Qualification.fromJson(Map<String, dynamic> json) => _$Practitioner_QualificationFromJson(json);
  Map<String, dynamic> toJson() => _$Practitioner_QualificationToJson(this);
}
