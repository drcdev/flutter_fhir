part 'substancePolymer.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer {

SubstancePolymer resourceType;
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
CodeableConcept class;
CodeableConcept geometry;
List<CodeableConcept> copolymerConnectivity;
List<String> modification;
List<Element> _modification;
List<SubstancePolymer_MonomerSet> monomerSet;
List<SubstancePolymer_Repeat> repeat;

SubstancePolymer(
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
      this.class,
      this.geometry,
      this.copolymerConnectivity,
      this.modification,
      this._modification,
      this.monomerSet,
      this.repeat,
      });

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) => _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept ratioType;
List<SubstancePolymer_StartingMaterial> startingMaterial;

SubstancePolymer_MonomerSet(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.ratioType,
      this.startingMaterial,
      });

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_MonomerSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StartingMaterial {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept material;
CodeableConcept type;
bool isDefining;
Element _isDefining;
SubstanceAmount amount;

SubstancePolymer_StartingMaterial(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.material,
      this.type,
      this.isDefining,
      this._isDefining,
      this.amount,
      });

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_StartingMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_Repeat {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
int numberOfUnits;
Element _numberOfUnits;
String averageMolecularFormula;
Element _averageMolecularFormula;
CodeableConcept repeatUnitAmountType;
List<SubstancePolymer_RepeatUnit> repeatUnit;

SubstancePolymer_Repeat(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.numberOfUnits,
      this._numberOfUnits,
      this.averageMolecularFormula,
      this._averageMolecularFormula,
      this.repeatUnitAmountType,
      this.repeatUnit,
      });

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_RepeatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_RepeatUnit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept orientationOfPolymerisation;
String repeatUnit;
Element _repeatUnit;
SubstanceAmount amount;
List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;
List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;

SubstancePolymer_RepeatUnit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.orientationOfPolymerisation,
      this.repeatUnit,
      this._repeatUnit,
      this.amount,
      this.degreeOfPolymerisation,
      this.structuralRepresentation,
      });

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_RepeatUnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept degree;
SubstanceAmount amount;

SubstancePolymer_DegreeOfPolymerisation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.degree,
      this.amount,
      });

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StructuralRepresentation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String representation;
Element _representation;
Attachment attachment;

SubstancePolymer_StructuralRepresentation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.representation,
      this._representation,
      this.attachment,
      });

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() _$SubstancePolymer_StructuralRepresentationToJson(this);
}

