

part 'testReport_Setup.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Setup {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestReport_Action> action;


TestReport_Setup(
      {this.id,
this.extension,
this.modifierExtension,
this.action});

  factory TestReport_Setup.fromJson(Map<String, dynamic> json) => _$TestReport_SetupFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_SetupToJson(this);
}