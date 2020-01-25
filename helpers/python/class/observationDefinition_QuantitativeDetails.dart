

part 'observationDefinition_QuantitativeDetails.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QuantitativeDetails {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept customaryUnit;
  CodeableConcept unit;
  double conversionFactor;
  Element _conversionFactor;
  int decimalPrecision;
  Element _decimalPrecision;


ObservationDefinition_QuantitativeDetails(
      {this.id,
this.extension,
this.modifierExtension,
this.customaryUnit,
this.unit,
this.conversionFactor,
this._conversionFactor,
this.decimalPrecision,
this._decimalPrecision});

  factory ObservationDefinition_QuantitativeDetails.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QuantitativeDetailsToJson(this);
}