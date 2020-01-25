

part 'substancePolymer_DegreeOfPolymerisation.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept degree;
  SubstanceAmount amount;


SubstancePolymer_DegreeOfPolymerisation(
      {this.id,
this.extension,
this.modifierExtension,
this.degree,
this.amount});

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
}