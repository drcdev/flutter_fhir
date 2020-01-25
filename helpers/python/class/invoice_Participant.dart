

part 'invoice_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept role;
  Reference actor;


Invoice_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.role,
this.actor});

  factory Invoice_Participant.fromJson(Map<String, dynamic> json) => _$Invoice_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$Invoice_ParticipantToJson(this);
}