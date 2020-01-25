

part 'testScript_Teardown.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Teardown {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestScript_Action2> action;


TestScript_Teardown(
      {this.id,
this.extension,
this.modifierExtension,
this.action});

  factory TestScript_Teardown.fromJson(Map<String, dynamic> json) => _$TestScript_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_TeardownToJson(this);
}