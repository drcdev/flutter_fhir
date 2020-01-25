

part 'episodeOfCare_StatusHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_StatusHistory {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: plannedwaitlistactiveonholdfinishedcancelledentered-in-error status;
  Element _status;
  Period period;


EpisodeOfCare_StatusHistory(
      {this.id,
this.extension,
this.modifierExtension,
this.status,
this._status,
this.period});

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_StatusHistoryToJson(this);
}