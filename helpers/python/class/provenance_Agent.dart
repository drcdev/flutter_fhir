

part 'provenance_Agent.g.dart';

@JsonSerializable(explicitToJson: true)
class Provenance_Agent {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> role;
  Reference who;
  Reference onBehalfOf;


Provenance_Agent(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.role,
this.who,
this.onBehalfOf});

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_AgentToJson(this);
}