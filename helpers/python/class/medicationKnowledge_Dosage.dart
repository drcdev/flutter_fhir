

part 'medicationKnowledge_Dosage.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Dosage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Dosage> dosage;


MedicationKnowledge_Dosage(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.dosage});

  factory MedicationKnowledge_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DosageToJson(this);
}