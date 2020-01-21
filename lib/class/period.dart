import 'package:json_annotation/json_annotation.dart';

part 'period.g.dart';

@JsonSerializable(explicitToJson: true)
class Period {

  // C? Starting time with inclusive boundary
  DateTime start;

  // C? End time with inclusive boundary, if not ongoing
  DateTime end;

  Period({this.start, this.end});
  
  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}