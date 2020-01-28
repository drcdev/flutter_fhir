part 'substanceProtein.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceProtein {

SubstanceProtein resourceType;
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
      this.subunit,
      });

  factory SubstanceProtein.fromJson(Map<String, dynamic> json) => _$SubstanceProteinFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceProteinToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceProtein_Subunit {

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
Identifier nTerminalModificationId;
String nTerminalModification;
Element _nTerminalModification;
Identifier cTerminalModificationId;
String cTerminalModification;
Element _cTerminalModification;

SubstanceProtein_Subunit(
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
      this.nTerminalModificationId,
      this.nTerminalModification,
      this._nTerminalModification,
      this.cTerminalModificationId,
      this.cTerminalModification,
      this._cTerminalModification,
      });

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceProtein_SubunitFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceProtein_SubunitToJson(this);
}

