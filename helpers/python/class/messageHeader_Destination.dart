

part 'messageHeader_Destination.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader_Destination {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  Reference target;
  String endpoint;
  Element _endpoint;
  Reference receiver;


MessageHeader_Destination(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.target,
this.endpoint,
this._endpoint,
this.receiver});

  factory MessageHeader_Destination.fromJson(Map<String, dynamic> json) => _$MessageHeader_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_DestinationToJson(this);
}