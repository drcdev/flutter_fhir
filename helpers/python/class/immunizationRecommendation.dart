part 'immunizationRecommendation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation {

ImmunizationRecommendation resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
Reference patient;
DateTime date;
Element _date;
Reference authority;
List<ImmunizationRecommendation_Recommendation> recommendation;

ImmunizationRecommendation(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.patient,
      this.date,
      this._date,
      this.authority,
      this.recommendation,
      });

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationRecommendationToJson(this);
}

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
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _doseNumberPositiveInt;
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
Element _doseNumberString;
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
Element _seriesDosesPositiveInt;
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
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
      this.supportingPatientInformation,
      });

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationRecommendation_RecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
DateTime value;
Element _value;

ImmunizationRecommendation_DateCriterion(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.value,
      this._value,
      });

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() _$ImmunizationRecommendation_DateCriterionToJson(this);
}

