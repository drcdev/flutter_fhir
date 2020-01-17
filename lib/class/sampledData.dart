import 'package:flutter_fhir/class/quantity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sampledData.g.dart';

@JsonSerializable(explicitToJson: true)
class SampledData {
  Quantity origin;
  double period;
  double factor;
  double lowerLimit;
  double upperLimit;
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