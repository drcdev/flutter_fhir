

part 'chargeItemDefinition_PriceComponent.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PriceComponent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element _type;
  CodeableConcept code;
  double factor;
  Element _factor;
  Money amount;


ChargeItemDefinition_PriceComponent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.code,
this.factor,
this._factor,
this.amount});

  factory ChargeItemDefinition_PriceComponent.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PriceComponentToJson(this);
}