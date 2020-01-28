part 'goal.g.dart';

@JsonSerializable(explicitToJson: true)
class Goal {

Goal resourceType;
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
String lifecycleStatus; // <code> enum: proposed/planned/accepted/active/on-hold/completed/cancelled/entered-in-error/rejected;
Element _lifecycleStatus;
CodeableConcept achievementStatus;
List<CodeableConcept> category;
CodeableConcept priority;
CodeableConcept description;
Reference subject;
String startDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _startDate;
CodeableConcept startCodeableConcept;
List<Goal_Target> target;
String statusDate;
Element _statusDate;
String statusReason;
Element _statusReason;
Reference expressedBy;
List<Reference> addresses;
List<Annotation> note;
List<CodeableConcept> outcomeCode;
List<Reference> outcomeReference;

Goal(
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
      this.lifecycleStatus,
      this._lifecycleStatus,
      this.achievementStatus,
      this.category,
      this.priority,
      this.description,
      this.subject,
      this.startDate,
      this._startDate,
      this.startCodeableConcept,
      this.target,
      this.statusDate,
      this._statusDate,
      this.statusReason,
      this._statusReason,
      this.expressedBy,
      this.addresses,
      this.note,
      this.outcomeCode,
      this.outcomeReference,
      });

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
  Map<String, dynamic> toJson() _$GoalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Goal_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept measure;
Quantity detailQuantity;
Range detailRange;
CodeableConcept detailCodeableConcept;
String detailString; //  pattern: ^[ \r\n\t\S]+$
Element _detailString;
bool detailBoolean; //  pattern: ^true|false$
Element _detailBoolean;
int detailInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _detailInteger;
Ratio detailRatio;
String dueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _dueDate;
Duration dueDuration;

Goal_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.measure,
      this.detailQuantity,
      this.detailRange,
      this.detailCodeableConcept,
      this.detailString,
      this._detailString,
      this.detailBoolean,
      this._detailBoolean,
      this.detailInteger,
      this._detailInteger,
      this.detailRatio,
      this.dueDate,
      this._dueDate,
      this.dueDuration,
      });

  factory Goal_Target.fromJson(Map<String, dynamic> json) => _$Goal_TargetFromJson(json);
  Map<String, dynamic> toJson() _$Goal_TargetToJson(this);
}

