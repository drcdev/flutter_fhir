

part 'subscription_Channel.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription_Channel {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: rest-hookwebsocketemailsmsmessage type;
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
this._header});

  factory Subscription_Channel.fromJson(Map<String, dynamic> json) => _$Subscription_ChannelFromJson(json);
  Map<String, dynamic> toJson() => _$Subscription_ChannelToJson(this);
}