

part 'testScript_Action.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Action {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestScript_Operation operation;
  TestScript_Assert assert;


TestScript_Action(
      {this.id,
this.extension,
this.modifierExtension,
this.operation,
this.assert});

  factory TestScript_Action.fromJson(Map<String, dynamic> json) => _$TestScript_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_ActionToJson(this);
}