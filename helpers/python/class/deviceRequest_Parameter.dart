

part 'deviceRequest_Parameter.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRequest_Parameter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept valueCodeableConcept;
  Quantity valueQuantity;
  Range valueRange;
  bool valueBoolean;
  Element _valueBoolean;


DeviceRequest_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.valueCodeableConcept,
this.valueQuantity,
this.valueRange,
this.valueBoolean,
this._valueBoolean});

  factory DeviceRequest_Parameter.fromJson(Map<String, dynamic> json) => _$DeviceRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRequest_ParameterToJson(this);
}