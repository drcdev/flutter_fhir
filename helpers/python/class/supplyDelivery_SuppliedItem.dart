

part 'supplyDelivery_SuppliedItem.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyDelivery_SuppliedItem {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity quantity;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;


SupplyDelivery_SuppliedItem(
      {this.id,
this.extension,
this.modifierExtension,
this.quantity,
this.itemCodeableConcept,
this.itemReference});

  factory SupplyDelivery_SuppliedItem.fromJson(Map<String, dynamic> json) => _$SupplyDelivery_SuppliedItemFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyDelivery_SuppliedItemToJson(this);
}