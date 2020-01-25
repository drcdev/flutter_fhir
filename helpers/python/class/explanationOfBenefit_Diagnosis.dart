

part 'explanationOfBenefit_Diagnosis.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Diagnosis {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  CodeableConcept diagnosisCodeableConcept;
  Reference diagnosisReference;
  List<CodeableConcept> type;
  CodeableConcept onAdmission;
  CodeableConcept packageCode;


ExplanationOfBenefit_Diagnosis(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.diagnosisCodeableConcept,
this.diagnosisReference,
this.type,
this.onAdmission,
this.packageCode});

  factory ExplanationOfBenefit_Diagnosis.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DiagnosisToJson(this);
}