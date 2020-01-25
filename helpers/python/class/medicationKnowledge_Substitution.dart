

part 'medicationKnowledge_Substitution.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Substitution {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  bool allowed;
  Element _allowed;


MedicationKnowledge_Substitution(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.allowed,
this._allowed});

  factory MedicationKnowledge_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_SubstitutionToJson(this);
}