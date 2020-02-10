import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'paymentReconciliation.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation {

  //  This is a PaymentReconciliation resource
  final String resourceType= 'PaymentReconciliation';

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
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

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
  List<dynamic> contained;

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

  //  A unique identifier assigned to this payment reconciliation.
  List<Identifier> identifier;

  //  The status of the resource instance.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  The period of time for which payments have been gathered into this
  // bulk payment for settlement.
  Period period;

  //  The date when the resource was created.
  DateTime created;

  //  Extensions for created
  Element elementCreated;

  //  The party who generated the payment.
  Reference paymentIssuer;

  //  Original request resource reference.
  Reference request;

  //  The practitioner who is responsible for the services rendered to the
  // patient.
  Reference requestor;

  //  The outcome of a request for a reconciliation.
  String outcome; // <code> enum: queued/complete/error/partial;

  //  Extensions for outcome
  Element elementOutcome;

  //  A human readable description of the status of the request for the
  // reconciliation.
  String disposition;

  //  Extensions for disposition
  Element elementDisposition;

  //  The date of payment as indicated on the financial instrument.
  String paymentDate;

  //  Extensions for paymentDate
  Element elementPaymentDate;

  //  Total payment amount as indicated on the financial instrument.
  Money paymentAmount;

  //  Issuer's unique identifier for the payment instrument.
  Identifier paymentIdentifier;

  //  Distribution of the payment amount for a previously acknowledged
  // payable.
  List<PaymentReconciliation_Detail> detail;

  //  A code for the form to be used for printing the content.
  CodeableConcept formCode;

  //  A note that describes or explains the processing in a human readable
  // form.
  List<PaymentReconciliation_ProcessNote> processNote;

PaymentReconciliation(
  this.paymentAmount,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.period,
    this.created,
    this.elementCreated,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.paymentDate,
    this.elementPaymentDate,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote
    });

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) => _$PaymentReconciliationFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_Detail {

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

  //  Unique identifier for the current payment item for the referenced
  // payable.
  Identifier identifier;

  //  Unique identifier for the prior payment item for the referenced
  // payable.
  Identifier predecessor;

  //  Code to indicate the nature of the payment.
  CodeableConcept type;

  //  A resource, such as a Claim, the evaluation of which could lead to
  // payment.
  Reference request;

  //  The party which submitted the claim or financial transaction.
  Reference submitter;

  //  A resource, such as a ClaimResponse, which contains a commitment to
  // payment.
  Reference response;

  //  The date from the response resource containing a commitment to pay.
  String date;

  //  Extensions for date
  Element elementDate;

  //  A reference to the individual who is responsible for inquiries
  // regarding the response and its payment.
  Reference responsible;

  //  The party which is receiving the payment.
  Reference payee;

  //  The monetary amount allocated from the total payment to the payable.
  Money amount;

PaymentReconciliation_Detail(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.predecessor,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.elementDate,
    this.responsible,
    this.payee,
    this.amount
    });

  factory PaymentReconciliation_Detail.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliation_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_ProcessNote {

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

  //  The business purpose of the note text.
  String type; // <code> enum: display/print/printoper;

  //  Extensions for type
  Element elementType;

  //  The explanation or description associated with the processing.
  String text;

  //  Extensions for text
  Element elementText;

PaymentReconciliation_ProcessNote(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.text,
    this.elementText
    });

  factory PaymentReconciliation_ProcessNote.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliation_ProcessNoteToJson(this);
}

