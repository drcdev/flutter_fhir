

part 'messageHeader_Source.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageHeader_Source {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String software;
  Element _software;
  String version;
  Element _version;
  ContactPoint contact;
  String endpoint;
  Element _endpoint;


MessageHeader_Source(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.software,
this._software,
this.version,
this._version,
this.contact,
this.endpoint,
this._endpoint});

  factory MessageHeader_Source.fromJson(Map<String, dynamic> json) => _$MessageHeader_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$MessageHeader_SourceToJson(this);
}