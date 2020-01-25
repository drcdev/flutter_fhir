

part 'explanationOfBenefit_Related.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Related {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference claim;
  CodeableConcept relationship;
  Identifier reference;


ExplanationOfBenefit_Related(
      {this.id,
this.extension,
this.modifierExtension,
this.claim,
this.relationship,
this.reference});

  factory ExplanationOfBenefit_Related.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_RelatedToJson(this);
}