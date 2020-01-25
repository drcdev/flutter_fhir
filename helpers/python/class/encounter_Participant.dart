

part 'encounter_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> type;
  Period period;
  Reference individual;


Encounter_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.period,
this.individual});

  factory Encounter_Participant.fromJson(Map<String, dynamic> json) => _$Encounter_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_ParticipantToJson(this);
}