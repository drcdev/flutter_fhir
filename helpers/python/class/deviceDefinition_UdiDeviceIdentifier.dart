

part 'deviceDefinition_UdiDeviceIdentifier.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_UdiDeviceIdentifier {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String deviceIdentifier;
  Element _deviceIdentifier;
  String issuer;
  Element _issuer;
  String jurisdiction;
  Element _jurisdiction;


DeviceDefinition_UdiDeviceIdentifier(
      {this.id,
this.extension,
this.modifierExtension,
this.deviceIdentifier,
this._deviceIdentifier,
this.issuer,
this._issuer,
this.jurisdiction,
this._jurisdiction});

  factory DeviceDefinition_UdiDeviceIdentifier.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_UdiDeviceIdentifierToJson(this);
}