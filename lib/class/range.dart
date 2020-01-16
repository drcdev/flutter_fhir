import 'package:flutter_fhir/class/quantity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'range.g.dart';

@JsonSerializable(explicitToJson: true)
class Range {
  Quantity low;
  Quantity high;

  Range({this.low, this.high});

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
  Map<String, dynamic> toJson() => _$RangeToJson(this);
}