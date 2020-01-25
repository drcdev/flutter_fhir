

part 'capabilityStatement_SupportedMessage.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SupportedMessage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: senderreceiver mode;
  Element _mode;
  String definition;


CapabilityStatement_SupportedMessage(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.definition});

  factory CapabilityStatement_SupportedMessage.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SupportedMessageFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SupportedMessageToJson(this);
}