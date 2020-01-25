

part 'operationDefinition_Binding.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Binding {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: requiredextensiblepreferredexample strength;
  Element _strength;
  String valueSet;


OperationDefinition_Binding(
      {this.id,
this.extension,
this.modifierExtension,
this.strength,
this._strength,
this.valueSet});

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) => _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_BindingToJson(this);
}