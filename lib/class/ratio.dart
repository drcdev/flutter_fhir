import 'package:json_annotation/json_annotation.dart';
part 'ratio.g.dart';

@JsonSerializable(explicitToJson: true)
class Ratio {
  Quantity numerator;
  Quantity denominator;

  Ratio({this.numerator, this.denominator});

  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);
  Map<String, dynamic> toJson() => _$RatioToJson(this);
}