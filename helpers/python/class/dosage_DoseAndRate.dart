

part 'dosage_DoseAndRate.g.dart';

@JsonSerializable(explicitToJson: true)
class Dosage_DoseAndRate {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Range doseRange;
  Quantity doseQuantity;
  Ratio rateRatio;
  Range rateRange;
  Quantity rateQuantity;


Dosage_DoseAndRate(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.doseRange,
this.doseQuantity,
this.rateRatio,
this.rateRange,
this.rateQuantity});

  factory Dosage_DoseAndRate.fromJson(Map<String, dynamic> json) => _$Dosage_DoseAndRateFromJson(json);
  Map<String, dynamic> toJson() => _$Dosage_DoseAndRateToJson(this);
}