

part 'testReport_Action1.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Action1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestReport_Operation operation;
  TestReport_Assert assert;


TestReport_Action1(
      {this.id,
this.extension,
this.modifierExtension,
this.operation,
this.assert});

  factory TestReport_Action1.fromJson(Map<String, dynamic> json) => _$TestReport_Action1FromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_Action1ToJson(this);
}