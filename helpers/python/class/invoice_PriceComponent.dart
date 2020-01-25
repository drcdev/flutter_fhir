

part 'invoice_PriceComponent.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice_PriceComponent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: basesurchargedeductiondiscounttaxinformational type;
  Element _type;
  CodeableConcept code;
  double factor;
  Element _factor;
  Money amount;


Invoice_PriceComponent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.code,
this.factor,
this._factor,
this.amount});

  factory Invoice_PriceComponent.fromJson(Map<String, dynamic> json) => _$Invoice_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_PriceComponentToJson(this);
}