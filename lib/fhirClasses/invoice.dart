import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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

	static Future<Invoice> newInstance({
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
		List<Annotation> note}) async {
	Invoice newInvoice = new Invoice(
			id: await newId('Invoice'),
			meta: meta,
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
			note: note);
	var invoiceBox = await Hive.openBox<Invoice>('InvoiceBox');
	invoiceBox.put(newInvoice.id, newInvoice);
	return newInvoice;
}
  @HiveField(0)
  final String resourceType= 'Invoice';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status; // <code> enum: draft/issued/balanced/cancelled/entered-in-error;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  String cancelledReason;
  @HiveField(15)
  Element elementCancelledReason;
  @HiveField(16)
  CodeableConcept type;
  @HiveField(17)
  Reference subject;
  @HiveField(18)
  Reference recipient;
  @HiveField(19)
  DateTime date;
  @HiveField(20)
  Element elementDate;
  @HiveField(21)
  List<Invoice_Participant> participant;
  @HiveField(22)
  Reference issuer;
  @HiveField(23)
  Reference account;
  @HiveField(24)
  List<Invoice_LineItem> lineItem;
  @HiveField(25)
  List<Invoice_PriceComponent> totalPriceComponent;
  @HiveField(26)
  Money totalNet;
  @HiveField(27)
  Money totalGross;
  @HiveField(28)
  String paymentTerms;
  @HiveField(29)
  Element elementPaymentTerms;
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

	static Future<Invoice_Participant> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept role,
		Reference actor}) async {
	Invoice_Participant newInvoice_Participant = new Invoice_Participant(
			id: await newId('Invoice_Participant'),
			extension: extension,
			modifierExtension: modifierExtension,
			role: role,
			actor: actor);
	var invoice_ParticipantBox = await Hive.openBox<Invoice_Participant>('Invoice_ParticipantBox');
	invoice_ParticipantBox.put(newInvoice_Participant.id, newInvoice_Participant);
	return newInvoice_Participant;
}
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
    @required this.actor
    });

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) => _$Invoice_ParticipantFromJson(json);
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
		List<Invoice_PriceComponent> priceComponent}) async {
	Invoice_LineItem newInvoice_LineItem = new Invoice_LineItem(
			id: await newId('Invoice_LineItem'),
			extension: extension,
			modifierExtension: modifierExtension,
			sequence: sequence,
			elementSequence: elementSequence,
			chargeItemReference: chargeItemReference,
			chargeItemCodeableConcept: chargeItemCodeableConcept,
			priceComponent: priceComponent);
	var invoice_LineItemBox = await Hive.openBox<Invoice_LineItem>('Invoice_LineItemBox');
	invoice_LineItemBox.put(newInvoice_LineItem.id, newInvoice_LineItem);
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

	static Future<Invoice_PriceComponent> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		CodeableConcept code,
		double factor,
		Element elementFactor,
		Money amount}) async {
	Invoice_PriceComponent newInvoice_PriceComponent = new Invoice_PriceComponent(
			id: await newId('Invoice_PriceComponent'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			code: code,
			factor: factor,
			elementFactor: elementFactor,
			amount: amount);
	var invoice_PriceComponentBox = await Hive.openBox<Invoice_PriceComponent>('Invoice_PriceComponentBox');
	invoice_PriceComponentBox.put(newInvoice_PriceComponent.id, newInvoice_PriceComponent);
	return newInvoice_PriceComponent;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type; // <code> enum: base/surcharge/deduction/discount/tax/informational;
  Element elementType;
  CodeableConcept code;
  double factor;
  Element elementFactor;
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
