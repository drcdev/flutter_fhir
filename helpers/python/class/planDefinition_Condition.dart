

part 'planDefinition_Condition.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Condition {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: applicabilitystartstop kind;
  Element _kind;
  Expression expression;


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