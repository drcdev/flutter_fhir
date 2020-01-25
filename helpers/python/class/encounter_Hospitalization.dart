

part 'encounter_Hospitalization.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter_Hospitalization {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier preAdmissionIdentifier;
  Reference origin;
  CodeableConcept admitSource;
  CodeableConcept reAdmission;
  List<CodeableConcept> dietPreference;
  List<CodeableConcept> specialCourtesy;
  List<CodeableConcept> specialArrangement;
  Reference destination;
  CodeableConcept dischargeDisposition;


Encounter_Hospitalization(
      {this.id,
this.extension,
this.modifierExtension,
this.preAdmissionIdentifier,
this.origin,
this.admitSource,
this.reAdmission,
this.dietPreference,
this.specialCourtesy,
this.specialArrangement,
this.destination,
this.dischargeDisposition});

  factory Encounter_Hospitalization.fromJson(Map<String, dynamic> json) => _$Encounter_HospitalizationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_HospitalizationToJson(this);
}