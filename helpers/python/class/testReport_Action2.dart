

part 'testReport_Action2.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Action2 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  TestReport_Operation operation;


TestReport_Action2(
      {this.id,
this.extension,
this.modifierExtension,
this.operation});

  factory TestReport_Action2.fromJson(Map<String, dynamic> json) => _$TestReport_Action2FromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_Action2ToJson(this);
}