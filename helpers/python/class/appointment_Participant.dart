

part 'appointment_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class Appointment_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> type;
  Reference actor;
  enum: requiredoptionalinformation-only required;
  Element _required;
  enum: accepteddeclinedtentativeneeds-action status;
  Element _status;
  Period period;


Appointment_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.actor,
this.required,
this._required,
this.status,
this._status,
this.period});

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) => _$Appointment_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Appointment_ParticipantToJson(this);
}