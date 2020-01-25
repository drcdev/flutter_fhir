

part 'planDefinition_Action.g.dart';

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
  String timingDateTime;
  Element _timingDateTime;
  Age timingAge;
  Period timingPeriod;
  Duration timingDuration;
  Range timingRange;
  Timing timingTiming;
  List<PlanDefinition_Participant> participant;
  CodeableConcept type;
  enum: visual-grouplogical-groupsentence-group groupingBehavior;
  Element _groupingBehavior;
  enum: anyallall-or-noneexactly-oneat-most-oneone-or-more selectionBehavior;
  Element _selectionBehavior;
  enum: mustcouldmust-unless-documented requiredBehavior;
  Element _requiredBehavior;
  enum: yesno precheckBehavior;
  Element _precheckBehavior;
  enum: singlemultiple cardinalityBehavior;
  Element _cardinalityBehavior;
  String definitionCanonical;
  Element _definitionCanonical;
  String definitionUri;
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
this.action});

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ActionToJson(this);
}