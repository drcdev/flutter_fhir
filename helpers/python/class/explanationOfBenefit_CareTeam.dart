

part 'explanationOfBenefit_CareTeam.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_CareTeam {

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


ExplanationOfBenefit_CareTeam(
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

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_CareTeamToJson(this);
}