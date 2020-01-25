

part 'planDefinition_Goal.g.dart';

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
this.target});

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) => _$PlanDefinition_GoalFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_GoalToJson(this);
}