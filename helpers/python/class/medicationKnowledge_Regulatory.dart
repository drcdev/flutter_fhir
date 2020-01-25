

part 'medicationKnowledge_Regulatory.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Regulatory {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference regulatoryAuthority;
  List<MedicationKnowledge_Substitution> substitution;
  List<MedicationKnowledge_Schedule> schedule;
  MedicationKnowledge_MaxDispense maxDispense;


MedicationKnowledge_Regulatory(
      {this.id,
this.extension,
this.modifierExtension,
this.regulatoryAuthority,
this.substitution,
this.schedule,
this.maxDispense});

  factory MedicationKnowledge_Regulatory.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RegulatoryFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RegulatoryToJson(this);
}