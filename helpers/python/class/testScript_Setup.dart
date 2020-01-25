

part 'testScript_Setup.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Setup {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestScript_Action> action;


TestScript_Setup(
      {this.id,
this.extension,
this.modifierExtension,
this.action});

  factory TestScript_Setup.fromJson(Map<String, dynamic> json) => _$TestScript_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_SetupToJson(this);
}