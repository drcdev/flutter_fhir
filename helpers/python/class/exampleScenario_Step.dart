

part 'exampleScenario_Step.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Step {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ExampleScenario_Process> process;
  bool pause;
  Element _pause;
  ExampleScenario_Operation operation;
  List<ExampleScenario_Alternative> alternative;


ExampleScenario_Step(
      {this.id,
this.extension,
this.modifierExtension,
this.process,
this.pause,
this._pause,
this.operation,
this.alternative});

  factory ExampleScenario_Step.fromJson(Map<String, dynamic> json) => _$ExampleScenario_StepFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_StepToJson(this);
}