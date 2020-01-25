

part 'claim_Diagnosis.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Diagnosis {

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


Claim_Diagnosis(
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

  factory Claim_Diagnosis.fromJson(Map<String, dynamic> json) => _$Claim_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DiagnosisToJson(this);
}