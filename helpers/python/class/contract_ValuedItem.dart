

part 'contract_ValuedItem.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_ValuedItem {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept entityCodeableConcept;
  Reference entityReference;
  Identifier identifier;
  StringTime effectiveTime;
  Element _effectiveTime;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element _factor;
  double points;
  Element _points;
  Money net;
  String payment;
  Element _payment;
  StringTime paymentDate;
  Element _paymentDate;
  Reference responsible;
  Reference recipient;
  List<String> linkId;
  List<Element> _linkId;
  List<int> securityLabelNumber;
  List<Element> _securityLabelNumber;


Contract_ValuedItem(
      {this.id,
this.extension,
this.modifierExtension,
this.entityCodeableConcept,
this.entityReference,
this.identifier,
this.effectiveTime,
this._effectiveTime,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.points,
this._points,
this.net,
this.payment,
this._payment,
this.paymentDate,
this._paymentDate,
this.responsible,
this.recipient,
this.linkId,
this._linkId,
this.securityLabelNumber,
this._securityLabelNumber});

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) => _$Contract_ValuedItemFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ValuedItemToJson(this);
}