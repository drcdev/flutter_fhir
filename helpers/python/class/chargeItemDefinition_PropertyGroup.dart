

part 'chargeItemDefinition_PropertyGroup.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PropertyGroup {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ChargeItemDefinition_Applicability> applicability;
  List<ChargeItemDefinition_PriceComponent> priceComponent;


ChargeItemDefinition_PropertyGroup(
      {this.id,
this.extension,
this.modifierExtension,
this.applicability,
this.priceComponent});

  factory ChargeItemDefinition_PropertyGroup.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PropertyGroupFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PropertyGroupToJson(this);
}