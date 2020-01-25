

part 'substanceReferenceInformation_GeneElement.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_GeneElement {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Identifier element;
  List<Reference> source;


SubstanceReferenceInformation_GeneElement(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.element,
this.source});

  factory SubstanceReferenceInformation_GeneElement.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneElementFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_GeneElementToJson(this);
}