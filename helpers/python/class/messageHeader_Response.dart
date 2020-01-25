

part 'messageHeader_Response.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader_Response {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identifier;
  Element _identifier;
  enum: oktransient-errorfatal-error code;
  Element _code;
  Reference details;


MessageHeader_Response(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this._identifier,
this.code,
this._code,
this.details});

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) => _$MessageHeader_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_ResponseToJson(this);
}