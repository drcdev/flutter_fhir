part 'subscription.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription {

Subscription resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
String status; // <code> enum: requested/active/error/off;
Element _status;
List<ContactPoint> contact;
DateTime end;
Element _end;
String reason;
Element _reason;
String criteria;
Element _criteria;
String error;
Element _error;
Subscription_Channel channel;

Subscription(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.status,
      this._status,
      this.contact,
      this.end,
      this._end,
      this.reason,
      this._reason,
      this.criteria,
      this._criteria,
      this.error,
      this._error,
      this.channel,
      });

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() _$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Subscription_Channel {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: rest-hook/websocket/email/sms/message;
Element _type;
String endpoint;
Element _endpoint;
String payload;
Element _payload;
List<String> header;
List<Element> _header;

Subscription_Channel(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.endpoint,
      this._endpoint,
      this.payload,
      this._payload,
      this.header,
      this._header,
      });

  factory Subscription_Channel.fromJson(Map<String, dynamic> json) => _$Subscription_ChannelFromJson(json);
  Map<String, dynamic> toJson() _$Subscription_ChannelToJson(this);
}

