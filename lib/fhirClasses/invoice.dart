import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {
  static Future<Invoice> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    String status,
    Element elementStatus,
    String cancelledReason,
    Element elementCancelledReason,
    CodeableConcept type,
    Reference subject,
    Reference recipient,
    DateTime date,
    Element elementDate,
    List<Invoice_Participant> participant,
    Reference issuer,
    Reference account,
    List<Invoice_LineItem> lineItem,
    List<Invoice_PriceComponent> totalPriceComponent,
    Money totalNet,
    Money totalGross,
    String paymentTerms,
    Element elementPaymentTerms,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    Invoice newInvoice = new Invoice(
      resourceType: resourceType,
      id: id ?? await fhirDb.newResourceId('Invoice'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      status: status,
      elementStatus: elementStatus,
      cancelledReason: cancelledReason,
      elementCancelledReason: elementCancelledReason,
      type: type,
      subject: subject,
      recipient: recipient,
      date: date,
      elementDate: elementDate,
      participant: participant,
      issuer: issuer,
      account: account,
      lineItem: lineItem,
      totalPriceComponent: totalPriceComponent,
      totalNet: totalNet,
      totalGross: totalGross,
      paymentTerms: paymentTerms,
      elementPaymentTerms: elementPaymentTerms,
      note: note,
    );
    newInvoice.meta.createdAt = DateTime.now();
    newInvoice.meta.lastUpdated = newInvoice.meta.createdAt;
    int saved = await fhirDb.saveResource(newInvoice);
    return newInvoice;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  String cancelledReason;
  Element elementCancelledReason;
  CodeableConcept type;
  Reference subject;
  Reference recipient;
  DateTime date;
  Element elementDate;
  List<Invoice_Participant> participant;
  Reference issuer;
  Reference account;
  List<Invoice_LineItem> lineItem;
  List<Invoice_PriceComponent> totalPriceComponent;
  Money totalNet;
  Money totalGross;
  String paymentTerms;
  Element elementPaymentTerms;
  List<Annotation> note;

  Invoice({
    @required this.resourceType,
    this.id,
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
    this.note,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_Participant {
  static Future<Invoice_Participant> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept role,
    Reference actor,
  }) async {
    var fhirDb = new DatabaseHelper();
    Invoice_Participant newInvoice_Participant = new Invoice_Participant(
      id: id ?? await fhirDb.newResourceId('Invoice_Participant'),
      extension: extension,
      modifierExtension: modifierExtension,
      role: role,
      actor: actor,
    );
    return newInvoice_Participant;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept role;
  Reference actor;

  Invoice_Participant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    @required this.actor,
  });

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) =>
      _$Invoice_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_ParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_LineItem {
  static Future<Invoice_LineItem> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    Reference chargeItemReference,
    CodeableConcept chargeItemCodeableConcept,
    List<Invoice_PriceComponent> priceComponent,
  }) async {
    var fhirDb = new DatabaseHelper();
    Invoice_LineItem newInvoice_LineItem = new Invoice_LineItem(
      id: id ?? await fhirDb.newResourceId('Invoice_LineItem'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      chargeItemReference: chargeItemReference,
      chargeItemCodeableConcept: chargeItemCodeableConcept,
      priceComponent: priceComponent,
    );
    return newInvoice_LineItem;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  Reference chargeItemReference;
  CodeableConcept chargeItemCodeableConcept;
  List<Invoice_PriceComponent> priceComponent;

  Invoice_LineItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.chargeItemReference,
    this.chargeItemCodeableConcept,
    this.priceComponent,
  });

  factory Invoice_LineItem.fromJson(Map<String, dynamic> json) =>
      _$Invoice_LineItemFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_LineItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice_PriceComponent {
  static Future<Invoice_PriceComponent> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    CodeableConcept code,
    double factor,
    Element elementFactor,
    Money amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    Invoice_PriceComponent newInvoice_PriceComponent =
        new Invoice_PriceComponent(
      id: id ?? await fhirDb.newResourceId('Invoice_PriceComponent'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      code: code,
      factor: factor,
      elementFactor: elementFactor,
      amount: amount,
    );
    return newInvoice_PriceComponent;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  CodeableConcept code;
  double factor;
  Element elementFactor;
  Money amount;

  Invoice_PriceComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.code,
    this.factor,
    this.elementFactor,
    this.amount,
  });

  factory Invoice_PriceComponent.fromJson(Map<String, dynamic> json) =>
      _$Invoice_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_PriceComponentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
      'resourceType': instance.resourceType,
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
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
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
