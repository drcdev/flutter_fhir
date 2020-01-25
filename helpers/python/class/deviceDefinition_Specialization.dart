

part 'deviceDefinition_Specialization.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Specialization {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String systemType;
  Element _systemType;
  String version;
  Element _version;


DeviceDefinition_Specialization(
      {this.id,
this.extension,
this.modifierExtension,
this.systemType,
this._systemType,
this.version,
this._version});

  factory DeviceDefinition_Specialization.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_SpecializationToJson(this);
}