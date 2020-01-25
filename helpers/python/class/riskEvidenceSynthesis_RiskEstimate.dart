

part 'riskEvidenceSynthesis_RiskEstimate.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_RiskEstimate {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  CodeableConcept type;
  double value;
  Element _value;
  CodeableConcept unitOfMeasure;
  int denominatorCount;
  Element _denominatorCount;
  int numeratorCount;
  Element _numeratorCount;
  List<RiskEvidenceSynthesis_PrecisionEstimate> precisionEstimate;


RiskEvidenceSynthesis_RiskEstimate(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.type,
this.value,
this._value,
this.unitOfMeasure,
this.denominatorCount,
this._denominatorCount,
this.numeratorCount,
this._numeratorCount,
this.precisionEstimate});

  factory RiskEvidenceSynthesis_RiskEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_RiskEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_RiskEstimateToJson(this);
}