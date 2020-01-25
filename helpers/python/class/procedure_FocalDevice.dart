

part 'procedure_FocalDevice.g.dart';

@JsonSerializable(explicitToJson: true)
class Procedure_FocalDevice {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept action;
  Reference manipulated;


Procedure_FocalDevice(
      {this.id,
this.extension,
this.modifierExtension,
this.action,
this.manipulated});

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) => _$Procedure_FocalDeviceFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_FocalDeviceToJson(this);
}