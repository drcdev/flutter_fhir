import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 556)
class Subscription {

  //  This is a Subscription resource
  @HiveField(0)
  final String resourceType= 'Subscription';

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

  //  The status of the subscription, which marks the server state for
  // managing the subscription.
  @HiveField(11)
  String status; // <code> enum: requested/active/error/off;

  //  Extensions for status
  @HiveField(12)
  Element elementStatus;

  //  Contact details for a human to contact about the subscription. The
  // primary use of this for system administrator troubleshooting.
  @HiveField(13)
  List<ContactPoint> contact;

  //  The time for the server to turn the subscription off.
  @HiveField(14)
  DateTime end;

  //  Extensions for end
  @HiveField(15)
  Element elementEnd;

  //  A description of why this subscription is defined.
  @HiveField(16)
  String reason;

  //  Extensions for reason
  @HiveField(17)
  Element elementReason;

  //  The rules that the server should use to determine when to generate
  // notifications for this subscription.
  @HiveField(18)
  String criteria;

  //  Extensions for criteria
  @HiveField(19)
  Element elementCriteria;

  //  A record of the last error that occurred when the server processed a
  // notification.
  @HiveField(20)
  String error;

  //  Extensions for error
  @HiveField(21)
  Element elementError;

  //  Details where to send notifications when resources are received that
  // meet the criteria.
  @HiveField(22)
  Subscription_Channel channel;

Subscription(
  this.channel,
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
    this.elementError
    });

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 557)
class Subscription_Channel {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of channel to send notifications on.
  @HiveField(3)
  String type; // <code> enum: rest-hook/websocket/email/sms/message;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  The url that describes the actual end-point to send messages to.
  @HiveField(5)
  String endpoint;

  //  Extensions for endpoint
  @HiveField(6)
  Element elementEndpoint;

  //  The mime type to send the payload in - either application/fhir+xml, or
  // application/fhir+json. If the payload is not present, then there is no
  // payload in the notification, just a notification. The mime type
  // "text/plain" may also be used for Email and SMS subscriptions.
  @HiveField(7)
  String payload;

  //  Extensions for payload
  @HiveField(8)
  Element elementPayload;

  //  Additional headers / information to send as part of the notification.
  @HiveField(9)
  List<String> header;

  //  Extensions for header
  @HiveField(10)
  List<Element> elementHeader;

Subscription_Channel(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.endpoint,
    this.elementEndpoint,
    this.payload,
    this.elementPayload,
    this.header,
    this.elementHeader
    });

  factory Subscription_Channel.fromJson(Map<String, dynamic> json) => _$Subscription_ChannelFromJson(json);
  Map<String, dynamic> toJson() => _$Subscription_ChannelToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubscriptionAdapter extends TypeAdapter<Subscription> {
  @override
  final typeId = 556;

  @override
  Subscription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subscription(
      fields[22] as Subscription_Channel,
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
  final typeId = 557;

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
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'end': instance.end?.toIso8601String(),
      'elementEnd': instance.elementEnd?.toJson(),
      'reason': instance.reason,
      'elementReason': instance.elementReason?.toJson(),
      'criteria': instance.criteria,
      'elementCriteria': instance.elementCriteria?.toJson(),
      'error': instance.error,
      'elementError': instance.elementError?.toJson(),
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
        Subscription_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'endpoint': instance.endpoint,
      'elementEndpoint': instance.elementEndpoint?.toJson(),
      'payload': instance.payload,
      'elementPayload': instance.elementPayload?.toJson(),
      'header': instance.header,
      'elementHeader':
          instance.elementHeader?.map((e) => e?.toJson())?.toList(),
    };
