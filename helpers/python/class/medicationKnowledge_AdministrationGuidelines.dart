

part 'medicationKnowledge_AdministrationGuidelines.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_AdministrationGuidelines {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<MedicationKnowledge_Dosage> dosage;
  CodeableConcept indicationCodeableConcept;
  Reference indicationReference;
  List<MedicationKnowledge_PatientCharacteristics> patientCharacteristics;


MedicationKnowledge_AdministrationGuidelines(
      {this.id,
this.extension,
this.modifierExtension,
this.dosage,
this.indicationCodeableConcept,
this.indicationReference,
this.patientCharacteristics});

  factory MedicationKnowledge_AdministrationGuidelines.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_AdministrationGuidelinesFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_AdministrationGuidelinesToJson(this);
}