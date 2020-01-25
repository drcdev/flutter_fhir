

part 'substanceNucleicAcid.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid {

  This is a SubstanceNucleicAcid resource resourceType;
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
  CodeableConcept sequenceType;
  int numberOfSubunits;
  Element _numberOfSubunits;
  String areaOfHybridisation;
  Element _areaOfHybridisation;
  CodeableConcept oligoNucleotideType;
  List<SubstanceNucleicAcid_Subunit> subunit;


SubstanceNucleicAcid(
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
this.sequenceType,
this.numberOfSubunits,
this._numberOfSubunits,
this.areaOfHybridisation,
this._areaOfHybridisation,
this.oligoNucleotideType,
this.subunit});

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcidToJson(this);
}