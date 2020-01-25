

part 'capabilityStatement_Implementation.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Implementation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  String url;
  Element _url;
  Reference custodian;


CapabilityStatement_Implementation(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.url,
this._url,
this.custodian});

  factory CapabilityStatement_Implementation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ImplementationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ImplementationToJson(this);
}