import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:json_annotation/json_annotation.dart';
part 'identifier.g.dart';

@JsonSerializable(explicitToJson: true)
class Identifier {
  String use;
  CodeableConcept type;
  String system;
  String value;
  Period period;
  Reference assigner;

  Identifier({this.use, this.type, this.system, this.value, this.period, this.assigner});
  
  factory Identifier.fromJson(Map<String, dynamic> json) => _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}