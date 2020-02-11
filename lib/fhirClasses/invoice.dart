import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 122)
class Invoice {

  //  This is a Invoice resource
  @HiveField(0)
  final String resourceType= 'Invoice';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Identifier of this Invoice, often used for reference in correspondence
  // about this invoice or for tracking of payments.
  @HiveField(11)
  List<Identifier> identifier;

  //  The current state of the Invoice.
  @HiveField(12)
  String status; // <code> enum: draft/issued/balanced/cancelled/entered-in-error;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  In case of Invoice cancellation a reason must be given (entered in
  // error, superseded by corrected invoice etc.).
  @HiveField(14)
  String cancelledReason;

  //  Extensions for cancelledReason
  @HiveField(15)
  Element elementCancelledReason;

  //  Type of Invoice depending on domain, realm an usage (e.g.
  // internal/external, dental, preliminary).
  @HiveField(16)
  CodeableConcept type;

  //  The individual or set of individuals receiving the goods and services
  // billed in this invoice.
  @HiveField(17)
  Reference subject;

  //  The individual or Organization responsible for balancing of this
  // invoice.
  @HiveField(18)
  Reference recipient;

  //  Date/time(s) of when this Invoice was posted.
  @HiveField(19)
  DateTime date;

  //  Extensions for date
  @HiveField(20)
  Element elementDate;

  //  Indicates who or what performed or participated in the charged
  // service.
  @HiveField(21)
  List<Invoice_Participant> participant;

  //  The organizationissuing the Invoice.
  @HiveField(22)
  Reference issuer;

  //  Account which is supposed to be balanced with this Invoice.
  @HiveField(23)
  Reference account;

  //  Each line item represents one charge for goods and services rendered.
  // Details such as date, code and amount are found in the referenced
  // ChargeItem resource.
  @HiveField(24)
  List<Invoice_LineItem> lineItem;

  //  The total amount for the Invoice may be calculated as the sum of the
  // line items with surcharges/deductions that apply in certain conditions.
  //  The priceComponent element can be used to offer transparency to the
  // recipient of the Invoice of how the total price was calculated.
  @HiveField(25)
  List<Invoice_PriceComponent> totalPriceComponent;

  //  Invoice total , taxes excluded.
  @HiveField(26)
  Money totalNet;

  //  Invoice total, tax included.
  @HiveField(27)
  Money totalGross;

  //  Payment details such as banking details, period of payment,
  // deductibles, methods of payment.
  @HiveField(28)
  String paymentTerms;

  //  Extensions for paymentTerms
  @HiveField(29)
  Element elementPaymentTerms;

  //  Comments made about the invoice by the issuer, subject, or other
  // participants.
  @HiveField(30)
  List<Annotation> note;

Invoice(
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
    this.cancelledReason,
    this.elementCancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.elementDate,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.elementPaymentTerms,
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
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.role
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
  Element elementSequence;

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
    this.elementSequence,
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
  Element elementType;

  //  A code that identifies the component. Codes may be used to
  // differentiate between kinds of taxes, surcharges, discounts etc.
  CodeableConcept code;

  //  The factor that has been applied on the base price for calculating
  // this component.
  double factor;

  //  Extensions for factor
  Element elementFactor;

  //  The amount calculated for this component.
  Money amount;

Invoice_PriceComponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.code,
    this.factor,
    this.elementFactor,
    this.amount
    });

  factory Invoice_PriceComponent.fromJson(Map<String, dynamic> json) => _$Invoice_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_PriceComponentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceAdapter extends TypeAdapter<Invoice> {
  @override
  final typeId = 122;

  @override
  Invoice read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Invoice(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      cancelledReason: fields[14] as String,
      elementCancelledReason: fields[15] as Element,
      type: fields[16] as CodeableConcept,
      subject: fields[17] as Reference,
      recipient: fields[18] as Reference,
      date: fields[19] as DateTime,
      elementDate: fields[20] as Element,
      participant: (fields[21] as List)?.cast<Invoice_Participant>(),
      issuer: fields[22] as Reference,
      account: fields[23] as Reference,
      lineItem: (fields[24] as List)?.cast<Invoice_LineItem>(),
      totalPriceComponent: (fields[25] as List)?.cast<Invoice_PriceComponent>(),
      totalNet: fields[26] as Money,
      totalGross: fields[27] as Money,
      paymentTerms: fields[28] as String,
      elementPaymentTerms: fields[29] as Element,
      note: (fields[30] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, Invoice obj) {
    writer
      ..writeByte(31)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.cancelledReason)
      ..writeByte(15)
      ..write(obj.elementCancelledReason)
      ..writeByte(16)
      ..write(obj.type)
      ..writeByte(17)
      ..write(obj.subject)
      ..writeByte(18)
      ..write(obj.recipient)
      ..writeByte(19)
      ..write(obj.date)
      ..writeByte(20)
      ..write(obj.elementDate)
      ..writeByte(21)
      ..write(obj.participant)
      ..writeByte(22)
      ..write(obj.issuer)
      ..writeByte(23)
      ..write(obj.account)
      ..writeByte(24)
      ..write(obj.lineItem)
      ..writeByte(25)
      ..write(obj.totalPriceComponent)
      ..writeByte(26)
      ..write(obj.totalNet)
      ..writeByte(27)
      ..write(obj.totalGross)
      ..writeByte(28)
      ..write(obj.paymentTerms)
      ..writeByte(29)
      ..write(obj.elementPaymentTerms)
      ..writeByte(30)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    cancelledReason: json['cancelledReason'] as String,
    elementCancelledReason: json['elementCancelledReason'] == null
        ? null
        : Element.fromJson(
            json['elementCancelledReason'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    recipient: json['recipient'] == null
        ? null
        : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    participant: (json['participant'] as List)
        ?.map((e) => e == null
            ? null
            : Invoice_Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    issuer: json['issuer'] == null
        ? null
        : Reference.fromJson(json['issuer'] as Map<String, dynamic>),
    account: json['account'] == null
        ? null
        : Reference.fromJson(json['account'] as Map<String, dynamic>),
    lineItem: (json['lineItem'] as List)
        ?.map((e) => e == null
            ? null
            : Invoice_LineItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalPriceComponent: (json['totalPriceComponent'] as List)
        ?.map((e) => e == null
            ? null
            : Invoice_PriceComponent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalNet: json['totalNet'] == null
        ? null
        : Money.fromJson(json['totalNet'] as Map<String, dynamic>),
    totalGross: json['totalGross'] == null
        ? null
        : Money.fromJson(json['totalGross'] as Map<String, dynamic>),
    paymentTerms: json['paymentTerms'] as String,
    elementPaymentTerms: json['elementPaymentTerms'] == null
        ? null
        : Element.fromJson(json['elementPaymentTerms'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'cancelledReason': instance.cancelledReason,
      'elementCancelledReason': instance.elementCancelledReason?.toJson(),
      'type': instance.type?.toJson(),
      'subject': instance.subject?.toJson(),
      'recipient': instance.recipient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'issuer': instance.issuer?.toJson(),
      'account': instance.account?.toJson(),
      'lineItem': instance.lineItem?.map((e) => e?.toJson())?.toList(),
      'totalPriceComponent':
          instance.totalPriceComponent?.map((e) => e?.toJson())?.toList(),
      'totalNet': instance.totalNet?.toJson(),
      'totalGross': instance.totalGross?.toJson(),
      'paymentTerms': instance.paymentTerms,
      'elementPaymentTerms': instance.elementPaymentTerms?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

Invoice_Participant _$Invoice_ParticipantFromJson(Map<String, dynamic> json) {
  return Invoice_Participant(
    json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Invoice_ParticipantToJson(
        Invoice_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'role': instance.role?.toJson(),
      'actor': instance.actor?.toJson(),
    };

Invoice_LineItem _$Invoice_LineItemFromJson(Map<String, dynamic> json) {
  return Invoice_LineItem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    chargeItemReference: json['chargeItemReference'] == null
        ? null
        : Reference.fromJson(
            json['chargeItemReference'] as Map<String, dynamic>),
    chargeItemCodeableConcept: json['chargeItemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['chargeItemCodeableConcept'] as Map<String, dynamic>),
    priceComponent: (json['priceComponent'] as List)
        ?.map((e) => e == null
            ? null
            : Invoice_PriceComponent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Invoice_LineItemToJson(Invoice_LineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'chargeItemReference': instance.chargeItemReference?.toJson(),
      'chargeItemCodeableConcept': instance.chargeItemCodeableConcept?.toJson(),
      'priceComponent':
          instance.priceComponent?.map((e) => e?.toJson())?.toList(),
    };

Invoice_PriceComponent _$Invoice_PriceComponentFromJson(
    Map<String, dynamic> json) {
  return Invoice_PriceComponent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Invoice_PriceComponentToJson(
        Invoice_PriceComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'code': instance.code?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'amount': instance.amount?.toJson(),
    };
