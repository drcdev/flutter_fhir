

part 'planDefinition_DynamicValue.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition_DynamicValue {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  Expression expression;


PlanDefinition_DynamicValue(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.expression});

  factory PlanDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$PlanDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_DynamicValueToJson(this);
}