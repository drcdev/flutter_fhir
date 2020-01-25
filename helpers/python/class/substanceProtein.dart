

part 'substanceProtein.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceProtein {

  This is a SubstanceProtein resource resourceType;
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
  List<String> disulfideLinkage;
  List<Element> _disulfideLinkage;
  List<SubstanceProtein_Subunit> subunit;


SubstanceProtein(
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
this.disulfideLinkage,
this._disulfideLinkage,
this.subunit});

  factory SubstanceProtein.fromJson(Map<String, dynamic> json) => _$SubstanceProteinFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProteinToJson(this);
}