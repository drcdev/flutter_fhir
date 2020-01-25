

part 'exampleScenario_Instance.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Instance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String resourceId;
  Element _resourceId;
  String resourceType;
  Element _resourceType;
  String name;
  Element _name;
  String description;
  Element _description;
  List<ExampleScenario_Version> version;
  List<ExampleScenario_ContainedInstance> containedInstance;


ExampleScenario_Instance(
      {this.id,
this.extension,
this.modifierExtension,
this.resourceId,
this._resourceId,
this.resourceType,
this._resourceType,
this.name,
this._name,
this.description,
this._description,
this.version,
this.containedInstance});

  factory ExampleScenario_Instance.fromJson(Map<String, dynamic> json) => _$ExampleScenario_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_InstanceToJson(this);
}