import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 160)
class PaymentReconciliation {

	static Future<PaymentReconciliation> newInstance({
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
		Period period,
		DateTime created,
		Element elementCreated,
		Reference paymentIssuer,
		Reference request,
		Reference requestor,
		String outcome,
		Element elementOutcome,
		String disposition,
		Element elementDisposition,
		String paymentDate,
		Element elementPaymentDate,
		Money paymentAmount,
		Identifier paymentIdentifier,
		List<PaymentReconciliation_Detail> detail,
		CodeableConcept formCode,
		List<PaymentReconciliation_ProcessNote> processNote}) async {
	 return PaymentReconciliation(
			id: await newEntry('PaymentReconciliation'),
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
			period: period,
			created: created,
			elementCreated: elementCreated,
			paymentIssuer: paymentIssuer,
			request: request,
			requestor: requestor,
			outcome: outcome,
			elementOutcome: elementOutcome,
			disposition: disposition,
			elementDisposition: elementDisposition,
			paymentDate: paymentDate,
			elementPaymentDate: elementPaymentDate,
			paymentAmount: paymentAmount,
			paymentIdentifier: paymentIdentifier,
			detail: detail,
			formCode: formCode,
			processNote: processNote);
	}

  @HiveField(0)
  final String resourceType= 'PaymentReconciliation';
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
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  Period period;
  @HiveField(15)
  DateTime created;
  @HiveField(16)
  Element elementCreated;
  @HiveField(17)
  Reference paymentIssuer;
  @HiveField(18)
  Reference request;
  @HiveField(19)
  Reference requestor;
  @HiveField(20)
  String outcome; // <code> enum: queued/complete/error/partial;
  @HiveField(21)
  Element elementOutcome;
  @HiveField(22)
  String disposition;
  @HiveField(23)
  Element elementDisposition;
  @HiveField(24)
  String paymentDate;
  @HiveField(25)
  Element elementPaymentDate;
  @HiveField(26)
  Money paymentAmount;
  @HiveField(27)
  Identifier paymentIdentifier;
  @HiveField(28)
  List<PaymentReconciliation_Detail> detail;
  @HiveField(29)
  CodeableConcept formCode;
  @HiveField(30)
  List<PaymentReconciliation_ProcessNote> processNote;

PaymentReconciliation(
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
    @required this.paymentAmount,
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

	static Future<PaymentReconciliation_Detail> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Identifier identifier,
		Identifier predecessor,
		CodeableConcept type,
		Reference request,
		Reference submitter,
		Reference response,
		String date,
		Element elementDate,
		Reference responsible,
		Reference payee,
		Money amount}) async {
	 return PaymentReconciliation_Detail(
			id: await newEntry('PaymentReconciliation_Detail'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			predecessor: predecessor,
			type: type,
			request: request,
			submitter: submitter,
			response: response,
			date: date,
			elementDate: elementDate,
			responsible: responsible,
			payee: payee,
			amount: amount);
	}

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
  Element elementDate;
  Reference responsible;
  Reference payee;
  Money amount;

PaymentReconciliation_Detail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.predecessor,
    @required this.type,
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

	static Future<PaymentReconciliation_ProcessNote> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		String text,
		Element elementText}) async {
	 return PaymentReconciliation_ProcessNote(
			id: await newEntry('PaymentReconciliation_ProcessNote'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			text: text,
			elementText: elementText);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type; // <code> enum: display/print/printoper;
  Element elementType;
  String text;
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentReconciliationAdapter extends TypeAdapter<PaymentReconciliation> {
  @override
  final typeId = 160;

  @override
  PaymentReconciliation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentReconciliation(
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
      period: fields[14] as Period,
      created: fields[15] as DateTime,
      elementCreated: fields[16] as Element,
      paymentIssuer: fields[17] as Reference,
      request: fields[18] as Reference,
      requestor: fields[19] as Reference,
      outcome: fields[20] as String,
      elementOutcome: fields[21] as Element,
      disposition: fields[22] as String,
      elementDisposition: fields[23] as Element,
      paymentDate: fields[24] as String,
      elementPaymentDate: fields[25] as Element,
      paymentAmount: fields[26] as Money,
      paymentIdentifier: fields[27] as Identifier,
      detail: (fields[28] as List)?.cast<PaymentReconciliation_Detail>(),
      formCode: fields[29] as CodeableConcept,
      processNote:
          (fields[30] as List)?.cast<PaymentReconciliation_ProcessNote>(),
    );
  }

  @override
  void write(BinaryWriter writer, PaymentReconciliation obj) {
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
      ..write(obj.period)
      ..writeByte(15)
      ..write(obj.created)
      ..writeByte(16)
      ..write(obj.elementCreated)
      ..writeByte(17)
      ..write(obj.paymentIssuer)
      ..writeByte(18)
      ..write(obj.request)
      ..writeByte(19)
      ..write(obj.requestor)
      ..writeByte(20)
      ..write(obj.outcome)
      ..writeByte(21)
      ..write(obj.elementOutcome)
      ..writeByte(22)
      ..write(obj.disposition)
      ..writeByte(23)
      ..write(obj.elementDisposition)
      ..writeByte(24)
      ..write(obj.paymentDate)
      ..writeByte(25)
      ..write(obj.elementPaymentDate)
      ..writeByte(26)
      ..write(obj.paymentAmount)
      ..writeByte(27)
      ..write(obj.paymentIdentifier)
      ..writeByte(28)
      ..write(obj.detail)
      ..writeByte(29)
      ..write(obj.formCode)
      ..writeByte(30)
      ..write(obj.processNote);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentReconciliation _$PaymentReconciliationFromJson(
    Map<String, dynamic> json) {
  return PaymentReconciliation(
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
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    paymentIssuer: json['paymentIssuer'] == null
        ? null
        : Reference.fromJson(json['paymentIssuer'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] as String,
    elementPaymentDate: json['elementPaymentDate'] == null
        ? null
        : Element.fromJson(json['elementPaymentDate'] as Map<String, dynamic>),
    paymentAmount: json['paymentAmount'] == null
        ? null
        : Money.fromJson(json['paymentAmount'] as Map<String, dynamic>),
    paymentIdentifier: json['paymentIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['paymentIdentifier'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentReconciliation_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    formCode: json['formCode'] == null
        ? null
        : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
    processNote: (json['processNote'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentReconciliation_ProcessNote.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PaymentReconciliationToJson(
        PaymentReconciliation instance) =>
    <String, dynamic>{
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
      'period': instance.period?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'paymentIssuer': instance.paymentIssuer?.toJson(),
      'request': instance.request?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'paymentDate': instance.paymentDate,
      'elementPaymentDate': instance.elementPaymentDate?.toJson(),
      'paymentAmount': instance.paymentAmount?.toJson(),
      'paymentIdentifier': instance.paymentIdentifier?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
      'formCode': instance.formCode?.toJson(),
      'processNote': instance.processNote?.map((e) => e?.toJson())?.toList(),
    };

PaymentReconciliation_Detail _$PaymentReconciliation_DetailFromJson(
    Map<String, dynamic> json) {
  return PaymentReconciliation_Detail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    predecessor: json['predecessor'] == null
        ? null
        : Identifier.fromJson(json['predecessor'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    submitter: json['submitter'] == null
        ? null
        : Reference.fromJson(json['submitter'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : Reference.fromJson(json['response'] as Map<String, dynamic>),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    responsible: json['responsible'] == null
        ? null
        : Reference.fromJson(json['responsible'] as Map<String, dynamic>),
    payee: json['payee'] == null
        ? null
        : Reference.fromJson(json['payee'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentReconciliation_DetailToJson(
        PaymentReconciliation_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'predecessor': instance.predecessor?.toJson(),
      'type': instance.type?.toJson(),
      'request': instance.request?.toJson(),
      'submitter': instance.submitter?.toJson(),
      'response': instance.response?.toJson(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'responsible': instance.responsible?.toJson(),
      'payee': instance.payee?.toJson(),
      'amount': instance.amount?.toJson(),
    };

PaymentReconciliation_ProcessNote _$PaymentReconciliation_ProcessNoteFromJson(
    Map<String, dynamic> json) {
  return PaymentReconciliation_ProcessNote(
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
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentReconciliation_ProcessNoteToJson(
        PaymentReconciliation_ProcessNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
    };
