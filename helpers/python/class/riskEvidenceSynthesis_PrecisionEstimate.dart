

part 'riskEvidenceSynthesis_PrecisionEstimate.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_PrecisionEstimate {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  double level;
  Element _level;
  double from;
  Element _from;
  double to;
  Element _to;


RiskEvidenceSynthesis_PrecisionEstimate(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.level,
this._level,
this.from,
this._from,
this.to,
this._to});

  factory RiskEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_PrecisionEstimateToJson(this);
}