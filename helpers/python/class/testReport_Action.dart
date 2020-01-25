

part 'testReport_Action.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Action {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestReport_Operation operation;
  TestReport_Assert assert;


TestReport_Action(
      {this.id,
this.extension,
this.modifierExtension,
this.operation,
this.assert});

  factory TestReport_Action.fromJson(Map<String, dynamic> json) => _$TestReport_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_ActionToJson(this);
}