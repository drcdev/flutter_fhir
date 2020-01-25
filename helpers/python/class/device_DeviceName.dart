

part 'device_DeviceName.g.dart';

@JsonSerializable(explicitToJson: true)
class Device_DeviceName {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  enum: udi-label-nameuser-friendly-namepatient-reported-namemanufacturer-namemodel-nameother type;
  Element _type;


Device_DeviceName(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this._type});

  factory Device_DeviceName.fromJson(Map<String, dynamic> json) => _$Device_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$Device_DeviceNameToJson(this);
}