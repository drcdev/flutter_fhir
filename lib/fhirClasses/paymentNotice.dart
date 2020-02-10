import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'paymentNotice.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentNotice {

  //  This is a PaymentNotice resource
  final String resourceType= 'PaymentNotice';

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

  //  A unique identifier assigned to this payment notice.
  List<Identifier> identifier;

  //  The status of the resource instance.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  Reference of resource for which payment is being made.
  Reference request;

  //  Reference of response to resource for which payment is being made.
  Reference response;

  //  The date when this resource was created.
  DateTime created;

  //  Extensions for created
  Element elementCreated;

  //  The practitioner who is responsible for the services rendered to the
  // patient.
  Reference provider;

  //  A reference to the payment which is the subject of this notice.
  Reference payment;

  //  The date when the above payment action occurred.
  String paymentDate;

  //  Extensions for paymentDate
  Element elementPaymentDate;

  //  The party who will receive or has received payment that is the subject
  // of this notification.
  Reference payee;

  //  The party who is notified of the payment status.
  Reference recipient;

  //  The amount sent to the payee.
  Money amount;

  //  A code indicating whether payment has been sent or cleared.
  CodeableConcept paymentStatus;

PaymentNotice(
  this.payment,
    this.recipient,
    this.amount,
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
    this.request,
    this.response,
    this.created,
    this.elementCreated,
    this.provider,
    this.paymentDate,
    this.elementPaymentDate,
    this.payee,
    this.paymentStatus
    });

  factory PaymentNotice.fromJson(Map<String, dynamic> json) => _$PaymentNoticeFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentNoticeToJson(this);
}
