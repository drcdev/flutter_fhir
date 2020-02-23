import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

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

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Subscription';
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
  String status;
  @HiveField(12)
  Element elementStatus;
  @HiveField(13)
  List<ContactPoint> contact;
  @HiveField(14)
  DateTime end;
  @HiveField(15)
  Element elementEnd;
  @HiveField(16)
  String reason;
  @HiveField(17)
  Element elementReason;
  @HiveField(18)
  String criteria;
  @HiveField(19)
  Element elementCriteria;
  @HiveField(20)
  String error;
  @HiveField(21)
  Element elementError;
  @HiveField(22)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  String endpoint;
  @HiveField(6)
  Element elementEndpoint;
  @HiveField(7)
  String payload;
  @HiveField(8)
  Element elementPayload;
  @HiveField(9)
  List<String> header;
  @HiveField(10)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubscriptionAdapter extends TypeAdapter<Subscription> {
  @override
  Subscription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subscription(
      resourceType: fields[0] as String,
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
      status: fields[11] as String,
      elementStatus: fields[12] as Element,
      contact: (fields[13] as List)?.cast<ContactPoint>(),
      end: fields[14] as DateTime,
      elementEnd: fields[15] as Element,
      reason: fields[16] as String,
      elementReason: fields[17] as Element,
      criteria: fields[18] as String,
      elementCriteria: fields[19] as Element,
      error: fields[20] as String,
      elementError: fields[21] as Element,
      channel: fields[22] as Subscription_Channel,
    );
  }

  @override
  void write(BinaryWriter writer, Subscription obj) {
    writer
      ..writeByte(23)
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
      ..write(obj.status)
      ..writeByte(12)
      ..write(obj.elementStatus)
      ..writeByte(13)
      ..write(obj.contact)
      ..writeByte(14)
      ..write(obj.end)
      ..writeByte(15)
      ..write(obj.elementEnd)
      ..writeByte(16)
      ..write(obj.reason)
      ..writeByte(17)
      ..write(obj.elementReason)
      ..writeByte(18)
      ..write(obj.criteria)
      ..writeByte(19)
      ..write(obj.elementCriteria)
      ..writeByte(20)
      ..write(obj.error)
      ..writeByte(21)
      ..write(obj.elementError)
      ..writeByte(22)
      ..write(obj.channel);
  }
}

class Subscription_ChannelAdapter extends TypeAdapter<Subscription_Channel> {
  @override
  Subscription_Channel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subscription_Channel(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      endpoint: fields[5] as String,
      elementEndpoint: fields[6] as Element,
      payload: fields[7] as String,
      elementPayload: fields[8] as Element,
      header: (fields[9] as List)?.cast<String>(),
      elementHeader: (fields[10] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, Subscription_Channel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.endpoint)
      ..writeByte(6)
      ..write(obj.elementEndpoint)
      ..writeByte(7)
      ..write(obj.payload)
      ..writeByte(8)
      ..write(obj.elementPayload)
      ..writeByte(9)
      ..write(obj.header)
      ..writeByte(10)
      ..write(obj.elementHeader);
  }
}
