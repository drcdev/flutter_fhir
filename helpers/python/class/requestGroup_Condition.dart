

part 'requestGroup_Condition.g.dart';

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
this.expression});

  factory RequestGroup_Condition.fromJson(Map<String, dynamic> json) => _$RequestGroup_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$RequestGroup_ConditionToJson(this);
}