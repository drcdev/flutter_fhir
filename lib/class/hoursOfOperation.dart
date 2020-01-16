import 'package:json_annotation/json_annotation.dart';
part 'hoursOfOperation.g.dart';

@JsonSerializable(explicitToJson: true)
class HoursOfOperation {
  List<String> daysOfWeek;
  bool allDay;
  DateTime openingTime;
  DateTime closingTime;

  HoursOfOperation(
      {this.daysOfWeek, this.allDay, this.openingTime, this.closingTime});

  factory HoursOfOperation.fromJson(Map<String, dynamic> json) =>
      _$HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() => _$HoursOfOperationToJson(this);
}