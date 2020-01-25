

part 'medicinalProductPharmaceutical_TargetSpecies.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;


MedicinalProductPharmaceutical_TargetSpecies(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.withdrawalPeriod});

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
}