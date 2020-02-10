import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

part 'sampledData.g.dart';

@JsonSerializable(explicitToJson: true)
class SampledData {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  The base quantity that a measured value of zero represents. In
  // addition, this provides the units of the entire measurement series.
  Quantity origin;

  //  The length of time between sampling times, measured in milliseconds.
  double period;

  //  Extensions for period
  Element elementPeriod;

  //  A correction factor that is applied to the sampled data points before
  // they are added to the origin.
  double factor;

  //  Extensions for factor
  Element elementFactor;

  //  The lower limit of detection of the measured points. This is needed if
  // any of the data points have the value "L" (lower than detection limit).
  double lowerLimit;

  //  Extensions for lowerLimit
  Element elementLowerLimit;

  //  The upper limit of detection of the measured points. This is needed if
  // any of the data points have the value "U" (higher than detection
  // limit).
  double upperLimit;

  //  Extensions for upperLimit
  Element elementUpperLimit;

  //  The number of sample points at each time point. If this value is
  // greater than one, then the dimensions will be interlaced - all the
  // sample points for a point in time will be recorded at once.
  int dimensions;

  //  Extensions for dimensions
  Element elementDimensions;

  //  A series of data points which are decimal values separated by a single
  // space (character u20). The special values "E" (error), "L" (below
  // detection limit) and "U" (above detection limit) can also be used in
  // place of a decimal value.
  String data;

  //  Extensions for data
  Element elementData;

SampledData(
  this.origin,
    {this.id,
    this.extension,
    this.period,
    this.elementPeriod,
    this.factor,
    this.elementFactor,
    this.lowerLimit,
    this.elementLowerLimit,
    this.upperLimit,
    this.elementUpperLimit,
    this.dimensions,
    this.elementDimensions,
    this.data,
    this.elementData
    });

  factory SampledData.fromJson(Map<String, dynamic> json) => _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() => _$SampledDataToJson(this);
}

