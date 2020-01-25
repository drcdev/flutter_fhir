

part 'immunization_ProtocolApplied.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization_ProtocolApplied {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String series;
  Element _series;
  Reference authority;
  List<CodeableConcept> targetDisease;
  number doseNumberPositiveInt;
  Element _doseNumberPositiveInt;
  String doseNumberString;
  Element _doseNumberString;
  number seriesDosesPositiveInt;
  Element _seriesDosesPositiveInt;
  String seriesDosesString;
  Element _seriesDosesString;


Immunization_ProtocolApplied(
      {this.id,
this.extension,
this.modifierExtension,
this.series,
this._series,
this.authority,
this.targetDisease,
this.doseNumberPositiveInt,
this._doseNumberPositiveInt,
this.doseNumberString,
this._doseNumberString,
this.seriesDosesPositiveInt,
this._seriesDosesPositiveInt,
this.seriesDosesString,
this._seriesDosesString});

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) => _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ProtocolAppliedToJson(this);
}