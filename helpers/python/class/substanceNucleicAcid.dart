part 'substanceNucleicAcid.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid {

SubstanceNucleicAcid resourceType;
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
      this.subunit,
      });

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcidFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcidToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Subunit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int subunit;
Element _subunit;
String sequence;
Element _sequence;
int length;
Element _length;
Attachment sequenceAttachment;
CodeableConcept fivePrime;
CodeableConcept threePrime;
List<SubstanceNucleicAcid_Linkage> linkage;
List<SubstanceNucleicAcid_Sugar> sugar;

SubstanceNucleicAcid_Subunit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.subunit,
      this._subunit,
      this.sequence,
      this._sequence,
      this.length,
      this._length,
      this.sequenceAttachment,
      this.fivePrime,
      this.threePrime,
      this.linkage,
      this.sugar,
      });

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcid_SubunitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Linkage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String connectivity;
Element _connectivity;
Identifier identifier;
String name;
Element _name;
String residueSite;
Element _residueSite;

SubstanceNucleicAcid_Linkage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.connectivity,
      this._connectivity,
      this.identifier,
      this.name,
      this._name,
      this.residueSite,
      this._residueSite,
      });

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_LinkageFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcid_LinkageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Sugar {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
String name;
Element _name;
String residueSite;
Element _residueSite;

SubstanceNucleicAcid_Sugar(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.name,
      this._name,
      this.residueSite,
      this._residueSite,
      });

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SugarFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceNucleicAcid_SugarToJson(this);
}

