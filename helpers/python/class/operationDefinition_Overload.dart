

part 'operationDefinition_Overload.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Overload {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> parameterName;
  List<Element> _parameterName;
  String comment;
  Element _comment;


OperationDefinition_Overload(
      {this.id,
this.extension,
this.modifierExtension,
this.parameterName,
this._parameterName,
this.comment,
this._comment});

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) => _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_OverloadToJson(this);
}