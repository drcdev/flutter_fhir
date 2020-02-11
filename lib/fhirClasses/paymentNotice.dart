import 'package:hive/hive.dart';
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 159)
class PaymentNotice {

  //  This is a PaymentNotice resource
  @HiveField(0)
  final String resourceType= 'PaymentNotice';

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

  //  A unique identifier assigned to this payment notice.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Reference of resource for which payment is being made.
  @HiveField(14)
  Reference request;

  //  Reference of response to resource for which payment is being made.
  @HiveField(15)
  Reference response;

  //  The date when this resource was created.
  @HiveField(16)
  DateTime created;

  //  Extensions for created
  @HiveField(17)
  Element elementCreated;

  //  The practitioner who is responsible for the services rendered to the
  // patient.
  @HiveField(18)
  Reference provider;

  //  A reference to the payment which is the subject of this notice.
  @HiveField(19)
  Reference payment;

  //  The date when the above payment action occurred.
  @HiveField(20)
  String paymentDate;

  //  Extensions for paymentDate
  @HiveField(21)
  Element elementPaymentDate;

  //  The party who will receive or has received payment that is the subject
  // of this notification.
  @HiveField(22)
  Reference payee;

  //  The party who is notified of the payment status.
  @HiveField(23)
  Reference recipient;

  //  The amount sent to the payee.
  @HiveField(24)
  Money amount;

  //  A code indicating whether payment has been sent or cleared.
  @HiveField(25)
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
      fields[19] as Reference,
      fields[23] as Reference,
      fields[24] as Money,
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
      paymentDate: fields[20] as String,
      elementPaymentDate: fields[21] as Element,
      payee: fields[22] as Reference,
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
    json['payment'] == null
        ? null
        : Reference.fromJson(json['payment'] as Map<String, dynamic>),
    json['recipient'] == null
        ? null
        : Reference.fromJson(json['recipient'] as Map<String, dynamic>),
    json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
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
    paymentDate: json['paymentDate'] as String,
    elementPaymentDate: json['elementPaymentDate'] == null
        ? null
        : Element.fromJson(json['elementPaymentDate'] as Map<String, dynamic>),
    payee: json['payee'] == null
        ? null
        : Reference.fromJson(json['payee'] as Map<String, dynamic>),
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
