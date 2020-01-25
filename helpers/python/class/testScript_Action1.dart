

part 'testScript_Action1.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Action1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestScript_Operation operation;
  TestScript_Assert assert;


TestScript_Action1(
      {this.id,
this.extension,
this.modifierExtension,
this.operation,
this.assert});

  factory TestScript_Action1.fromJson(Map<String, dynamic> json) => _$TestScript_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_Action1ToJson(this);
}