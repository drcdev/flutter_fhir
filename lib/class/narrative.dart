import 'package:json_annotation/json_annotation.dart';

part 'narrative.g.dart';

@JsonSerializable(explicitToJson: true)
class Narrative {

  // R!  generated | extensions | additional | empty
  String status;

  // R!  Limited xhtml content
  String div;

  Narrative(
      {this.status,
        this.div});

  factory Narrative.fromJson(Map<String, dynamic> json) => _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}