

part 'claim_CareTeam.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_CareTeam {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  Reference provider;
  bool responsible;
  Element _responsible;
  CodeableConcept role;
  CodeableConcept qualification;


Claim_CareTeam(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.provider,
this.responsible,
this._responsible,
this.role,
this.qualification});

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) => _$Claim_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_CareTeamToJson(this);
}