import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reaction.g.dart';

@JsonSerializable(explicitToJson: true)
class Reaction {
  DateTime date;
  Reference detail;
  bool reported;

  Reaction({this.date, this.detail, this.reported});

  factory Reaction.fromJson(Map<String, dynamic> json) => _$ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$ReactionToJson(this);
}