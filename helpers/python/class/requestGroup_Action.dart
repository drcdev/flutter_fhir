

part 'requestGroup_Action.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestGroup_Action {

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
  List<RelatedArtifact> documentation;
  List<RequestGroup_Condition> condition;
  List<RequestGroup_RelatedAction> relatedAction;
  String timingDateTime;
  Element _timingDateTime;
  Age timingAge;
  Period timingPeriod;
  Duration timingDuration;
  Range timingRange;
  Timing timingTiming;
  List<Reference> participant;
  CodeableConcept type;
  String groupingBehavior;
  Element _groupingBehavior;
  String selectionBehavior;
  Element _selectionBehavior;
  String requiredBehavior;
  Element _requiredBehavior;
  String precheckBehavior;
  Element _precheckBehavior;
  String cardinalityBehavior;
  Element _cardinalityBehavior;
  Reference resource;
  List<RequestGroup_Action> action;


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