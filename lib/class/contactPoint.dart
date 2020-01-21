import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';

part 'contactPoint.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactPoint {

  // C? phone | fax | email | pager | url | sms | other
  String system;

  // The actual contact point details
  String value;

  // home | work | temp | old | mobile - purpose of this contact point
  String use;

  // Specify preferred order of use (1 = highest)
  int rank;

  // Time period when the contact point was/is in use
  Period period;

  ContactPoint({this.system, this.value, this.use, this.rank, this.period});
  
  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);
}