part 'planDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition {

PlanDefinition resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
CodeableConcept type;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String usage;
Element _usage;
String copyright;
Element _copyright;
String approvalDate;
Element _approvalDate;
String lastReviewDate;
Element _lastReviewDate;
Period effectivePeriod;
List<CodeableConcept> topic;
List<ContactDetail> author;
List<ContactDetail> editor;
List<ContactDetail> reviewer;
List<ContactDetail> endorser;
List<RelatedArtifact> relatedArtifact;
List<String> library;
List<PlanDefinition_Goal> goal;
List<PlanDefinition_Action> action;

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
      this.action,
      });

  factory PlanDefinition.fromJson(Map<String, dynamic> json) => _$PlanDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Goal {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept description;
CodeableConcept priority;
CodeableConcept start;
List<CodeableConcept> addresses;
List<RelatedArtifact> documentation;
List<PlanDefinition_Target> target;

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
      this.target,
      });

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) => _$PlanDefinition_GoalFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_GoalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept measure;
Quantity detailQuantity;
Range detailRange;
CodeableConcept detailCodeableConcept;
Duration due;

PlanDefinition_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.measure,
      this.detailQuantity,
      this.detailRange,
      this.detailCodeableConcept,
      this.due,
      });

  factory PlanDefinition_Target.fromJson(Map<String, dynamic> json) => _$PlanDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Action {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String prefix;
Element _prefix;
String title;
Element _title;
String description;
Element _description;
String textEquivalent;
Element _textEquivalent;
String priority;
Element _priority;
List<CodeableConcept> code;
List<CodeableConcept> reason;
List<RelatedArtifact> documentation;
List<String> goalId;
List<Element> _goalId;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
List<TriggerDefinition> trigger;
List<PlanDefinition_Condition> condition;
List<DataRequirement> input;
List<DataRequirement> output;
List<PlanDefinition_RelatedAction> relatedAction;
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timingDateTime;
Age timingAge;
Period timingPeriod;
Duration timingDuration;
Range timingRange;
Timing timingTiming;
List<PlanDefinition_Participant> participant;
CodeableConcept type;
String groupingBehavior; // <code> enum: visual-group/logical-group/sentence-group;
Element _groupingBehavior;
String selectionBehavior; // <code> enum: any/all/all-or-none/exactly-one/at-most-one/one-or-more;
Element _selectionBehavior;
String requiredBehavior; // <code> enum: must/could/must-unless-documented;
Element _requiredBehavior;
String precheckBehavior; // <code> enum: yes/no;
Element _precheckBehavior;
String cardinalityBehavior; // <code> enum: single/multiple;
Element _cardinalityBehavior;
String definitionCanonical; //  pattern: ^\S*$
Element _definitionCanonical;
String definitionUri; //  pattern: ^\S*$
Element _definitionUri;
String transform;
List<PlanDefinition_DynamicValue> dynamicValue;
List<PlanDefinition_Action> action;

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
      this.action,
      });

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ActionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind; // <code> enum: applicability/start/stop;
Element _kind;
Expression expression;

PlanDefinition_Condition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kind,
      this._kind,
      this.expression,
      });

  factory PlanDefinition_Condition.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ConditionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_RelatedAction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String actionId;
Element _actionId;
String relationship; // <code> enum: before-start/before/before-end/concurrent-with-start/concurrent/concurrent-with-end/after-start/after/after-end;
Element _relationship;
Duration offsetDuration;
Range offsetRange;

PlanDefinition_RelatedAction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.actionId,
      this._actionId,
      this.relationship,
      this._relationship,
      this.offsetDuration,
      this.offsetRange,
      });

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) => _$PlanDefinition_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_RelatedActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: patient/practitioner/related-person/device;
Element _type;
CodeableConcept role;

PlanDefinition_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.role,
      });

  factory PlanDefinition_Participant.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanDefinition_DynamicValue {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
Expression expression;

PlanDefinition_DynamicValue(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.expression,
      });

  factory PlanDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$PlanDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() _$PlanDefinition_DynamicValueToJson(this);
}

