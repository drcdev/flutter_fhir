import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 159)
class PaymentNotice {

	static Future<PaymentNotice> newInstance({
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
		Reference request,
		Reference response,
		DateTime created,
		Element elementCreated,
		Reference provider,
		Reference payment,
		String paymentDate,
		Element elementPaymentDate,
		Reference payee,
		Reference recipient,
		Money amount,
		CodeableConcept paymentStatus}) async {
	PaymentNotice newPaymentNotice = new PaymentNotice(
			id: await newId('PaymentNotice'),
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
			request: request,
			response: response,
			created: created,
			elementCreated: elementCreated,
			provider: provider,
			payment: payment,
			paymentDate: paymentDate,
			elementPaymentDate: elementPaymentDate,
			payee: payee,
			recipient: recipient,
			amount: amount,
			paymentStatus: paymentStatus);
	var paymentNoticeBox = await Hive.openBox<PaymentNotice>('PaymentNoticeBox');
	paymentNoticeBox.add(newPaymentNotice);
	return newPaymentNotice;
}
  @HiveField(0)
  final String resourceType= 'PaymentNotice';
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
  Reference request;
  @HiveField(15)
  Reference response;
  @HiveField(16)
  DateTime created;
  @HiveField(17)
  Element elementCreated;
  @HiveField(18)
  Reference provider;
  @HiveField(19)
  Reference payment;
  @HiveField(20)
  String paymentDate;
  @HiveField(21)
  Element elementPaymentDate;
  @HiveField(22)
  Reference payee;
  @HiveField(23)
  Reference recipient;
  @HiveField(24)
  Money amount;
  @HiveField(25)
  CodeableConcept paymentStatus;

PaymentNotice(
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
    @required this.payment,
    this.paymentDate,
    this.elementPaymentDate,
    this.payee,
    @required this.recipient,
    @required this.amount,
    this.paymentStatus
    });

  factory PaymentNotice.fromJson(Map<String, dynamic> json) => _$PaymentNoticeFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentNoticeToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentNoticeAdapter extends TypeAdapter<PaymentNotice> {
  @override
  final typeId = 159;

  @override
  PaymentNotice read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentNotice(
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
      request: fields[14] as Reference,
      response: fields[15] as Reference,
      created: fields[16] as DateTime,
      elementCreated: fields[17] as Element,
      provider: fields[18] as Reference,
      payment: fields[19] as Reference,
      paymentDate: fields[20] as String,
      elementPaymentDate: fields[21] as Element,
      payee: fields[22] as Reference,
      recipient: fields[23] as Reference,
      amount: fields[24] as Money,
      paymentStatus: fields[25] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, PaymentNotice obj) {
    writer
      ..writeByte(26)
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
      ..write(obj.request)
      ..writeByte(15)
      ..write(obj.response)
      ..writeByte(16)
      ..write(obj.created)
      ..writeByte(17)
      ..write(obj.elementCreated)
      ..writeByte(18)
      ..write(obj.provider)
      ..writeByte(19)
      ..write(obj.payment)
      ..writeByte(20)
      ..write(obj.paymentDate)
      ..writeByte(21)
      ..write(obj.elementPaymentDate)
      ..writeByte(22)
      ..write(obj.payee)
      ..writeByte(23)
      ..write(obj.recipient)
      ..writeByte(24)
      ..write(obj.amount)
      ..writeByte(25)
      ..write(obj.paymentStatus);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentNotice _$PaymentNoticeFromJson(Map<String, dynamic> json) {
  return PaymentNotice(
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
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : Reference.fromJson(json['response'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    payment: json['payment'] == null
        ? null
        : Reference.fromJson(json['payment'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] as String,
    elementPaymentDate: json['elementPaymentDate'] == null
        ? null
        : Element.fromJson(json['elementPaymentDate'] as Map<String, dynamic>),
    payee: json['payee'] == null
        ? null
        : Reference.fromJson(json['payee'] as Map<String, dynamic>),
    recipient: json['recipient'] == null
        ? null
        : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    paymentStatus: json['paymentStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['paymentStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentNoticeToJson(PaymentNotice instance) =>
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
      'request': instance.request?.toJson(),
      'response': instance.response?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'provider': instance.provider?.toJson(),
      'payment': instance.payment?.toJson(),
      'paymentDate': instance.paymentDate,
      'elementPaymentDate': instance.elementPaymentDate?.toJson(),
      'payee': instance.payee?.toJson(),
      'recipient': instance.recipient?.toJson(),
      'amount': instance.amount?.toJson(),
      'paymentStatus': instance.paymentStatus?.toJson(),
    };
