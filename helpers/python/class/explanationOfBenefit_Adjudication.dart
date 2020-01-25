

part 'explanationOfBenefit_Adjudication.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Adjudication {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept reason;
  Money amount;
  double value;
  Element _value;


ExplanationOfBenefit_Adjudication(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.reason,
this.amount,
this.value,
this._value});

  factory ExplanationOfBenefit_Adjudication.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AdjudicationToJson(this);
}