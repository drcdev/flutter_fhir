

part 'coverageEligibilityRequest_Diagnosis.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Diagnosis {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept diagnosisCodeableConcept;
  Reference diagnosisReference;


CoverageEligibilityRequest_Diagnosis(
      {this.id,
this.extension,
this.modifierExtension,
this.diagnosisCodeableConcept,
this.diagnosisReference});

  factory CoverageEligibilityRequest_Diagnosis.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_DiagnosisToJson(this);
}