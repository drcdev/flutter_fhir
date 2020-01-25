

part 'effectEvidenceSynthesis_CertaintySubcomponent.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_CertaintySubcomponent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> rating;
  List<Annotation> note;


EffectEvidenceSynthesis_CertaintySubcomponent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.rating,
this.note});

  factory EffectEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_CertaintySubcomponentToJson(this);
}