

part 'riskEvidenceSynthesis_Certainty.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_Certainty {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> rating;
  List<Annotation> note;
  List<RiskEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;


RiskEvidenceSynthesis_Certainty(
      {this.id,
this.extension,
this.modifierExtension,
this.rating,
this.note,
this.certaintySubcomponent});

  factory RiskEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_CertaintyToJson(this);
}