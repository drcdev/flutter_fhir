

part 'effectEvidenceSynthesis_EffectEstimate.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_EffectEstimate {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  CodeableConcept type;
  CodeableConcept variantState;
  double value;
  Element _value;
  CodeableConcept unitOfMeasure;
  List<EffectEvidenceSynthesis_PrecisionEstimate> precisionEstimate;


EffectEvidenceSynthesis_EffectEstimate(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.type,
this.variantState,
this.value,
this._value,
this.unitOfMeasure,
this.precisionEstimate});

  factory EffectEvidenceSynthesis_EffectEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_EffectEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_EffectEstimateToJson(this);
}