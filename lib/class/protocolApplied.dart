import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'protocolApplied.g.dart';

@JsonSerializable(explicitToJson: true)
class ProtocolApplied {
  String series;
  Reference authority;
  List<CodeableConcept> targetDisease;
  int doseNumberPositiveInt;
  String doseNumberString;
  int seriesDosesPositiveInt;
  String seriesDosesString;

  ProtocolApplied(
      {this.series,
        this.authority,
        this.targetDisease,
        this.doseNumberPositiveInt,
        this.doseNumberString,
        this.seriesDosesPositiveInt,
        this.seriesDosesString});

  factory ProtocolApplied.fromJson(Map<String, dynamic> json) => _$ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$ProtocolAppliedToJson(this);
}