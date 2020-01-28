
part 'deviceMetric.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceMetric {
  
  // This is a DeviceMetric 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Unique instance identifiers assigned to a device by the device or gateway
  //  software, manufacturers, other organizations or owners. For example: handle ID.
  List<Identifier identifier;

  // Describes the type of the metric. For example: Heart Rate, PEEP Setting,
  //  etc.
  CodeableConcept type;

  // Describes the unit that an observed value determined for this metric will
  //  have. For example: Percent, Seconds, etc.
  CodeableConcept unit;

  // Describes the link to the  Device that this DeviceMetric belongs to and
  //  that contains administrative device information such as manufacturer, serial
  //  number, etc.
  Reference source;

  // Describes the link to the  Device that this DeviceMetric belongs to and
  //  that provide information about the location of this DeviceMetric in the
  //  containment structure of the parent Device. An example would be a Device that
  //  represents a Channel. This reference can be used by a client application to
  //  distinguish DeviceMetrics that have the same type, but should be interpreted
  //  based on their containment location.
  Reference parent;

  // Indicates current operational state of the device. For example: On, Off,
  //  Standby, etc.Enum enum; // onoffstandbyentered-in-error operationalStatus;

  // Extensions for operationalStatus
  Element _operationalStatus;

  // Describes the color representation for the metric. This is often used to
  //  aid clinicians to track and identify parameter types by color. In practice,
  //  consider a Patient Monitor that has ECG/HR and Pleth for example; the
  //  parameters are displayed in different characteristic colors, such as HR-blue,
  //  BP-green, and PR and SpO2- magenta.Enum enum; // blackredgreenyellowbluemagentacyanwhite color;

  // Extensions for color
  Element _color;

  // Indicates the category of the observation generation process. A
  //  DeviceMetric can be for example a setting, measurement, or calculation.Enum
  //  enum; // measurementsettingcalculationunspecified category;

  // Extensions for category
  Element _category;

  // Describes the measurement repetition time. This is not necessarily the same
  //  as the update period. The measurement repetition time can range from
  //  milliseconds up to hours. An example for a measurement repetition time in the
  //  range of milliseconds is the sampling rate of an ECG. An example for a
  //  measurement repetition time in the range of hours is a NIBP that is triggered
  //  automatically every hour. The update period may be different than the
  //  measurement repetition time, if the device does not update the published
  //  observed value with the same frequency as it was measured.
  Timing measurementPeriod;

  // Describes the calibrations that have been performed or that are required to
  //  be performed.
  List<DeviceMetric_Calibration calibration
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

@JsonSerializable(explicitToJson: true)
class DeviceMetric_Calibration {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Describes the type of the calibration method.Enum enum; //
  //  unspecifiedoffsetgaintwo-point type;

  // Extensions for type
  Element _type;

  // Describes the state of the calibration.Enum enum; //
  //  not-calibratedcalibration-requiredcalibratedunspecified state;

  // Extensions for state
  Element _state;

  // Describes the time last calibration has been performed.
  DateTime time;

  // Extensions for time
  Element _time
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