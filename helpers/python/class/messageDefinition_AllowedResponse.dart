

part 'messageDefinition_AllowedResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageDefinition_AllowedResponse {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String message;
  String situation;
  Element _situation;


MessageDefinition_AllowedResponse(
      {this.id,
this.extension,
this.modifierExtension,
this.message,
this.situation,
this._situation});

  factory MessageDefinition_AllowedResponse.fromJson(Map<String, dynamic> json) => _$MessageDefinition_AllowedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_AllowedResponseToJson(this);
}