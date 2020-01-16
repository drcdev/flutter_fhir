import 'package:flutter_fhir/class/quantity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sampledData.g.dart';

@JsonSerializable(explicitToJson: true)
class SampledData {
  Quantity origin;
  int period;
  int factor;
  int lowerLimit;
  int upperLimit;
  int dimensions;
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