

part 'communication_Payload.g.dart';

@JsonSerializable(explicitToJson: true)
class Communication_Payload {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String contentString;
  Element _contentString;
  Attachment contentAttachment;
  Reference contentReference;


Communication_Payload(
      {this.id,
this.extension,
this.modifierExtension,
this.contentString,
this._contentString,
this.contentAttachment,
this.contentReference});

  factory Communication_Payload.fromJson(Map<String, dynamic> json) => _$Communication_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$Communication_PayloadToJson(this);
}