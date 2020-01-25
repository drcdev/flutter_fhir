

part 'careTeam_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class CareTeam_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> role;
  Reference member;
  Reference onBehalfOf;
  Period period;


CareTeam_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.role,
this.member,
this.onBehalfOf,
this.period});

  factory CareTeam_Participant.fromJson(Map<String, dynamic> json) => _$CareTeam_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$CareTeam_ParticipantToJson(this);
}