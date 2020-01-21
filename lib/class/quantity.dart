import 'package:json_annotation/json_annotation.dart';

part 'quantity.g.dart';

@JsonSerializable(explicitToJson: true)
class Quantity {

  // Numerical value (with implicit precision)
  double value;

  // < | <= | >= | > - how to understand the value
  String comparator;

  // Unit representation
  String unit;

  // C? System that defines coded unit form
  String system;

  // Coded form of the unit
  String code;

  Quantity({this.value, this.comparator, this.unit, this.system, this.code});

  factory Quantity.fromJson(Map<String, dynamic> json) => _$QuantityFromJson(json);
  Map<String, dynamic> toJson() => _$QuantityToJson(this);
}