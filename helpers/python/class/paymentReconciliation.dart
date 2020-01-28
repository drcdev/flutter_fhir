part 'paymentReconciliation.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation {

PaymentReconciliation resourceType;
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
DateTime created;
Element _created;
Reference paymentIssuer;
Reference request;
Reference requestor;
String outcome; // <code> enum: queued/complete/error/partial;
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
      this.processNote,
      });

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) => _$PaymentReconciliationFromJson(json);
  Map<String, dynamic> toJson() _$PaymentReconciliationToJson(this);
}

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
      this.amount,
      });

  factory PaymentReconciliation_Detail.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_DetailFromJson(json);
  Map<String, dynamic> toJson() _$PaymentReconciliation_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_ProcessNote {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: display/print/printoper;
Element _type;
String text;
Element _text;

PaymentReconciliation_ProcessNote(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.text,
      this._text,
      });

  factory PaymentReconciliation_ProcessNote.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() _$PaymentReconciliation_ProcessNoteToJson(this);
}

