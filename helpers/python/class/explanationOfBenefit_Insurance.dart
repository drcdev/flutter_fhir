

part 'explanationOfBenefit_Insurance.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Insurance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool focal;
  Element _focal;
  Reference coverage;
  List<String> preAuthRef;
  List<Element> _preAuthRef;


ExplanationOfBenefit_Insurance(
      {this.id,
this.extension,
this.modifierExtension,
this.focal,
this._focal,
this.coverage,
this.preAuthRef,
this._preAuthRef});

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_InsuranceToJson(this);
}