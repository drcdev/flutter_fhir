import 'package:flutter_fhir/class/period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contactPoint.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactPoint {
  String system;
  String value;
  String use;
  int rank;
  Period period;

  ContactPoint({this.system, this.value, this.use, this.rank, this.period});
  
  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);
}