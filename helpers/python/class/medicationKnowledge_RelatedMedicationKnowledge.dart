

part 'medicationKnowledge_RelatedMedicationKnowledge.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_RelatedMedicationKnowledge {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Reference> reference;


MedicationKnowledge_RelatedMedicationKnowledge(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.reference});

  factory MedicationKnowledge_RelatedMedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(this);
}