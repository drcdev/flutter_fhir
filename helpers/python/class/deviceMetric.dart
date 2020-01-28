part 'deviceMetric.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceMetric {

DeviceMetric resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
CodeableConcept unit;
Reference source;
Reference parent;
String operationalStatus; // <code> enum: on/off/standby/entered-in-error;
Element _operationalStatus;
String color; // <code> enum: black/red/green/yellow/blue/magenta/cyan/white;
Element _color;
String category; // <code> enum: measurement/setting/calculation/unspecified;
Element _category;
Timing measurementPeriod;
List<DeviceMetric_Calibration> calibration;

DeviceMetric(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.unit,
      this.source,
      this.parent,
      this.operationalStatus,
      this._operationalStatus,
      this.color,
      this._color,
      this.category,
      this._category,
      this.measurementPeriod,
      this.calibration,
      });

  factory DeviceMetric.fromJson(Map<String, dynamic> json) => _$DeviceMetricFromJson(json);
  Map<String, dynamic> toJson() _$DeviceMetricToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceMetric_Calibration {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: unspecified/offset/gain/two-point;
Element _type;
String state; // <code> enum: not-calibrated/calibration-required/calibrated/unspecified;
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
      this._time,
      });

  factory DeviceMetric_Calibration.fromJson(Map<String, dynamic> json) => _$DeviceMetric_CalibrationFromJson(json);
  Map<String, dynamic> toJson() _$DeviceMetric_CalibrationToJson(this);
}

