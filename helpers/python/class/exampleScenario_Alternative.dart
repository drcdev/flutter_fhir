

part 'exampleScenario_Alternative.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Alternative {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String title;
  Element _title;
  String description;
  Element _description;
  List<ExampleScenario_Step> step;


ExampleScenario_Alternative(
      {this.id,
this.extension,
this.modifierExtension,
this.title,
this._title,
this.description,
this._description,
this.step});

  factory ExampleScenario_Alternative.fromJson(Map<String, dynamic> json) => _$ExampleScenario_AlternativeFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_AlternativeToJson(this);
}