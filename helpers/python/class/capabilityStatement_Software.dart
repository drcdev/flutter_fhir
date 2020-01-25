

part 'capabilityStatement_Software.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Software {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String version;
  Element _version;
  StringTime releaseDate;
  Element _releaseDate;


CapabilityStatement_Software(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.version,
this._version,
this.releaseDate,
this._releaseDate});

  factory CapabilityStatement_Software.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SoftwareToJson(this);
}