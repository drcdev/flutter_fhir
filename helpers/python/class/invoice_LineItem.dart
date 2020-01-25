

part 'invoice_LineItem.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice_LineItem {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  Reference chargeItemReference;
  CodeableConcept chargeItemCodeableConcept;
  List<Invoice_PriceComponent> priceComponent;


Invoice_LineItem(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.chargeItemReference,
this.chargeItemCodeableConcept,
this.priceComponent});

  factory Invoice_LineItem.fromJson(Map<String, dynamic> json) => _$Invoice_LineItemFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_LineItemToJson(this);
}