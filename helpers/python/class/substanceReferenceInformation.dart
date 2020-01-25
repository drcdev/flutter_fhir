

part 'substanceReferenceInformation.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation {

  This is a SubstanceReferenceInformation resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String comment;
  Element _comment;
  List<SubstanceReferenceInformation_Gene> gene;
  List<SubstanceReferenceInformation_GeneElement> geneElement;
  List<SubstanceReferenceInformation_Classification> classification;
  List<SubstanceReferenceInformation_Target> target;


SubstanceReferenceInformation(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.comment,
this._comment,
this.gene,
this.geneElement,
this.classification,
this.target});

  factory SubstanceReferenceInformation.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformationToJson(this);
}