

part 'testScript_Test.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Test {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String description;
  Element _description;
  List<TestScript_Action1> action;


TestScript_Test(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.description,
this._description,
this.action});

  factory TestScript_Test.fromJson(Map<String, dynamic> json) => _$TestScript_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TestToJson(this);
}