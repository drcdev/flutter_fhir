// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentNotice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentNotice _$PaymentNoticeFromJson(Map<String, dynamic> json) {
  return PaymentNotice(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : Reference.fromJson(json['response'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    element_created: json['element_created'] == null
        ? null
        : Element.fromJson(json['element_created'] as Map<String, dynamic>),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    payment: json['payment'] == null
        ? null
        : Reference.fromJson(json['payment'] as Map<String, dynamic>),
    paymentDate: json['paymentDate'] as String,
    element_paymentDate: json['element_paymentDate'] == null
        ? null
        : Element.fromJson(json['element_paymentDate'] as Map<String, dynamic>),
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
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'request': instance.request?.toJson(),
      'response': instance.response?.toJson(),
      'created': instance.created?.toIso8601String(),
      'element_created': instance.element_created?.toJson(),
      'provider': instance.provider?.toJson(),
      'payment': instance.payment?.toJson(),
      'paymentDate': instance.paymentDate,
      'element_paymentDate': instance.element_paymentDate?.toJson(),
      'payee': instance.payee?.toJson(),
      'recipient': instance.recipient?.toJson(),
      'amount': instance.amount?.toJson(),
      'paymentStatus': instance.paymentStatus?.toJson(),
    };
