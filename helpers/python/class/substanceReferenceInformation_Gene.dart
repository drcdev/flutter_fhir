

part 'substanceReferenceInformation_Gene.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Gene {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept geneSequenceOrigin;
  CodeableConcept gene;
  List<Reference> source;


SubstanceReferenceInformation_Gene(
      {this.id,
this.extension,
this.modifierExtension,
this.geneSequenceOrigin,
this.gene,
this.source});

  factory SubstanceReferenceInformation_Gene.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_GeneToJson(this);
}