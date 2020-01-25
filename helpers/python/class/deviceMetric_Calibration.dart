

part 'deviceMetric_Calibration.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceMetric_Calibration {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: unspecifiedoffsetgaintwo-point type;
  Element _type;
  enum: not-calibratedcalibration-requiredcalibratedunspecified state;
  Element _state;
  DateTime time;
  Element _time;


DeviceMetric_Calibration(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.state,
this._state,
this.time,
this._time});

  factory DeviceMetric_Calibration.fromJson(Map<String, dynamic> json) => _$DeviceMetric_CalibrationFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceMetric_CalibrationToJson(this);
}