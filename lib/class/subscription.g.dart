// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
    json['channel'] == null
        ? null
        : Subscription_Channel.fromJson(
            json['channel'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    element_end: json['element_end'] == null
        ? null
        : Element.fromJson(json['element_end'] as Map<String, dynamic>),
    reason: json['reason'] as String,
    element_reason: json['element_reason'] == null
        ? null
        : Element.fromJson(json['element_reason'] as Map<String, dynamic>),
    criteria: json['criteria'] as String,
    element_criteria: json['element_criteria'] == null
        ? null
        : Element.fromJson(json['element_criteria'] as Map<String, dynamic>),
    error: json['error'] as String,
    element_error: json['element_error'] == null
        ? null
        : Element.fromJson(json['element_error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
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
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'end': instance.end?.toIso8601String(),
      'element_end': instance.element_end?.toJson(),
      'reason': instance.reason,
      'element_reason': instance.element_reason?.toJson(),
      'criteria': instance.criteria,
      'element_criteria': instance.element_criteria?.toJson(),
      'error': instance.error,
      'element_error': instance.element_error?.toJson(),
      'channel': instance.channel?.toJson(),
    };

Subscription_Channel _$Subscription_ChannelFromJson(Map<String, dynamic> json) {
  return Subscription_Channel(
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
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    endpoint: json['endpoint'] as String,
    element_endpoint: json['element_endpoint'] == null
        ? null
        : Element.fromJson(json['element_endpoint'] as Map<String, dynamic>),
    payload: json['payload'] as String,
    element_payload: json['element_payload'] == null
        ? null
        : Element.fromJson(json['element_payload'] as Map<String, dynamic>),
    header: (json['header'] as List)?.map((e) => e as String)?.toList(),
    element_header: (json['element_header'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Subscription_ChannelToJson(
        Subscription_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'endpoint': instance.endpoint,
      'element_endpoint': instance.element_endpoint?.toJson(),
      'payload': instance.payload,
      'element_payload': instance.element_payload?.toJson(),
      'header': instance.header,
      'element_header':
          instance.element_header?.map((e) => e?.toJson())?.toList(),
    };
