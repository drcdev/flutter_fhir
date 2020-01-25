

part 'effectEvidenceSynthesis_PrecisionEstimate.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_PrecisionEstimate {

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


EffectEvidenceSynthesis_PrecisionEstimate(
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

  factory EffectEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_PrecisionEstimateToJson(this);
}