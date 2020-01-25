

part 'paymentReconciliation.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation {

  This is a PaymentReconciliation resource resourceType;
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
  Period period;
  StringTime created;
  Element _created;
  Reference paymentIssuer;
  Reference request;
  Reference requestor;
  enum: queuedcompleteerrorpartial outcome;
  Element _outcome;
  String disposition;
  Element _disposition;
  String paymentDate;
  Element _paymentDate;
  Money paymentAmount;
  Identifier paymentIdentifier;
  List<PaymentReconciliation_Detail> detail;
  CodeableConcept formCode;
  List<PaymentReconciliation_ProcessNote> processNote;


PaymentReconciliation(
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
this.period,
this.created,
this._created,
this.paymentIssuer,
this.request,
this.requestor,
this.outcome,
this._outcome,
this.disposition,
this._disposition,
this.paymentDate,
this._paymentDate,
this.paymentAmount,
this.paymentIdentifier,
this.detail,
this.formCode,
this.processNote});

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) => _$PaymentReconciliationFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliationToJson(this);
}