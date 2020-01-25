

part 'effectEvidenceSynthesis_Certainty.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_Certainty {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> rating;
  List<Annotation> note;
  List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;


EffectEvidenceSynthesis_Certainty(
      {this.id,
this.extension,
this.modifierExtension,
this.rating,
this.note,
this.certaintySubcomponent});

  factory EffectEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_CertaintyToJson(this);
}