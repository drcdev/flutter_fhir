

part 'exampleScenario_Actor.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Actor {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String actorId;
  Element _actorId;
  enum: personentity type;
  Element _type;
  String name;
  Element _name;
  String description;
  Element _description;


ExampleScenario_Actor(
      {this.id,
this.extension,
this.modifierExtension,
this.actorId,
this._actorId,
this.type,
this._type,
this.name,
this._name,
this.description,
this._description});

  factory ExampleScenario_Actor.fromJson(Map<String, dynamic> json) => _$ExampleScenario_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_ActorToJson(this);
}