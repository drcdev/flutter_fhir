import 'package:json_annotation/json_annotation.dart';
part 'period.g.dart';

@JsonSerializable(explicitToJson: true)
class Period {
  final DateTime start;
  final DateTime end;
  final String id;

  Period({this.start, this.end, this.id});
  
  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}