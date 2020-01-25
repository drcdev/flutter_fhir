

part 'paymentNotice.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentNotice {

  This is a PaymentNotice resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status;
  Element _status;
  Reference request;
  Reference response;
  StringTime created;
  Element _created;
  Reference provider;
  Reference payment;
  String paymentDate;
  Element _paymentDate;
  Reference payee;
  Reference recipient;
  Money amount;
  CodeableConcept paymentStatus;


PaymentNotice(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.status,
this._status,
this.request,
this.response,
this.created,
this._created,
this.provider,
this.payment,
this.paymentDate,
this._paymentDate,
this.payee,
this.recipient,
this.amount,
this.paymentStatus});

  factory PaymentNotice.fromJson(Map<String, dynamic> json) => _$PaymentNoticeFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentNoticeToJson(this);
}