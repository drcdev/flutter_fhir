

part 'capabilityStatement_Messaging.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Messaging {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CapabilityStatement_Endpoint> endpoint;
  int reliableCache;
  Element _reliableCache;
  String documentation;
  Element _documentation;
  List<CapabilityStatement_SupportedMessage> supportedMessage;


CapabilityStatement_Messaging(
      {this.id,
this.extension,
this.modifierExtension,
this.endpoint,
this.reliableCache,
this._reliableCache,
this.documentation,
this._documentation,
this.supportedMessage});

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_MessagingFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_MessagingToJson(this);
}