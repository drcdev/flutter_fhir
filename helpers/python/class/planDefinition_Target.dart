

part 'planDefinition_Target.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Target {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept measure;
  Quantity detailQuantity;
  Range detailRange;
  CodeableConcept detailCodeableConcept;
  Duration due;


PlanDefinition_Target(
      {this.id,
this.extension,
this.modifierExtension,
this.measure,
this.detailQuantity,
this.detailRange,
this.detailCodeableConcept,
this.due});

  factory PlanDefinition_Target.fromJson(Map<String, dynamic> json) => _$PlanDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_TargetToJson(this);
}