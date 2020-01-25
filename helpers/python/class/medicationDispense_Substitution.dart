

part 'medicationDispense_Substitution.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationDispense_Substitution {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool wasSubstituted;
  Element _wasSubstituted;
  CodeableConcept type;
  List<CodeableConcept> reason;
  List<Reference> responsibleParty;


MedicationDispense_Substitution(
      {this.id,
this.extension,
this.modifierExtension,
this.wasSubstituted,
this._wasSubstituted,
this.type,
this.reason,
this.responsibleParty});

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationDispense_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_SubstitutionToJson(this);
}