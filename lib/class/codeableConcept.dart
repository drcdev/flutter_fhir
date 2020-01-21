import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/coding.dart';

part 'codeableConcept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeableConcept {

  // Code defined by a terminology system
  List<Coding> coding;

  // Plain text representation of the concept
  String text;

  CodeableConcept({this.coding, this.text});
  
  factory CodeableConcept.fromJson(Map<String, dynamic> json) => _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeableConceptToJson(this);
}