

part 'device_Version.g.dart';

@JsonSerializable(explicitToJson: true)
class Device_Version {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Identifier component;
  String value;
  Element _value;


Device_Version(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.component,
this.value,
this._value});

  factory Device_Version.fromJson(Map<String, dynamic> json) => _$Device_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$Device_VersionToJson(this);
}