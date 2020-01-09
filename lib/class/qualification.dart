import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'qualification.g.dart';

@JsonSerializable(explicitToJson: true)
class Qualification {
  List<Identifier> identifier;
  CodeableConcept code;
  Period period;
  Reference issuer;

  Qualification({this.identifier, this.code, this.period, this.issuer});
  
  factory Qualification.fromJson(Map<String, dynamic> json) => _$QualificationFromJson(json);
  Map<String, dynamic> toJson() => _$QualificationToJson(this);
}