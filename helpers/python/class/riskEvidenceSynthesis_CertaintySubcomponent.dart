

part 'riskEvidenceSynthesis_CertaintySubcomponent.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_CertaintySubcomponent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> rating;
  List<Annotation> note;


RiskEvidenceSynthesis_CertaintySubcomponent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.rating,
this.note});

  factory RiskEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_CertaintySubcomponentToJson(this);
}