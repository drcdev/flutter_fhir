import 'package:flutter_fhir/class/period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'statusHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class StatusHistory {
  String status;
  Period period;

  StatusHistory({this.status, this.period});

  factory StatusHistory.fromJson(Map<String, dynamic> json) => _$StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$StatusHistoryToJson(this);
}