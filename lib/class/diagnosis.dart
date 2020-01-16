import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'diagnosis.g.dart';

@JsonSerializable(explicitToJson: true)
class Diagnosis {
  Reference condition;
  CodeableConcept role;
  int rank;

  Diagnosis({this.condition, this.role, this.rank});

  factory Diagnosis.fromJson(Map<String, dynamic> json) => _$DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosisToJson(this);
}