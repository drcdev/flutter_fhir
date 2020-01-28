part 'dosage.g.dart';

@JsonSerializable(explicitToJson: true)
class Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int sequence;
Element _sequence;
String text;
Element _text;
List<CodeableConcept> additionalInstruction;
String patientInstruction;
Element _patientInstruction;
Timing timing;
bool asNeededBoolean; //  pattern: ^true|false$
Element _asNeededBoolean;
CodeableConcept asNeededCodeableConcept;
CodeableConcept site;
CodeableConcept route;
CodeableConcept method;
List<Dosage_DoseAndRate> doseAndRate;
Ratio maxDosePerPeriod;
Quantity maxDosePerAdministration;
Quantity maxDosePerLifetime;

Dosage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.sequence,
      this._sequence,
      this.text,
      this._text,
      this.additionalInstruction,
      this.patientInstruction,
      this._patientInstruction,
      this.timing,
      this.asNeededBoolean,
      this._asNeededBoolean,
      this.asNeededCodeableConcept,
      this.site,
      this.route,
      this.method,
      this.doseAndRate,
      this.maxDosePerPeriod,
      this.maxDosePerAdministration,
      this.maxDosePerLifetime,
      });

  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);
  Map<String, dynamic> toJson() _$DosageToJson(this);
}

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
      this.rateQuantity,
      });

  factory Dosage_DoseAndRate.fromJson(Map<String, dynamic> json) => _$Dosage_DoseAndRateFromJson(json);
  Map<String, dynamic> toJson() _$Dosage_DoseAndRateToJson(this);
}

