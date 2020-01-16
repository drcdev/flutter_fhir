import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'investigation.g.dart';

@JsonSerializable(explicitToJson: true)
class Investigation {
  CodeableConcept code;
  List<Reference> item;

  Investigation({this.code, this.item});

  factory Investigation.fromJson(Map<String, dynamic> json) => _$InvestigationFromJson(json);
  Map<String, dynamic> toJson() => _$InvestigationToJson(this);
}