

part 'requestGroup_RelatedAction.g.dart';

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
this.offsetRange});

  factory RequestGroup_RelatedAction.fromJson(Map<String, dynamic> json) => _$RequestGroup_RelatedActionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_RelatedActionToJson(this);
}