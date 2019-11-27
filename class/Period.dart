import 'package:json_annotation/json_annotation.dart';
part 'period.g.dart';

@JsonSerializable()
class Period {
  final DateTime start;
  final DateTime end;

  Period({this.start, this.end});
  
  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}