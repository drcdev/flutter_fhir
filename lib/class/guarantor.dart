import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'guarantor.g.dart';

@JsonSerializable(explicitToJson: true)
class Guarantor {
  Reference party;
  bool onHold;
  Period period;

  Guarantor({this.party, this.onHold, this.period});

  factory Guarantor.fromJson(Map<String, dynamic> json) => _$GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$GuarantorToJson(this);
}