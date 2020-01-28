
part 'requestGroup.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestGroup {
  
  // This is a RequestGroup 
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

  // Allows a service to provide a unique, business identifier for the request.
  List<Identifier identifier;

  // A canonical URL referencing a FHIR-defined protocol, guideline, orderset or
  //  other definition that is adhered to in whole or in part by this request.
  List<String instantiatesCanonical;

  // Extensions for instantiatesCanonical
  List<Element _instantiatesCanonical;

  // A URL referencing an externally defined protocol, guideline, orderset or
  //  other definition that is adhered to in whole or in part by this request.
  List<String instantiatesUri;

  // Extensions for instantiatesUri
  List<Element _instantiatesUri;

  // A plan, proposal or order that is fulfilled in whole or in part by this
  //  request.
  List<Reference basedOn;

  // Completed or terminated request(s) whose function is taken by this new
  //  request.
  List<Reference replaces;

  // A shared identifier common to all requests that were authorized more or
  //  less simultaneously by a single author, representing the identifier of the
  //  requisition, prescription or similar form.
  Identifier groupIdentifier;

  // The current state of the request. For request groups, the status reflects
  //  the status of all the requests in the group.
  String status;

  // Extensions for status
  Element _status;

  // Indicates the level of authority/intentionality associated with the request
  //  and where the request fits into the workflow chain.
  String intent;

  // Extensions for intent
  Element _intent;

  // Indicates how quickly the request should be addressed with respect to other
  //  requests.
  String priority;

  // Extensions for priority
  Element _priority;

  // A code that identifies what the overall request group is.
  CodeableConcept code;

  // The subject for which the request group was created.
  Reference subject;

  // Describes the context of the request group, if any.
  Reference encounter;

  // Indicates when the request group was created.
  StringTime authoredOn;

  // Extensions for authoredOn
  Element _authoredOn;

  // Provides a reference to the author of the request group.
  Reference author;

  // Describes the reason for the request group in coded or textual form.
  List<CodeableConcept reasonCode;

  // Indicates another resource whose existence justifies this request group.
  List<Reference reasonReference;

  // Provides a mechanism to communicate additional information about the
  //  response.
  List<Annotation note;

  // The actions, if any, produced by the evaluation of the artifact.
  List<RequestGroup_Action action
RequestGroup(
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
this._instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.basedOn,
this.replaces,
this.groupIdentifier,
this.status,
this._status,
this.intent,
this._intent,
this.priority,
this._priority,
this.code,
this.subject,
this.encounter,
this.authoredOn,
this._authoredOn,
this.author,
this.reasonCode,
this.reasonReference,
this.note,
this.action});

  factory RequestGroup.fromJson(Map<String, dynamic> json) => _$RequestGroupFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Action {

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

  // A short description of the action used to provide a summary to display to
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
  //  section may have a LOINC code for a section of a documentation template.
  List<CodeableConcept code;

  // Didactic or other informational resources associated with the action that
  //  can be provided to the CDS recipient. Information resources can include inline
  //  text commentary and links to web resources.
  List<RelatedArtifact documentation;

  // An expression that describes applicability criteria, or start/stop
  //  conditions for the action.
  List<RequestGroup_Condition condition;

  // A relationship to another action such as "before" or "30-60 minutes after
  //  start of".
  List<RequestGroup_RelatedAction relatedAction;

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

  // The participant that should perform or be responsible for this action.
  List<Reference participant;

  // The type of action to perform (create, update, remove).
  CodeableConcept type;

  // Defines the grouping behavior for the action and its children.
  String groupingBehavior;

  // Extensions for groupingBehavior
  Element _groupingBehavior;

  // Defines the selection behavior for the action and its children.
  String selectionBehavior;

  // Extensions for selectionBehavior
  Element _selectionBehavior;

  // Defines expectations around whether an action is required.
  String requiredBehavior;

  // Extensions for requiredBehavior
  Element _requiredBehavior;

  // Defines whether the action should usually be preselected.
  String precheckBehavior;

  // Extensions for precheckBehavior
  Element _precheckBehavior;

  // Defines whether the action can be selected multiple times.
  String cardinalityBehavior;

  // Extensions for cardinalityBehavior
  Element _cardinalityBehavior;

  // The resource that is the target of the action (e.g. CommunicationRequest).
  Reference resource;

  // Sub actions.
  List<RequestGroup_Action action
RequestGroup_Action(
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
this.documentation,
this.condition,
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
this.resource,
this.action});

  factory RequestGroup_Action.fromJson(Map<String, dynamic> json) => _$RequestGroup_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Condition {

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

  // The kind of condition.
  String kind;

  // Extensions for kind
  Element _kind;

  // An expression that returns true or false, indicating whether or not the
  //  condition is satisfied.
  Expression expression
RequestGroup_Condition(
      {this.id,
this.extension,
this.modifierExtension,
this.kind,
this._kind,
this.expression});

  factory RequestGroup_Condition.fromJson(Map<String, dynamic> json) => _$RequestGroup_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_RelatedAction {

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

  // The element id of the action this is related to.
  String actionId;

  // Extensions for actionId
  Element _actionId;

  // The relationship of this action to the related action.
  String relationship;

  // Extensions for relationship
  Element _relationship;

  // A duration or range of durations to apply to the relationship. For example,
  //  30-60 minutes before.
  Duration offsetDuration;

  // A duration or range of durations to apply to the relationship. For example,
  //  30-60 minutes before.
  Range offsetRange
RequestGroup_RelatedAction(
      {this.id,
this.extension,
this.modifierExtension,
this.actionId,
this._actionId,
this.relationship,
this._relationship,
this.offsetDuration,
this.offsetRange});

  factory RequestGroup_RelatedAction.fromJson(Map<String, dynamic> json) => _$RequestGroup_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_RelatedActionToJson(this);
}