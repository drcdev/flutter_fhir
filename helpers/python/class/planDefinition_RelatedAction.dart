

part 'planDefinition_RelatedAction.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition_RelatedAction {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String actionId;
  Element _actionId;
  enum: before-startbeforebefore-endconcurrent-with-startconcurrentconcurrent-with-endafter-startafterafter-end relationship;
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
this.offsetRange});

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) => _$PlanDefinition_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_RelatedActionToJson(this);
}