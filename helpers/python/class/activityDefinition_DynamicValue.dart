

part 'activityDefinition_DynamicValue.g.dart';

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_DynamicValue {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  Expression expression;


ActivityDefinition_DynamicValue(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.expression});

  factory ActivityDefinition_DynamicValue.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_DynamicValueFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_DynamicValueToJson(this);
}