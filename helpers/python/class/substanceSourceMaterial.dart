

part 'substanceSourceMaterial.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSourceMaterial {

  This is a SubstanceSourceMaterial resource resourceType;
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
  CodeableConcept sourceMaterialClass;
  CodeableConcept sourceMaterialType;
  CodeableConcept sourceMaterialState;
  Identifier organismId;
  String organismName;
  Element _organismName;
  List<Identifier> parentSubstanceId;
  List<String> parentSubstanceName;
  List<Element> _parentSubstanceName;
  List<CodeableConcept> countryOfOrigin;
  List<String> geographicalLocation;
  List<Element> _geographicalLocation;
  CodeableConcept developmentStage;
  List<SubstanceSourceMaterial_FractionDescription> fractionDescription;
  SubstanceSourceMaterial_Organism organism;
  List<SubstanceSourceMaterial_PartDescription> partDescription;


SubstanceSourceMaterial(
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
this.sourceMaterialClass,
this.sourceMaterialType,
this.sourceMaterialState,
this.organismId,
this.organismName,
this._organismName,
this.parentSubstanceId,
this.parentSubstanceName,
this._parentSubstanceName,
this.countryOfOrigin,
this.geographicalLocation,
this._geographicalLocation,
this.developmentStage,
this.fractionDescription,
this.organism,
this.partDescription});

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) => _$SubstanceSourceMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterialToJson(this);
}