

part 'effectEvidenceSynthesis_ResultsByExposure.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_ResultsByExposure {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  enum: exposureexposure-alternative exposureState;
  Element _exposureState;
  CodeableConcept variantState;
  Reference riskEvidenceSynthesis;


EffectEvidenceSynthesis_ResultsByExposure(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.exposureState,
this._exposureState,
this.variantState,
this.riskEvidenceSynthesis});

  factory EffectEvidenceSynthesis_ResultsByExposure.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_ResultsByExposureFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_ResultsByExposureToJson(this);
}