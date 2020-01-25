

part 'substanceReferenceInformation_Classification.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Classification {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept domain;
  CodeableConcept classification;
  List<CodeableConcept> subtype;
  List<Reference> source;


SubstanceReferenceInformation_Classification(
      {this.id,
this.extension,
this.modifierExtension,
this.domain,
this.classification,
this.subtype,
this.source});

  factory SubstanceReferenceInformation_Classification.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_ClassificationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_ClassificationToJson(this);
}