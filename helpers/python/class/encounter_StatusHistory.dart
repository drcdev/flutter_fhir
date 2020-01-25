

part 'encounter_StatusHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter_StatusHistory {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: plannedarrivedtriagedin-progressonleavefinishedcancelledentered-in-errorunknown status;
  Element _status;
  Period period;


Encounter_StatusHistory(
      {this.id,
this.extension,
this.modifierExtension,
this.status,
this._status,
this.period});

  factory Encounter_StatusHistory.fromJson(Map<String, dynamic> json) => _$Encounter_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_StatusHistoryToJson(this);
}