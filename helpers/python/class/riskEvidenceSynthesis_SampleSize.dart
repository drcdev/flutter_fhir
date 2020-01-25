

part 'riskEvidenceSynthesis_SampleSize.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskEvidenceSynthesis_SampleSize {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  int numberOfStudies;
  Element _numberOfStudies;
  int numberOfParticipants;
  Element _numberOfParticipants;


RiskEvidenceSynthesis_SampleSize(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.numberOfStudies,
this._numberOfStudies,
this.numberOfParticipants,
this._numberOfParticipants});

  factory RiskEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$RiskEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() => _$RiskEvidenceSynthesis_SampleSizeToJson(this);
}