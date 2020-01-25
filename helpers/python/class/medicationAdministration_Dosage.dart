

part 'medicationAdministration_Dosage.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationAdministration_Dosage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String text;
  Element _text;
  CodeableConcept site;
  CodeableConcept route;
  CodeableConcept method;
  Quantity dose;
  Ratio rateRatio;
  Quantity rateQuantity;


MedicationAdministration_Dosage(
      {this.id,
this.extension,
this.modifierExtension,
this.text,
this._text,
this.site,
this.route,
this.method,
this.dose,
this.rateRatio,
this.rateQuantity});

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_DosageToJson(this);
}