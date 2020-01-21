import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';

part 'sampledData.g.dart';

@JsonSerializable(explicitToJson: true)
class SampledData {

  // R!  Zero value and units
  Quantity origin;

  // R!  Number of milliseconds between samples
  double period;

  // Multiply data by this before adding to origin
  double factor;

  // Lower limit of detection
  double lowerLimit;

  // Upper limit of detection
  double upperLimit;

  // R!  Number of sample points at each time point
  int dimensions;

  // Decimal values with spaces, or "E" | "U" | "L"
  String data;

  SampledData(
      {this.origin,
        this.period,
        this.factor,
        this.lowerLimit,
        this.upperLimit,
        this.dimensions,
        this.data});

  factory SampledData.fromJson(Map<String, dynamic> json) => _$SampledDataFromJson(json);
  Map<String, dynamic> toJson() => _$SampledDataToJson(this);
}