
part 'carePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan {
  
  // This is a CarePlan 
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

  // Business identifiers assigned to this care plan by the performer or other
  //  systems which remain constant as the resource is updated and propagates from
  //  server to server.
  List<Identifier identifier;

  // The URL pointing to a FHIR-defined protocol, guideline, questionnaire or
  //  other definition that is adhered to in whole or in part by this CarePlan.
  List<String instantiatesCanonical;

  // The URL pointing to an externally maintained protocol, guideline,
  //  questionnaire or other definition that is adhered to in whole or in part by
  //  this CarePlan.
  List<String instantiatesUri;

  // Extensions for instantiatesUri
  List<Element _instantiatesUri;

  // A care plan that is fulfilled in whole or in part by this care plan.
  List<Reference basedOn;

  // Completed or terminated care plan whose function is taken by this new care
  //  plan.
  List<Reference replaces;

  // A larger care plan of which this particular care plan is a component or
  //  step.
  List<Reference partOf;

  // Indicates whether the plan is currently being acted upon, represents future
  //  intentions or is now a historical record.
  String status;

  // Extensions for status
  Element _status;

  // Indicates the level of authority/intentionality associated with the care
  //  plan and where the care plan fits into the workflow chain.
  String intent;

  // Extensions for intent
  Element _intent;

  // Identifies what "kind" of plan this is to support differentiation between
  //  multiple co-existing plans; e.g. "Home health", "psychiatric", "asthma",
  //  "disease management", "wellness plan", etc.
  List<CodeableConcept category;

  // Human-friendly name for the care plan.
  String title;

  // Extensions for title
  Element _title;

  // A description of the scope and nature of the plan.
  String description;

  // Extensions for description
  Element _description;

  // Identifies the patient or group whose intended care is described by the
  //  plan.
  Reference subject;

  // The Encounter during which this CarePlan was created or to which the
  //  creation of this record is tightly associated.
  Reference encounter;

  // Indicates when the plan did (or is intended to) come into effect and end.
  Period period;

  // Represents when this particular CarePlan record was created in the system,
  //  which is often a system-generated date.
  StringTime created;

  // Extensions for created
  Element _created;

  // When populated, the author is responsible for the care plan.  The care plan
  //  is attributed to the author.
  Reference author;

  // Identifies the individual(s) or organization who provided the contents of
  //  the care plan.
  List<Reference contributor;

  // Identifies all people and organizations who are expected to be involved in
  //  the care envisioned by this plan.
  List<Reference careTeam;

  // Identifies the conditions/problems/concerns/diagnoses/etc. whose management
  //  and/or mitigation are handled by this plan.
  List<Reference addresses;

  // Identifies portions of the patient's record that specifically influenced
  //  the formation of the plan.  These might include comorbidities, recent
  //  procedures, limitations, recent assessments, etc.
  List<Reference supportingInfo;

  // Describes the intended objective(s) of carrying out the care plan.
  List<Reference goal;

  // Identifies a planned action to occur as part of the plan.  For example, a
  //  medication to be used, lab tests to perform, self-monitoring, education, etc.
  List<CarePlan_Activity activity;

  // General notes about the care plan not covered elsewhere.
  List<Annotation note
CarePlan(
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
this.partOf,
this.status,
this._status,
this.intent,
this._intent,
this.category,
this.title,
this._title,
this.description,
this._description,
this.subject,
this.encounter,
this.period,
this.created,
this._created,
this.author,
this.contributor,
this.careTeam,
this.addresses,
this.supportingInfo,
this.goal,
this.activity,
this.note});

  factory CarePlan.fromJson(Map<String, dynamic> json) => _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CarePlan_Activity {

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

  // Identifies the outcome at the point when the status of the activity is
  //  assessed.  For example, the outcome of an education activity could be patient
  //  understands (or not).
  List<CodeableConcept outcomeCodeableConcept;

  // Details of the outcome or action resulting from the activity.  The
  //  reference to an "event" resource, such as Procedure or Encounter or
  //  Observation, is the result/outcome of the activity itself.  The activity can be
  //  conveyed using CarePlan.activity.detail OR using the
  //  CarePlan.activity.reference (a reference to a “request” resource).
  List<Reference outcomeReference;

  // Notes about the adherence/status/progress of the activity.
  List<Annotation progress;

  // The details of the proposed activity represented in a specific resource.
  Reference reference;

  // A simple summary of a planned activity suitable for a general care plan
  //  system (e.g. form driven) that doesn't know about specific resources such as
  //  procedure etc.
  CarePlan_Detail detail
CarePlan_Activity(
      {this.id,
this.extension,
this.modifierExtension,
this.outcomeCodeableConcept,
this.outcomeReference,
this.progress,
this.reference,
this.detail});

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) => _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_ActivityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CarePlan_Detail {

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

  // A description of the kind of resource the in-line definition of a care plan
  //  activity is representing.  The CarePlan.activity.detail is an in-line
  //  definition when a resource is not referenced using CarePlan.activity.reference.
  //   For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest.
  String kind;

  // Extensions for kind
  Element _kind;

  // The URL pointing to a FHIR-defined protocol, guideline, questionnaire or
  //  other definition that is adhered to in whole or in part by this CarePlan activity.
  List<String instantiatesCanonical;

  // The URL pointing to an externally maintained protocol, guideline,
  //  questionnaire or other definition that is adhered to in whole or in part by
  //  this CarePlan activity.
  List<String instantiatesUri;

  // Extensions for instantiatesUri
  List<Element _instantiatesUri;

  // Detailed description of the type of planned activity; e.g. what lab test,
  //  what procedure, what kind of encounter.
  CodeableConcept code;

  // Provides the rationale that drove the inclusion of this particular activity
  //  as part of the plan or the reason why the activity was prohibited.
  List<CodeableConcept reasonCode;

  // Indicates another resource, such as the health condition(s), whose
  //  existence justifies this request and drove the inclusion of this particular
  //  activity as part of the plan.
  List<Reference reasonReference;

  // Internal reference that identifies the goals that this activity is intended
  //  to contribute towards meeting.
  List<Reference goal;

  // Identifies what progress is being made for the specific activity.Enum enum;
  //  //
  //  not-startedscheduledin-progresson-holdcompletedcancelledstoppedunknownentered-in-error status;

  // Extensions for status
  Element _status;

  // Provides reason why the activity isn't yet started, is on hold, was
  //  cancelled, etc.
  CodeableConcept statusReason;

  // If true, indicates that the described activity is one that must NOT be
  //  engaged in when following the plan.  If false, or missing, indicates that the
  //  described activity is one that should be engaged in when following the plan.
  bool doNotPerform;

  // Extensions for doNotPerform
  Element _doNotPerform;

  // The period, timing or frequency upon which the described activity is to
  //  occur.
  Timing scheduledTiming;

  // The period, timing or frequency upon which the described activity is to
  //  occur.
  Period scheduledPeriod;

  // The period, timing or frequency upon which the described activity is to
  //  occur. string scheduledString;

  // Extensions for scheduledString
  Element _scheduledString;

  // Identifies the facility where the activity will occur; e.g. home, hospital,
  //  specific clinic, etc.
  Reference location;

  // Identifies who's expected to be involved in the activity.
  List<Reference performer;

  // Identifies the food, drug or other product to be consumed or supplied in
  //  the activity.
  CodeableConcept productCodeableConcept;

  // Identifies the food, drug or other product to be consumed or supplied in
  //  the activity.
  Reference productReference;

  // Identifies the quantity expected to be consumed in a given day.
  Quantity dailyAmount;

  // Identifies the quantity expected to be supplied, administered or consumed
  //  by the subject.
  Quantity quantity;

  // This provides a textual description of constraints on the intended activity
  //  occurrence, including relation to other activities.  It may also include
  //  objectives, pre-conditions and end-conditions.  Finally, it may convey
  //  specifics about the activity such as body site, method, route, etc.
  String description;

  // Extensions for description
  Element _description
CarePlan_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.kind,
this._kind,
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.code,
this.reasonCode,
this.reasonReference,
this.goal,
this.status,
this._status,
this.statusReason,
this.doNotPerform,
this._doNotPerform,
this.scheduledTiming,
this.scheduledPeriod,
this.scheduledString,
this._scheduledString,
this.location,
this.performer,
this.productCodeableConcept,
this.productReference,
this.dailyAmount,
this.quantity,
this.description,
this._description});

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) => _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_DetailToJson(this);
}