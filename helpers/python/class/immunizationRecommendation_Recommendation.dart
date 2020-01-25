

part 'immunizationRecommendation_Recommendation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_Recommendation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> vaccineCode;
  CodeableConcept targetDisease;
  List<CodeableConcept> contraindicatedVaccineCode;
  CodeableConcept forecastStatus;
  List<CodeableConcept> forecastReason;
  List<ImmunizationRecommendation_DateCriterion> dateCriterion;
  String description;
  Element _description;
  String series;
  Element _series;
  number doseNumberPositiveInt;
  Element _doseNumberPositiveInt;
  String doseNumberString;
  Element _doseNumberString;
  number seriesDosesPositiveInt;
  Element _seriesDosesPositiveInt;
  String seriesDosesString;
  Element _seriesDosesString;
  List<Reference> supportingImmunization;
  List<Reference> supportingPatientInformation;


ImmunizationRecommendation_Recommendation(
      {this.id,
this.extension,
this.modifierExtension,
this.vaccineCode,
this.targetDisease,
this.contraindicatedVaccineCode,
this.forecastStatus,
this.forecastReason,
this.dateCriterion,
this.description,
this._description,
this.series,
this._series,
this.doseNumberPositiveInt,
this._doseNumberPositiveInt,
this.doseNumberString,
this._doseNumberString,
this.seriesDosesPositiveInt,
this._seriesDosesPositiveInt,
this.seriesDosesString,
this._seriesDosesString,
this.supportingImmunization,
this.supportingPatientInformation});

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_RecommendationToJson(this);
}