import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {
  Reference coverage;
  int priority;

  Coverage({this.coverage, this.priority});

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}