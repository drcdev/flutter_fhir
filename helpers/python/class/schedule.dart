part 'schedule.g.dart';

@JsonSerializable(explicitToJson: true)
class Schedule {

Schedule resourceType;
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
bool active;
Element _active;
List<CodeableConcept> serviceCategory;
List<CodeableConcept> serviceType;
List<CodeableConcept> specialty;
List<Reference> actor;
Period planningHorizon;
String comment;
Element _comment;

Schedule(
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
      this.active,
      this._active,
      this.serviceCategory,
      this.serviceType,
      this.specialty,
      this.actor,
      this.planningHorizon,
      this.comment,
      this._comment,
      });

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
  Map<String, dynamic> toJson() _$ScheduleToJson(this);
}

