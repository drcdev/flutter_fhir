

part 'graphDefinition_Compartment.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Compartment {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: conditionrequirement use;
  Element _use;
  String code;
  Element _code;
  enum: identicalmatchingdifferentcustom rule;
  Element _rule;
  String expression;
  Element _expression;
  String description;
  Element _description;


GraphDefinition_Compartment(
      {this.id,
this.extension,
this.modifierExtension,
this.use,
this._use,
this.code,
this._code,
this.rule,
this._rule,
this.expression,
this._expression,
this.description,
this._description});

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) => _$GraphDefinition_CompartmentFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_CompartmentToJson(this);
}