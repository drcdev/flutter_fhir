

part 'substanceSpecification_MolecularWeight.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_MolecularWeight {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept method;
  CodeableConcept type;
  Quantity amount;


SubstanceSpecification_MolecularWeight(
      {this.id,
this.extension,
this.modifierExtension,
this.method,
this.type,
this.amount});

  factory SubstanceSpecification_MolecularWeight.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MolecularWeightFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_MolecularWeightToJson(this);
}