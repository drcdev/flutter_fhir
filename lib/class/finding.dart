import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'finding.g.dart';

@JsonSerializable(explicitToJson: true)
class Finding {
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  String basis;

  Finding({this.itemCodeableConcept, this.itemReference, this.basis});

  factory Finding.fromJson(Map<String, dynamic> json) => _$FindingFromJson(json);
  Map<String, dynamic> toJson() => _$FindingToJson(this);
}