part 'requestGroup.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestGroup {

RequestGroup resourceType;
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
List<Identifier> identifier;
List<String> instantiatesCanonical;
List<Element> _instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> replaces;
Identifier groupIdentifier;
String status;
Element _status;
String intent;
Element _intent;
String priority;
Element _priority;
CodeableConcept code;
Reference subject;
Reference encounter;
DateTime authoredOn;
Element _authoredOn;
Reference author;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
List<RequestGroup_Action> action;

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
      this.action,
      });

  factory RequestGroup.fromJson(Map<String, dynamic> json) => _$RequestGroupFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroupToJson(this);
}

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
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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
      this.action,
      });

  factory RequestGroup_Action.fromJson(Map<String, dynamic> json) => _$RequestGroup_ActionFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroup_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_Condition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind;
Element _kind;
Expression expression;

RequestGroup_Condition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kind,
      this._kind,
      this.expression,
      });

  factory RequestGroup_Condition.fromJson(Map<String, dynamic> json) => _$RequestGroup_ConditionFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroup_ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestGroup_RelatedAction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String actionId;
Element _actionId;
String relationship;
Element _relationship;
Duration offsetDuration;
Range offsetRange;

RequestGroup_RelatedAction(
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

  factory RequestGroup_RelatedAction.fromJson(Map<String, dynamic> json) => _$RequestGroup_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() _$RequestGroup_RelatedActionToJson(this);
}

