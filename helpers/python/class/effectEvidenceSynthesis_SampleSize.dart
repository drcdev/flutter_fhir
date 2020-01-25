

part 'effectEvidenceSynthesis_SampleSize.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_SampleSize {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  int numberOfStudies;
  Element _numberOfStudies;
  int numberOfParticipants;
  Element _numberOfParticipants;


EffectEvidenceSynthesis_SampleSize(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.numberOfStudies,
this._numberOfStudies,
this.numberOfParticipants,
this._numberOfParticipants});

  factory EffectEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_SampleSizeToJson(this);
}