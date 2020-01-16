import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'classHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class ClassHistory {
  Coding classs;
  Period period;

  ClassHistory({this.classs, this.period});

  factory ClassHistory.fromJson(Map<String, dynamic> json) => _$ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$ClassHistoryToJson(this);
}