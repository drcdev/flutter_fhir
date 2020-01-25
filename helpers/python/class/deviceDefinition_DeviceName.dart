

part 'deviceDefinition_DeviceName.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_DeviceName {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  enum: udi-label-nameuser-friendly-namepatient-reported-namemanufacturer-namemodel-nameother type;
  Element _type;


DeviceDefinition_DeviceName(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this._type});

  factory DeviceDefinition_DeviceName.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_DeviceNameToJson(this);
}