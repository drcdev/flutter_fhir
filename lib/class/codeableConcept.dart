import 'package:flutter_fhir/class/coding.dart';
import 'package:json_annotation/json_annotation.dart';
part 'codeableConcept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeableConcept {
  List<Coding> coding;
  String text;

  CodeableConcept({this.coding, this.text});
  
  factory CodeableConcept.fromJson(Map<String, dynamic> json) => _$CodeableConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeableConceptToJson(this);
}