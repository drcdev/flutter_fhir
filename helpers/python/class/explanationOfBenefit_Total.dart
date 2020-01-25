

part 'explanationOfBenefit_Total.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Total {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  Money amount;


ExplanationOfBenefit_Total(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this.amount});

  factory ExplanationOfBenefit_Total.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_TotalToJson(this);
}