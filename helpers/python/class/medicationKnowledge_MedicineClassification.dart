

part 'medicationKnowledge_MedicineClassification.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MedicineClassification {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> classification;


MedicationKnowledge_MedicineClassification(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.classification});

  factory MedicationKnowledge_MedicineClassification.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MedicineClassificationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MedicineClassificationToJson(this);
}