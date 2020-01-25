

part 'communicationRequest_Payload.g.dart';

@JsonSerializable(explicitToJson: true)
class CommunicationRequest_Payload {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String contentString;
  Element _contentString;
  Attachment contentAttachment;
  Reference contentReference;


CommunicationRequest_Payload(
      {this.id,
this.extension,
this.modifierExtension,
this.contentString,
this._contentString,
this.contentAttachment,
this.contentReference});

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) => _$CommunicationRequest_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequest_PayloadToJson(this);
}