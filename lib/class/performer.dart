import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'performer.g.dart';

@JsonSerializable(explicitToJson: true)
class Performer {
  CodeableConcept function;
  Reference actor;

  Performer({this.function, this.actor});

  factory Performer.fromJson(Map<String, dynamic> json) => _$PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$PerformerToJson(this);
}