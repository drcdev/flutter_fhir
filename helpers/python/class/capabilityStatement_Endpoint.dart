

part 'capabilityStatement_Endpoint.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Endpoint {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding protocol;
  String address;
  Element _address;


CapabilityStatement_Endpoint(
      {this.id,
this.extension,
this.modifierExtension,
this.protocol,
this.address,
this._address});

  factory CapabilityStatement_Endpoint.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_EndpointToJson(this);
}