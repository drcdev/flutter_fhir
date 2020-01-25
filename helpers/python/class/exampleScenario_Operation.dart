

part 'exampleScenario_Operation.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Operation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String number;
  Element _number;
  String type;
  Element _type;
  String name;
  Element _name;
  String initiator;
  Element _initiator;
  String receiver;
  Element _receiver;
  String description;
  Element _description;
  bool initiatorActive;
  Element _initiatorActive;
  bool receiverActive;
  Element _receiverActive;
  ExampleScenario_ContainedInstance request;
  ExampleScenario_ContainedInstance response;


ExampleScenario_Operation(
      {this.id,
this.extension,
this.modifierExtension,
this.number,
this._number,
this.type,
this._type,
this.name,
this._name,
this.initiator,
this._initiator,
this.receiver,
this._receiver,
this.description,
this._description,
this.initiatorActive,
this._initiatorActive,
this.receiverActive,
this._receiverActive,
this.request,
this.response});

  factory ExampleScenario_Operation.fromJson(Map<String, dynamic> json) => _$ExampleScenario_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_OperationToJson(this);
}