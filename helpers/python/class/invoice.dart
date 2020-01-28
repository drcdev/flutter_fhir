part 'invoice.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {

Invoice resourceType;
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
String status; // <code> enum: draft/issued/balanced/cancelled/entered-in-error;
Element _status;
String cancelledReason;
Element _cancelledReason;
CodeableConcept type;
Reference subject;
Reference recipient;
DateTime date;
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
      this.note,
      });

  factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);
  Map<String, dynamic> toJson() _$InvoiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_Participant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Reference actor;

Invoice_Participant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.actor,
      });

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) => _$Invoice_ParticipantFromJson(json);
  Map<String, dynamic> toJson() _$Invoice_ParticipantToJson(this);
}

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
      this.priceComponent,
      });

  factory Invoice_LineItem.fromJson(Map<String, dynamic> json) => _$Invoice_LineItemFromJson(json);
  Map<String, dynamic> toJson() _$Invoice_LineItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_PriceComponent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: base/surcharge/deduction/discount/tax/informational;
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
      this.amount,
      });

  factory Invoice_PriceComponent.fromJson(Map<String, dynamic> json) => _$Invoice_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() _$Invoice_PriceComponentToJson(this);
}

