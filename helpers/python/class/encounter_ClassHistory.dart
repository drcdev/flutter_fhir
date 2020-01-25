

part 'encounter_ClassHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter_ClassHistory {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding class;
  Period period;


Encounter_ClassHistory(
      {this.id,
this.extension,
this.modifierExtension,
this.class,
this.period});

  factory Encounter_ClassHistory.fromJson(Map<String, dynamic> json) => _$Encounter_ClassHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ClassHistoryToJson(this);
}