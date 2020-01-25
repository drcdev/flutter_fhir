

part 'medicinalProductPharmaceutical_RouteOfAdministration.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_RouteOfAdministration {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  Quantity firstDose;
  Quantity maxSingleDose;
  Quantity maxDosePerDay;
  Ratio maxDosePerTreatmentPeriod;
  Duration maxTreatmentPeriod;
  List<MedicinalProductPharmaceutical_TargetSpecies> targetSpecies;


MedicinalProductPharmaceutical_RouteOfAdministration(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.firstDose,
this.maxSingleDose,
this.maxDosePerDay,
this.maxDosePerTreatmentPeriod,
this.maxTreatmentPeriod,
this.targetSpecies});

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}