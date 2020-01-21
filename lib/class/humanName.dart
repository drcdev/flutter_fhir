import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';

part 'humanName.g.dart';

@JsonSerializable(explicitToJson: true)
class HumanName {

  // usual | official | temp | nickname | anonymous | old | maiden
  String use;

  // Text representation of the full name
  String text;

  // Family name (often called 'Surname')
  String family;

  // Given names (not always 'first'). Includes middle names
  List<String> given;

  // Parts that come before the name
  List<String> prefix;

  // Parts that come after the name
  List<String> suffix;

  // Time period when name was/is in use
  Period period;

  HumanName({this.use, this.text, this.family, this.given, this.prefix, this.suffix, this.period});

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}