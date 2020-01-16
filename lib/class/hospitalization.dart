import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'hospitalization.g.dart';

@JsonSerializable(explicitToJson: true)
class Hospitalization {
  Identifier preAdmissionIdentifier;
  Reference origin;
  CodeableConcept admitSource;
  CodeableConcept reAdmission;
  List<CodeableConcept> dietPreference;
  List<CodeableConcept> specialCourtesy;
  List<CodeableConcept> specialArrangement;
  Reference destination;
  CodeableConcept dischargeDisposition;

  Hospitalization(
      {this.preAdmissionIdentifier,
        this.origin,
        this.admitSource,
        this.reAdmission,
        this.dietPreference,
        this.specialCourtesy,
        this.specialArrangement,
        this.destination,
        this.dischargeDisposition});

  factory Hospitalization.fromJson(Map<String, dynamic> json) => _$HospitalizationFromJson(json);
  Map<String, dynamic> toJson() => _$HospitalizationToJson(this);
}