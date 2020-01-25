

part 'riskAssessment_Prediction.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept outcome;
  number probabilityDecimal;
  Element _probabilityDecimal;
  Range probabilityRange;
  CodeableConcept qualitativeRisk;
  double relativeRisk;
  Element _relativeRisk;
  Period whenPeriod;
  Range whenRange;
  String rationale;
  Element _rationale;


RiskAssessment_Prediction(
      {this.id,
this.extension,
this.modifierExtension,
this.outcome,
this.probabilityDecimal,
this._probabilityDecimal,
this.probabilityRange,
this.qualitativeRisk,
this.relativeRisk,
this._relativeRisk,
this.whenPeriod,
this.whenRange,
this.rationale,
this._rationale});

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) => _$RiskAssessment_PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessment_PredictionToJson(this);
}