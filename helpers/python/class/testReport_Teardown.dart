

part 'testReport_Teardown.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Teardown {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestReport_Action2> action;


TestReport_Teardown(
      {this.id,
this.extension,
this.modifierExtension,
this.action});

  factory TestReport_Teardown.fromJson(Map<String, dynamic> json) => _$TestReport_TeardownFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_TeardownToJson(this);
}