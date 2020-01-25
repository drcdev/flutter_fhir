

part 'exampleScenario_Process.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Process {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String title;
  Element _title;
  String description;
  Element _description;
  String preConditions;
  Element _preConditions;
  String postConditions;
  Element _postConditions;
  List<ExampleScenario_Step> step;


ExampleScenario_Process(
      {this.id,
this.extension,
this.modifierExtension,
this.title,
this._title,
this.description,
this._description,
this.preConditions,
this._preConditions,
this.postConditions,
this._postConditions,
this.step});

  factory ExampleScenario_Process.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ProcessFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ProcessToJson(this);
}