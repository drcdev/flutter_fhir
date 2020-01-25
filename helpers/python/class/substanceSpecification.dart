

part 'substanceSpecification.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification {

  This is a SubstanceSpecification resource resourceType;
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
  Identifier identifier;
  CodeableConcept type;
  CodeableConcept status;
  CodeableConcept domain;
  String description;
  Element _description;
  List<Reference> source;
  String comment;
  Element _comment;
  List<SubstanceSpecification_Moiety> moiety;
  List<SubstanceSpecification_Property> property;
  Reference referenceInformation;
  SubstanceSpecification_Structure structure;
  List<SubstanceSpecification_Code> code;
  List<SubstanceSpecification_Name> name;
  List<SubstanceSpecification_MolecularWeight> molecularWeight;
  List<SubstanceSpecification_Relationship> relationship;
  Reference nucleicAcid;
  Reference polymer;
  Reference protein;
  Reference sourceMaterial;


SubstanceSpecification(
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
this.identifier,
this.type,
this.status,
this.domain,
this.description,
this._description,
this.source,
this.comment,
this._comment,
this.moiety,
this.property,
this.referenceInformation,
this.structure,
this.code,
this.name,
this.molecularWeight,
this.relationship,
this.nucleicAcid,
this.polymer,
this.protein,
this.sourceMaterial});

  factory SubstanceSpecification.fromJson(Map<String, dynamic> json) => _$SubstanceSpecificationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecificationToJson(this);
}