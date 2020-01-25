

part 'medicationRequest_Substitution.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationRequest_Substitution {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool allowedBoolean;
  Element _allowedBoolean;
  CodeableConcept allowedCodeableConcept;
  CodeableConcept reason;


MedicationRequest_Substitution(
      {this.id,
this.extension,
this.modifierExtension,
this.allowedBoolean,
this._allowedBoolean,
this.allowedCodeableConcept,
this.reason});

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationRequest_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_SubstitutionToJson(this);
}