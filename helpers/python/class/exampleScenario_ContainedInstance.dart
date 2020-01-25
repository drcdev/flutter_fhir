

part 'exampleScenario_ContainedInstance.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_ContainedInstance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String resourceId;
  Element _resourceId;
  String versionId;
  Element _versionId;


ExampleScenario_ContainedInstance(
      {this.id,
this.extension,
this.modifierExtension,
this.resourceId,
this._resourceId,
this.versionId,
this._versionId});

  factory ExampleScenario_ContainedInstance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ContainedInstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ContainedInstanceToJson(this);
}