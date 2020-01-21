import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';

part 'range.g.dart';

@JsonSerializable(explicitToJson: true)
class Range {

  // Low limit
  Quantity low;

  // High limit
  Quantity high;

  Range({this.low, this.high});

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
  Map<String, dynamic> toJson() => _$RangeToJson(this);
}