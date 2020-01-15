import 'package:flutter_fhir/class/identifier.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reference.g.dart';

@JsonSerializable(explicitToJson: true)
part 'ratio.g.dart';

@JsonSerializable(explicitToJson: true)
class Ratio {
  Quantity numerator;
  Quantity denominator;

  Ratio({this.numerator, this.denominator});

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}