

part 'goal.g.dart';

@JsonSerializable(explicitToJson: true)
class Goal {

  This is a Goal resource resourceType;
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
  enum: proposedplannedacceptedactiveon-holdcompletedcancelledentered-in-errorrejected lifecycleStatus;
  Element _lifecycleStatus;
  CodeableConcept achievementStatus;
  List<CodeableConcept> category;
  CodeableConcept priority;
  CodeableConcept description;
  Reference subject;
  String startDate;
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
this.outcomeReference});

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
  Map<String, dynamic> toJson() => _$GoalToJson(this);
}