

part 'explanationOfBenefit_Payee.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Payee {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Reference party;


ExplanationOfBenefit_Payee(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.party});

  factory ExplanationOfBenefit_Payee.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PayeeToJson(this);
}