

part 'subscription.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription {

  This is a Subscription resource resourceType;
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
  enum: requestedactiveerroroff status;
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
this.channel});

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}