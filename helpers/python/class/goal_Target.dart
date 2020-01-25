

part 'goal_Target.g.dart';

@JsonSerializable(explicitToJson: true)
class Goal_Target {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept measure;
  Quantity detailQuantity;
  Range detailRange;
  CodeableConcept detailCodeableConcept;
  String detailString;
  Element _detailString;
  bool detailBoolean;
  Element _detailBoolean;
  number detailInteger;
  Element _detailInteger;
  Ratio detailRatio;
  String dueDate;
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
this.dueDuration});

  factory Goal_Target.fromJson(Map<String, dynamic> json) => _$Goal_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$Goal_TargetToJson(this);
}