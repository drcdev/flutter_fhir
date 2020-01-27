
part 'auditEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent {
  
  // This is a AuditEvent 
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

  // Identifier for a family of the event.  For example, a menu item, program,
  //  rule, policy, function code, application name or URL. It identifies the
  //  performed function.
  Coding type;

  // Identifier for the category of event.
  List<Coding subtype;

  // Indicator for type of action performed during the event that generated the
  //  audit.Enum enum; // CRUDE action;

  // Extensions for action
  Element _action;

  // The period during which the activity occurred.
  Period period;

  // The time when the event was recorded.
  DateTime recorded;

  // Extensions for recorded
  Element _recorded;

  // Indicates whether the event succeeded or failed.Enum enum; // 04812
  //  outcome;

  // Extensions for outcome
  Element _outcome;

  // A free text description of the outcome of the event.
  String outcomeDesc;

  // Extensions for outcomeDesc
  Element _outcomeDesc;

  // The purposeOfUse (reason) that was used during the event being recorded.
  List<CodeableConcept purposeOfEvent;

  // An actor taking an active role in the event or activity that is logged.
  List<AuditEvent_Agent agent;

  // The system that is reporting the event.
  AuditEvent_Source source;

  // Specific instances of data or objects that have been accessed.
  List<AuditEvent_Entity entity
AuditEvent(
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
this.type,
this.subtype,
this.action,
this._action,
this.period,
this.recorded,
this._recorded,
this.outcome,
this._outcome,
this.outcomeDesc,
this._outcomeDesc,
this.purposeOfEvent,
this.agent,
this.source,
this.entity});

  factory AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Agent {

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

  // Specification of the participation type the user plays when performing the
  //  event.
  CodeableConcept type;

  // The security role that the user was acting under, that come from local
  //  codes defined by the access control security system (e.g. RBAC, ABAC) used in
  //  the local context.
  List<CodeableConcept role;

  // Reference to who this agent is that was involved in the event.
  Reference who;

  // Alternative agent Identifier. For a human, this should be a user identifier
  //  text string from authentication system. This identifier would be one known to a
  //  common authentication system (e.g. single sign-on), if available.
  String altId;

  // Extensions for altId
  Element _altId;

  // Human-meaningful name for the agent.
  String name;

  // Extensions for name
  Element _name;

  // Indicator that the user is or is not the requestor, or initiator, for the
  //  event being audited.
  bool requestor;

  // Extensions for requestor
  Element _requestor;

  // Where the event occurred.
  Reference location;

  // The policy or plan that authorized the activity being recorded. Typically,
  //  a single activity may have multiple applicable policies, such as patient
  //  consent, guarantor funding, etc. The policy would also indicate the security
  //  token used.
  List<String policy;

  // Extensions for policy
  List<Element _policy;

  // Type of media involved. Used when the event is about exporting/importing
  //  onto media.
  Coding media;

  // Logical network location for application activity, if the activity has a
  //  network location.
  AuditEvent_Network network;

  // The reason (purpose of use), specific to this agent, that was used during
  //  the event being recorded.
  List<CodeableConcept purposeOfUse
AuditEvent_Agent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.role,
this.who,
this.altId,
this._altId,
this.name,
this._name,
this.requestor,
this._requestor,
this.location,
this.policy,
this._policy,
this.media,
this.network,
this.purposeOfUse});

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) => _$AuditEvent_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Detail {

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

  // The type of extra detail provided in the value.
  String type;

  // Extensions for type
  Element _type;

  // The  value of the extra detail. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The  value of the extra detail. string valueBase64Binary;

  // Extensions for valueBase64Binary
  Element _valueBase64Binary
AuditEvent_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.valueString,
this._valueString,
this.valueBase64Binary,
this._valueBase64Binary});

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) => _$AuditEvent_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Entity {

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

  // Identifies a specific instance of the entity. The reference should be
  //  version specific.
  Reference what;

  // The type of the object that was involved in this audit event.
  Coding type;

  // Code representing the role the entity played in the event being audited.
  Coding role;

  // Identifier for the data life-cycle stage for the entity.
  Coding lifecycle;

  // Security labels for the identified entity.
  List<Coding securityLabel;

  // A name of the entity in the audit event.
  String name;

  // Extensions for name
  Element _name;

  // Text that describes the entity in more detail.
  String description;

  // Extensions for description
  Element _description;

  // The query parameters for a query-type entities.
  String query;

  // Extensions for query
  Element _query;

  // Tagged value pairs for conveying additional information about the entity.
  List<AuditEvent_Detail detail
AuditEvent_Entity(
      {this.id,
this.extension,
this.modifierExtension,
this.what,
this.type,
this.role,
this.lifecycle,
this.securityLabel,
this.name,
this._name,
this.description,
this._description,
this.query,
this._query,
this.detail});

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) => _$AuditEvent_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Network {

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

  // An identifier for the network access point of the user device for the audit
  //  event.
  String address;

  // Extensions for address
  Element _address;

  // An identifier for the type of network access point that originated the
  //  audit event.Enum enum; // 12345 type;

  // Extensions for type
  Element _type
AuditEvent_Network(
      {this.id,
this.extension,
this.modifierExtension,
this.address,
this._address,
this.type,
this._type});

  factory AuditEvent_Network.fromJson(Map<String, dynamic> json) => _$AuditEvent_NetworkFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_NetworkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Source {

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

  // Logical source location within the healthcare enterprise network.  For
  //  example, a hospital or other provider location within a multi-entity provider group.
  String site;

  // Extensions for site
  Element _site;

  // Identifier of the source where the event was detected.
  Reference observer;

  // Code specifying the type of source where event originated.
  List<Coding type
AuditEvent_Source(
      {this.id,
this.extension,
this.modifierExtension,
this.site,
this._site,
this.observer,
this.type});

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) => _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_SourceToJson(this);
}
