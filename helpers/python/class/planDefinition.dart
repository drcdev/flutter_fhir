
part 'planDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition {
  
  // This is a PlanDefinition 
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

  // An absolute URI that is used to identify this plan definition when it is
  //  referenced in a specification, model, design or an instance; also called its
  //  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
  //  address at which at which an authoritative instance of this plan definition is
  //  (or will be) published. This URL can be the target of a canonical reference. It
  //  SHALL remain the same when the plan definition is stored on different servers.
  String url;

  // Extensions for url
  Element _url;

  // A formal identifier that is used to identify this plan definition when it
  //  is represented in other formats, or referenced in a specification, model,
  //  design or an instance.
  List<Identifier identifier;

  // The identifier that is used to identify this version of the plan definition
  //  when it is referenced in a specification, model, design or instance. This is an
  //  arbitrary value managed by the plan definition author and is not expected to be
  //  globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  //  managed version is not available. There is also no expectation that versions
  //  can be placed in a lexicographical sequence. To provide a version consistent
  //  with the Decision Support Service specification, use the format
  //  Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge
  //  assets, refer to the Decision Support Service specification. Note that a
  //  version is required for non-experimental active artifacts.
  String version;

  // Extensions for version
  Element _version;

  // A natural language name identifying the plan definition. This name should
  //  be usable as an identifier for the module by machine processing applications
  //  such as code generation.
  String name;

  // Extensions for name
  Element _name;

  // A short, descriptive, user-friendly title for the plan definition.
  String title;

  // Extensions for title
  Element _title;

  // An explanatory or alternate title for the plan definition giving additional
  //  information about its content.
  String subtitle;

  // Extensions for subtitle
  Element _subtitle;

  // A high-level category for the plan definition that distinguishes the kinds
  //  of systems that would be interested in the plan definition.
  CodeableConcept type;

  // The status of this plan definition. Enables tracking the life-cycle of the
  //  content.Enum enum; // draftactiveretiredunknown status;

  // Extensions for status
  Element _status;

  // A Boolean value to indicate that this plan definition is authored for
  //  testing purposes (or education/evaluation/marketing) and is not intended to be
  //  used for genuine usage.
  bool experimental;

  // Extensions for experimental
  Element _experimental;

  // A code or group definition that describes the intended subject of the plan
  //  definition.
  CodeableConcept subjectCodeableConcept;

  // A code or group definition that describes the intended subject of the plan
  //  definition.
  Reference subjectReference;

  // The date  (and optionally time) when the plan definition was published. The
  //  date must change when the business version changes and it must change if the
  //  status code changes. In addition, it should change when the substantive content
  //  of the plan definition changes.
  StringTime date;

  // Extensions for date
  Element _date;

  // The name of the organization or individual that published the plan
  //  definition.
  String publisher;

  // Extensions for publisher
  Element _publisher;

  // Contact details to assist a user in finding and communicating with the
  //  publisher.
  List<ContactDetail contact;

  // A free text natural language description of the plan definition from a
  //  consumer's perspective.
  String description;

  // Extensions for description
  Element _description;

  // The content was developed with a focus and intent of supporting the
  //  contexts that are listed. These contexts may be general categories (gender,
  //  age, ...) or may be references to specific programs (insurance plans, studies,
  //  ...) and may be used to assist with indexing and searching for appropriate plan
  //  definition instances.
  List<UsageContext useContext;

  // A legal or geographic region in which the plan definition is intended to be
  //  used.
  List<CodeableConcept jurisdiction;

  // Explanation of why this plan definition is needed and why it has been
  //  designed as it has.
  String purpose;

  // Extensions for purpose
  Element _purpose;

  // A detailed description of how the plan definition is used from a clinical
  //  perspective.
  String usage;

  // Extensions for usage
  Element _usage;

  // A copyright statement relating to the plan definition and/or its contents.
  //  Copyright statements are generally legal restrictions on the use and publishing
  //  of the plan definition.
  String copyright;

  // Extensions for copyright
  Element _copyright;

  // The date on which the resource content was approved by the publisher.
  //  Approval happens once when the content is officially approved for usage.
  String approvalDate;

  // Extensions for approvalDate
  Element _approvalDate;

  // The date on which the resource content was last reviewed. Review happens
  //  periodically after approval but does not change the original approval date.
  String lastReviewDate;

  // Extensions for lastReviewDate
  Element _lastReviewDate;

  // The period during which the plan definition content was or is planned to be
  //  in active use.
  Period effectivePeriod;

  // Descriptive topics related to the content of the plan definition. Topics
  //  provide a high-level categorization of the definition that can be useful for
  //  filtering and searching.
  List<CodeableConcept topic;

  // An individiual or organization primarily involved in the creation and
  //  maintenance of the content.
  List<ContactDetail author;

  // An individual or organization primarily responsible for internal coherence
  //  of the content.
  List<ContactDetail editor;

  // An individual or organization primarily responsible for review of some
  //  aspect of the content.
  List<ContactDetail reviewer;

  // An individual or organization responsible for officially endorsing the
  //  content for use in some setting.
  List<ContactDetail endorser;

  // Related artifacts such as additional documentation, justification, or
  //  bibliographic references.
  List<RelatedArtifact relatedArtifact;

  // A reference to a Library resource containing any formal logic used by the
  //  plan definition.
  List<String library;

  // Goals that describe what the activities within the plan are intended to
  //  achieve. For example, weight loss, restoring an activity of daily living,
  //  obtaining herd immunity via immunization, meeting a process improvement objective, etc.
  List<PlanDefinition_Goal goal;

  // An action or group of actions to be taken as part of the plan.
  List<PlanDefinition_Action action
PlanDefinition(
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
this.url,
this._url,
this.identifier,
this.version,
this._version,
this.name,
this._name,
this.title,
this._title,
this.subtitle,
this._subtitle,
this.type,
this.status,
this._status,
this.experimental,
this._experimental,
this.subjectCodeableConcept,
this.subjectReference,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.useContext,
this.jurisdiction,
this.purpose,
this._purpose,
this.usage,
this._usage,
this.copyright,
this._copyright,
this.approvalDate,
this._approvalDate,
this.lastReviewDate,
this._lastReviewDate,
this.effectivePeriod,
this.topic,
this.author,
this.editor,
this.reviewer,
this.endorser,
this.relatedArtifact,
this.library,
this.goal,
this.action});

  factory PlanDefinition.fromJson(Map<String, dynamic> json) => _$PlanDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Action {

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

  // A user-visible prefix for the action.
  String prefix;

  // Extensions for prefix
  Element _prefix;

  // The title of the action displayed to a user.
  String title;

  // Extensions for title
  Element _title;

  // A brief description of the action used to provide a summary to display to
  //  the user.
  String description;

  // Extensions for description
  Element _description;

  // A text equivalent of the action to be performed. This provides a
  //  human-interpretable description of the action when the definition is consumed
  //  by a system that might not be capable of interpreting it dynamically.
  String textEquivalent;

  // Extensions for textEquivalent
  Element _textEquivalent;

  // Indicates how quickly the action should be addressed with respect to other
  //  actions.
  String priority;

  // Extensions for priority
  Element _priority;

  // A code that provides meaning for the action or action group. For example, a
  //  section may have a LOINC code for the section of a documentation template.
  List<CodeableConcept code;

  // A description of why this action is necessary or appropriate.
  List<CodeableConcept reason;

  // Didactic or other informational resources associated with the action that
  //  can be provided to the CDS recipient. Information resources can include inline
  //  text commentary and links to web resources.
  List<RelatedArtifact documentation;

  // Identifies goals that this action supports. The reference must be to a goal
  //  element defined within this plan definition.
  List<String goalId;

  // Extensions for goalId
  List<Element _goalId;

  // A code or group definition that describes the intended subject of the
  //  action and its children, if any.
  CodeableConcept subjectCodeableConcept;

  // A code or group definition that describes the intended subject of the
  //  action and its children, if any.
  Reference subjectReference;

  // A description of when the action should be triggered.
  List<TriggerDefinition trigger;

  // An expression that describes applicability criteria or start/stop
  //  conditions for the action.
  List<PlanDefinition_Condition condition;

  // Defines input data requirements for the action.
  List<DataRequirement input;

  // Defines the outputs of the action, if any.
  List<DataRequirement output;

  // A relationship to another action such as "before" or "30-60 minutes after
  //  start of".
  List<PlanDefinition_RelatedAction relatedAction;

  // An optional value describing when the action should be performed. string
  //  timingDateTime;

  // Extensions for timingDateTime
  Element _timingDateTime;

  // An optional value describing when the action should be performed.
  Age timingAge;

  // An optional value describing when the action should be performed.
  Period timingPeriod;

  // An optional value describing when the action should be performed.
  Duration timingDuration;

  // An optional value describing when the action should be performed.
  Range timingRange;

  // An optional value describing when the action should be performed.
  Timing timingTiming;

  // Indicates who should participate in performing the action described.
  List<PlanDefinition_Participant participant;

  // The type of action to perform (create, update, remove).
  CodeableConcept type;

  // Defines the grouping behavior for the action and its children.Enum enum; //
  //  visual-grouplogical-groupsentence-group groupingBehavior;

  // Extensions for groupingBehavior
  Element _groupingBehavior;

  // Defines the selection behavior for the action and its children.Enum enum;
  //  // anyallall-or-noneexactly-oneat-most-oneone-or-more selectionBehavior;

  // Extensions for selectionBehavior
  Element _selectionBehavior;

  // Defines the required behavior for the action.Enum enum; //
  //  mustcouldmust-unless-documented requiredBehavior;

  // Extensions for requiredBehavior
  Element _requiredBehavior;

  // Defines whether the action should usually be preselected.Enum enum; //
  //  yesno precheckBehavior;

  // Extensions for precheckBehavior
  Element _precheckBehavior;

  // Defines whether the action can be selected multiple times.Enum enum; //
  //  singlemultiple cardinalityBehavior;

  // Extensions for cardinalityBehavior
  Element _cardinalityBehavior;

  // A reference to an ActivityDefinition that describes the action to be taken
  //  in detail, or a PlanDefinition that describes a series of actions to be taken.
  //  string definitionCanonical;

  // Extensions for definitionCanonical
  Element _definitionCanonical;

  // A reference to an ActivityDefinition that describes the action to be taken
  //  in detail, or a PlanDefinition that describes a series of actions to be taken.
  //  string definitionUri;

  // Extensions for definitionUri
  Element _definitionUri;

  // A reference to a StructureMap resource that defines a transform that can be
  //  executed to produce the intent resource using the ActivityDefinition instance
  //  as the input.
  String transform;

  // Customizations that should be applied to the statically defined resource.
  //  For example, if the dosage of a medication must be computed based on the
  //  patient's weight, a customization would be used to specify an expression that
  //  calculated the weight, and the path on the resource that would contain the result.
  List<PlanDefinition_DynamicValue dynamicValue;

  // Sub actions that are contained within the action. The behavior of this
  //  action determines the functionality of the sub-actions. For example, a
  //  selection behavior of at-most-one indicates that of the sub-actions, at most
  //  one may be chosen as part of realizing the action definition.
  List<PlanDefinition_Action action
PlanDefinition_Action(
      {this.id,
this.extension,
this.modifierExtension,
this.prefix,
this._prefix,
this.title,
this._title,
this.description,
this._description,
this.textEquivalent,
this._textEquivalent,
this.priority,
this._priority,
this.code,
this.reason,
this.documentation,
this.goalId,
this._goalId,
this.subjectCodeableConcept,
this.subjectReference,
this.trigger,
this.condition,
this.input,
this.output,
this.relatedAction,
this.timingDateTime,
this._timingDateTime,
this.timingAge,
this.timingPeriod,
this.timingDuration,
this.timingRange,
this.timingTiming,
this.participant,
this.type,
this.groupingBehavior,
this._groupingBehavior,
this.selectionBehavior,
this._selectionBehavior,
this.requiredBehavior,
this._requiredBehavior,
this.precheckBehavior,
this._precheckBehavior,
this.cardinalityBehavior,
this._cardinalityBehavior,
this.definitionCanonical,
this._definitionCanonical,
this.definitionUri,
this._definitionUri,
this.transform,
this.dynamicValue,
this.action});

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Condition {

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

  // The kind of condition.Enum enum; // applicabilitystartstop kind;

  // Extensions for kind
  Element _kind;

  // An expression that returns true or false, indicating whether the condition
  //  is satisfied.
  Expression expression
PlanDefinition_Condition(
      {this.id,
this.extension,
this.modifierExtension,
this.kind,
this._kind,
this.expression});

  factory PlanDefinition_Condition.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_DynamicValue {

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

  // The path to the element to be customized. This is the path on the resource
  //  that will hold the result of the calculation defined by the expression. The
  //  specified path SHALL be a FHIRPath resolveable on the specified target type of
  //  the ActivityDefinition, and SHALL consist only of identifiers, constant
  //  indexers, and a restricted subset of functions. The path is allowed to contain
  //  qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to traverse
  //  multiple-cardinality sub-elements (see the [Simple FHIRPath
  //  Profile](fhirpath.html#simple) for full details).
  String path;

  // Extensions for path
  Element _path;

  // An expression specifying the value of the customized element.
  Expression expression
PlanDefinition_DynamicValue(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.expression});

  factory PlanDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$PlanDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_DynamicValueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Goal {

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

  // Indicates a category the goal falls within.
  CodeableConcept category;

  // Human-readable and/or coded description of a specific desired objective of
  //  care, such as "control blood pressure" or "negotiate an obstacle course" or
  //  "dance with child at wedding".
  CodeableConcept description;

  // Identifies the expected level of importance associated with
  //  reaching/sustaining the defined goal.
  CodeableConcept priority;

  // The event after which the goal should begin being pursued.
  CodeableConcept start;

  // Identifies problems, conditions, issues, or concerns the goal is intended
  //  to address.
  List<CodeableConcept addresses;

  // Didactic or other informational resources associated with the goal that
  //  provide further supporting information about the goal. Information resources
  //  can include inline text commentary and links to web resources.
  List<RelatedArtifact documentation;

  // Indicates what should be done and within what timeframe.
  List<PlanDefinition_Target target
PlanDefinition_Goal(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.description,
this.priority,
this.start,
this.addresses,
this.documentation,
this.target});

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) => _$PlanDefinition_GoalFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_GoalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Participant {

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

  // The type of participant in the action.Enum enum; //
  //  patientpractitionerrelated-persondevice type;

  // Extensions for type
  Element _type;

  // The role the participant should play in performing the described action.
  CodeableConcept role
PlanDefinition_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.role});

  factory PlanDefinition_Participant.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_RelatedAction {

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

  // The element id of the related action.
  String actionId;

  // Extensions for actionId
  Element _actionId;

  // The relationship of this action to the related action.Enum enum; //
  // 
  //  before-startbeforebefore-endconcurrent-with-startconcurrentconcurrent-with-endafter-startafterafter-end relationship;

  // Extensions for relationship
  Element _relationship;

  // A duration or range of durations to apply to the relationship. For example,
  //  30-60 minutes before.
  Duration offsetDuration;

  // A duration or range of durations to apply to the relationship. For example,
  //  30-60 minutes before.
  Range offsetRange
PlanDefinition_RelatedAction(
      {this.id,
this.extension,
this.modifierExtension,
this.actionId,
this._actionId,
this.relationship,
this._relationship,
this.offsetDuration,
this.offsetRange});

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) => _$PlanDefinition_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_RelatedActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Target {

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

  // The parameter whose value is to be tracked, e.g. body weight, blood
  //  pressure, or hemoglobin A1c level.
  CodeableConcept measure;

  // The target value of the measure to be achieved to signify fulfillment of
  //  the goal, e.g. 150 pounds or 7.0%. Either the high or low or both values of the
  //  range can be specified. When a low value is missing, it indicates that the goal
  //  is achieved at any value at or below the high value. Similarly, if the high
  //  value is missing, it indicates that the goal is achieved at any value at or
  //  above the low value.
  Quantity detailQuantity;

  // The target value of the measure to be achieved to signify fulfillment of
  //  the goal, e.g. 150 pounds or 7.0%. Either the high or low or both values of the
  //  range can be specified. When a low value is missing, it indicates that the goal
  //  is achieved at any value at or below the high value. Similarly, if the high
  //  value is missing, it indicates that the goal is achieved at any value at or
  //  above the low value.
  Range detailRange;

  // The target value of the measure to be achieved to signify fulfillment of
  //  the goal, e.g. 150 pounds or 7.0%. Either the high or low or both values of the
  //  range can be specified. When a low value is missing, it indicates that the goal
  //  is achieved at any value at or below the high value. Similarly, if the high
  //  value is missing, it indicates that the goal is achieved at any value at or
  //  above the low value.
  CodeableConcept detailCodeableConcept;

  // Indicates the timeframe after the start of the goal in which the goal
  //  should be met.
  Duration due
PlanDefinition_Target(
      {this.id,
this.extension,
this.modifierExtension,
this.measure,
this.detailQuantity,
this.detailRange,
this.detailCodeableConcept,
this.due});

  factory PlanDefinition_Target.fromJson(Map<String, dynamic> json) => _$PlanDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_TargetToJson(this);
}