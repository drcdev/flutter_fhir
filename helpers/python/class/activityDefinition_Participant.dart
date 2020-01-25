

part 'activityDefinition_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class ActivityDefinition_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element _type;
  CodeableConcept role;


ActivityDefinition_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.role});

  factory ActivityDefinition_Participant.fromJson(Map<String, dynamic> json) => _$ActivityDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinition_ParticipantToJson(this);
}