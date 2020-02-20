import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Subscription {
  static Future<Subscription> newInstance({
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
    String status,
    Element elementStatus,
    List<ContactPoint> contact,
    DateTime end,
    Element elementEnd,
    String reason,
    Element elementReason,
    String criteria,
    Element elementCriteria,
    String error,
    Element elementError,
    Subscription_Channel channel,
  }) async {
    var fhirDb = new DatabaseHelper();
    Subscription newSubscription = new Subscription(
      resourceType: 'Subscription',
      id: id ?? await fhirDb.newResourceId('Subscription'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      status: status,
      elementStatus: elementStatus,
      contact: contact,
      end: end,
      elementEnd: elementEnd,
      reason: reason,
      elementReason: elementReason,
      criteria: criteria,
      elementCriteria: elementCriteria,
      error: error,
      elementError: elementError,
      channel: channel,
    );
    newSubscription.meta.createdAt = DateTime.now();
    newSubscription.meta.lastUpdated = newSubscription.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubscription);
    return newSubscription;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'Subscription';
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
  String status;
  Element elementStatus;
  List<ContactPoint> contact;
  DateTime end;
  Element elementEnd;
  String reason;
  Element elementReason;
  String criteria;
  Element elementCriteria;
  String error;
  Element elementError;
  Subscription_Channel channel;

  Subscription({
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
    this.status,
    this.elementStatus,
    this.contact,
    this.end,
    this.elementEnd,
    this.reason,
    this.elementReason,
    this.criteria,
    this.elementCriteria,
    this.error,
    this.elementError,
    @required this.channel,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Subscription_Channel {
  static Future<Subscription_Channel> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String endpoint,
    Element elementEndpoint,
    String payload,
    Element elementPayload,
    List<String> header,
    List<Element> elementHeader,
  }) async {
    var fhirDb = new DatabaseHelper();
    Subscription_Channel newSubscription_Channel = new Subscription_Channel(
      id: id ?? await fhirDb.newResourceId('Subscription_Channel'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      endpoint: endpoint,
      elementEndpoint: elementEndpoint,
      payload: payload,
      elementPayload: elementPayload,
      header: header,
      elementHeader: elementHeader,
    );
    return newSubscription_Channel;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String endpoint;
  Element elementEndpoint;
  String payload;
  Element elementPayload;
  List<String> header;
  List<Element> elementHeader;

  Subscription_Channel({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.endpoint,
    this.elementEndpoint,
    this.payload,
    this.elementPayload,
    this.header,
    this.elementHeader,
  });

  factory Subscription_Channel.fromJson(Map<String, dynamic> json) =>
      _$Subscription_ChannelFromJson(json);
  Map<String, dynamic> toJson() => _$Subscription_ChannelToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    reason: json['reason'] as String,
    elementReason: json['elementReason'] == null
        ? null
        : Element.fromJson(json['elementReason'] as Map<String, dynamic>),
    criteria: json['criteria'] as String,
    elementCriteria: json['elementCriteria'] == null
        ? null
        : Element.fromJson(json['elementCriteria'] as Map<String, dynamic>),
    error: json['error'] as String,
    elementError: json['elementError'] == null
        ? null
        : Element.fromJson(json['elementError'] as Map<String, dynamic>),
    channel: json['channel'] == null
        ? null
        : Subscription_Channel.fromJson(
            json['channel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('end', instance.end?.toIso8601String());
  writeNotNull('elementEnd', instance.elementEnd?.toJson());
  writeNotNull('reason', instance.reason);
  writeNotNull('elementReason', instance.elementReason?.toJson());
  writeNotNull('criteria', instance.criteria);
  writeNotNull('elementCriteria', instance.elementCriteria?.toJson());
  writeNotNull('error', instance.error);
  writeNotNull('elementError', instance.elementError?.toJson());
  writeNotNull('channel', instance.channel?.toJson());
  return val;
}

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
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    endpoint: json['endpoint'] as String,
    elementEndpoint: json['elementEndpoint'] == null
        ? null
        : Element.fromJson(json['elementEndpoint'] as Map<String, dynamic>),
    payload: json['payload'] as String,
    elementPayload: json['elementPayload'] == null
        ? null
        : Element.fromJson(json['elementPayload'] as Map<String, dynamic>),
    header: (json['header'] as List)?.map((e) => e as String)?.toList(),
    elementHeader: (json['elementHeader'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Subscription_ChannelToJson(
    Subscription_Channel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('endpoint', instance.endpoint);
  writeNotNull('elementEndpoint', instance.elementEndpoint?.toJson());
  writeNotNull('payload', instance.payload);
  writeNotNull('elementPayload', instance.elementPayload?.toJson());
  writeNotNull('header', instance.header);
  writeNotNull('elementHeader',
      instance.elementHeader?.map((e) => e?.toJson())?.toList());
  return val;
}
