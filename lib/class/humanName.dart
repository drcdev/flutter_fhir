import 'period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'humanName.g.dart';

@JsonSerializable()
class HumanName {
  String text;
  String family;
  List<String> given;
  List<String> prefix;
  List<String> suffix;
  Period period;

  HumanName({this.text, this.family, this.given, this.prefix, this.suffix, this.period});

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}