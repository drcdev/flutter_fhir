

part 'paymentReconciliation_Detail.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_Detail {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  Identifier predecessor;
  CodeableConcept type;
  Reference request;
  Reference submitter;
  Reference response;
  String date;
  Element _date;
  Reference responsible;
  Reference payee;
  Money amount;


PaymentReconciliation_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.predecessor,
this.type,
this.request,
this.submitter,
this.response,
this.date,
this._date,
this.responsible,
this.payee,
this.amount});

  factory PaymentReconciliation_Detail.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliation_DetailToJson(this);
}