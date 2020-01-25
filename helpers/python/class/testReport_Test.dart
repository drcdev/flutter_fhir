

part 'testReport_Test.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Test {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String description;
  Element _description;
  List<TestReport_Action1> action;


TestReport_Test(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.description,
this._description,
this.action});

  factory TestReport_Test.fromJson(Map<String, dynamic> json) => _$TestReport_TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_TestToJson(this);
}