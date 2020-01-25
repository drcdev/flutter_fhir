

part 'episodeOfCare_Diagnosis.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_Diagnosis {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference condition;
  CodeableConcept role;
  int rank;
  Element _rank;


EpisodeOfCare_Diagnosis(
      {this.id,
this.extension,
this.modifierExtension,
this.condition,
this.role,
this.rank,
this._rank});

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_DiagnosisToJson(this);
}