

part 'planDefinition_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class PlanDefinition_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: patientpractitionerrelated-persondevice type;
  Element _type;
  CodeableConcept role;


PlanDefinition_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.role});

  factory PlanDefinition_Participant.fromJson(Map<String, dynamic> json) => _$PlanDefinition_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDefinition_ParticipantToJson(this);
}