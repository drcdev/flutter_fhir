

part 'invoice.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {

  This is a Invoice resource resourceType;
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
  enum: draftissuedbalancedcancelledentered-in-error status;
  Element _status;
  String cancelledReason;
  Element _cancelledReason;
  CodeableConcept type;
  Reference subject;
  Reference recipient;
  StringTime date;
  Element _date;
  List<Invoice_Participant> participant;
  Reference issuer;
  Reference account;
  List<Invoice_LineItem> lineItem;
  List<Invoice_PriceComponent> totalPriceComponent;
  Money totalNet;
  Money totalGross;
  String paymentTerms;
  Element _paymentTerms;
  List<Annotation> note;


Invoice(
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
this.cancelledReason,
this._cancelledReason,
this.type,
this.subject,
this.recipient,
this.date,
this._date,
this.participant,
this.issuer,
this.account,
this.lineItem,
this.totalPriceComponent,
this.totalNet,
this.totalGross,
this.paymentTerms,
this._paymentTerms,
this.note});

  factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}