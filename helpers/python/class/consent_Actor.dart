

part 'consent_Actor.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent_Actor {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept role;
  Reference reference;


Consent_Actor(
      {this.id,
this.extension,
this.modifierExtension,
this.role,
this.reference});

  factory Consent_Actor.fromJson(Map<String, dynamic> json) => _$Consent_ActorFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_ActorToJson(this);
}