

part 'testScript_Action2.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Action2 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestScript_Operation operation;


TestScript_Action2(
      {this.id,
this.extension,
this.modifierExtension,
this.operation});

  factory TestScript_Action2.fromJson(Map<String, dynamic> json) => _$TestScript_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action2ToJson(this);
}