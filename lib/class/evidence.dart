import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'evidence.g.dart';

@JsonSerializable(explicitToJson: true)
class Evidence {
  List<CodeableConcept> code;
  List<Reference> detail;

  Evidence({this.code, this.detail});

  factory Evidence.fromJson(Map<String, dynamic> json) => _$EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceToJson(this);
}