

part 'terminologyCapabilities_Software.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Software {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String version;
  Element _version;


TerminologyCapabilities_Software(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.version,
this._version});

  factory TerminologyCapabilities_Software.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_SoftwareToJson(this);
}