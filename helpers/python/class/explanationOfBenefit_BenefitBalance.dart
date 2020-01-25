

part 'explanationOfBenefit_BenefitBalance.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_BenefitBalance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  bool excluded;
  Element _excluded;
  String name;
  Element _name;
  String description;
  Element _description;
  CodeableConcept network;
  CodeableConcept unit;
  CodeableConcept term;
  List<ExplanationOfBenefit_Financial> financial;


ExplanationOfBenefit_BenefitBalance(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.excluded,
this._excluded,
this.name,
this._name,
this.description,
this._description,
this.network,
this.unit,
this.term,
this.financial});

  factory ExplanationOfBenefit_BenefitBalance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_BenefitBalanceToJson(this);
}