import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';

part 'ratio.g.dart';

@JsonSerializable(explicitToJson: true)
class Ratio {

  // Numerator value
  Quantity numerator;

  // Denominator value
  Quantity denominator;

  Ratio({this.numerator, this.denominator});

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() => _$RatioToJson(this);
}