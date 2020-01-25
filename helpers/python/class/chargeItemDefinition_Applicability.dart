

part 'chargeItemDefinition_Applicability.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_Applicability {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  String language;
  Element _language;
  String expression;
  Element _expression;


ChargeItemDefinition_Applicability(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.language,
this._language,
this.expression,
this._expression});

  factory ChargeItemDefinition_Applicability.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_ApplicabilityFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_ApplicabilityToJson(this);
}