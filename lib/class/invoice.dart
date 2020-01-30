import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'invoice.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {

//  This is a Invoice resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  Extensions for implicitRules
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the resource and that modifies the
// understanding of the element that contains it and/or the understanding
// of the containing element's descendants. Usually modifier elements
// provide negation or qualification. To make the use of extensions safe
// and manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer is allowed to
// define an extension, there is a set of requirements that SHALL be met
// as part of the definition of the extension. Applications processing a
// resource are required to check for modifier extensions. Modifier
// extensions SHALL NOT change the meaning of any elements on Resource or
// DomainResource (including cannot change the meaning of
// modifierExtension itself).
List<Extension> modifierExtension;

//  Identifier of this Invoice, often used for reference in correspondence
// about this invoice or for tracking of payments.
List<Identifier> identifier;

//  The current state of the Invoice.
String status; // <code> enum: draft/issued/balanced/cancelled/entered-in-error;

//  Extensions for status
Element element_status;

//  In case of Invoice cancellation a reason must be given (entered in
// error, superseded by corrected invoice etc.).
String cancelledReason;

//  Extensions for cancelledReason
Element element_cancelledReason;

//  Type of Invoice depending on domain, realm an usage (e.g.
// internal/external, dental, preliminary).
CodeableConcept type;

//  The individual or set of individuals receiving the goods and services
// billed in this invoice.
Reference subject;

//  The individual or Organization responsible for balancing of this
// invoice.
Reference recipient;

//  Date/time(s) of when this Invoice was posted.
DateTime date;

//  Extensions for date
Element element_date;

//  Indicates who or what performed or participated in the charged
// service.
List<Invoice_Participant> participant;

//  The organizationissuing the Invoice.
Reference issuer;

//  Account which is supposed to be balanced with this Invoice.
Reference account;

//  Each line item represents one charge for goods and services rendered.
// Details such as date, code and amount are found in the referenced
// ChargeItem resource.
List<Invoice_LineItem> lineItem;

//  The total amount for the Invoice may be calculated as the sum of the
// line items with surcharges/deductions that apply in certain conditions.
//  The priceComponent element can be used to offer transparency to the
// recipient of the Invoice of how the total price was calculated.
List<Invoice_PriceComponent> totalPriceComponent;

//  Invoice total , taxes excluded.
Money totalNet;

//  Invoice total, tax included.
Money totalGross;

//  Payment details such as banking details, period of payment,
// deductibles, methods of payment.
String paymentTerms;

//  Extensions for paymentTerms
Element element_paymentTerms;

//  Comments made about the invoice by the issuer, subject, or other
// participants.
List<Annotation> note;

Invoice(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.cancelledReason,
    this.element_cancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.element_date,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.element_paymentTerms,
    this.note
    });

  factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_Participant {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Describes the type of involvement (e.g. transcriptionist, creator
// etc.). If the invoice has been created automatically, the Participant
// may be a billing engine or another kind of device.
CodeableConcept role;

//  The device, practitioner, etc. who performed or participated in the
// service.
Reference actor;

Invoice_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.actor
    });

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) => _$Invoice_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_LineItem {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Sequence in which the items appear on the invoice.
int sequence;

//  Extensions for sequence
Element element_sequence;

//  The ChargeItem contains information such as the billing code, date,
// amount etc. If no further details are required for the lineItem, inline
// billing codes can be added using the CodeableConcept data type instead
// of the Reference.
Reference chargeItemReference;

//  The ChargeItem contains information such as the billing code, date,
// amount etc. If no further details are required for the lineItem, inline
// billing codes can be added using the CodeableConcept data type instead
// of the Reference.
CodeableConcept chargeItemCodeableConcept;

//  The price for a ChargeItem may be calculated as a base price with
// surcharges/deductions that apply in certain conditions. A
// ChargeItemDefinition resource that defines the prices, factors and
// conditions that apply to a billing code is currently under development.
// The priceComponent element can be used to offer transparency to the
// recipient of the Invoice as to how the prices have been calculated.
List<Invoice_PriceComponent> priceComponent;

Invoice_LineItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.element_sequence,
    this.chargeItemReference,
    this.chargeItemCodeableConcept,
    this.priceComponent
    });

  factory Invoice_LineItem.fromJson(Map<String, dynamic> json) => _$Invoice_LineItemFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_LineItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_PriceComponent {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  This code identifies the type of the component.
String type; // <code> enum: base/surcharge/deduction/discount/tax/informational;

//  Extensions for type
Element element_type;

//  A code that identifies the component. Codes may be used to
// differentiate between kinds of taxes, surcharges, discounts etc.
CodeableConcept code;

//  The factor that has been applied on the base price for calculating
// this component.
double factor;

//  Extensions for factor
Element element_factor;

//  The amount calculated for this component.
Money amount;

Invoice_PriceComponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.code,
    this.factor,
    this.element_factor,
    this.amount
    });

  factory Invoice_PriceComponent.fromJson(Map<String, dynamic> json) => _$Invoice_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_PriceComponentToJson(this);
}

