

part 'deviceMetric.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceMetric {

  This is a DeviceMetric resource resourceType;
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
  enum: onoffstandbyentered-in-error operationalStatus;
  Element _operationalStatus;
  enum: blackredgreenyellowbluemagentacyanwhite color;
  Element _color;
  enum: measurementsettingcalculationunspecified category;
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
this.calibration});

  factory DeviceMetric.fromJson(Map<String, dynamic> json) => _$DeviceMetricFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceMetricToJson(this);
}