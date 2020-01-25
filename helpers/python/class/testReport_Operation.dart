

part 'testReport_Operation.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Operation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: passskipfailwarningerror result;
  Element _result;
  String message;
  Element _message;
  String detail;
  Element _detail;


TestReport_Operation(
      {this.id,
this.extension,
this.modifierExtension,
this.result,
this._result,
this.message,
this._message,
this.detail,
this._detail});

  factory TestReport_Operation.fromJson(Map<String, dynamic> json) => _$TestReport_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_OperationToJson(this);
}