part 'substanceSpecification.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification {

SubstanceSpecification resourceType;
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
      this.sourceMaterial,
      });

  factory SubstanceSpecification.fromJson(Map<String, dynamic> json) => _$SubstanceSpecificationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Moiety {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept role;
Identifier identifier;
String name;
Element _name;
CodeableConcept stereochemistry;
CodeableConcept opticalActivity;
String molecularFormula;
Element _molecularFormula;
Quantity amountQuantity;
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;

SubstanceSpecification_Moiety(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.role,
      this.identifier,
      this.name,
      this._name,
      this.stereochemistry,
      this.opticalActivity,
      this.molecularFormula,
      this._molecularFormula,
      this.amountQuantity,
      this.amountString,
      this._amountString,
      });

  factory SubstanceSpecification_Moiety.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MoietyFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_MoietyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
CodeableConcept code;
String parameters;
Element _parameters;
Reference definingSubstanceReference;
CodeableConcept definingSubstanceCodeableConcept;
Quantity amountQuantity;
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;

SubstanceSpecification_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.code,
      this.parameters,
      this._parameters,
      this.definingSubstanceReference,
      this.definingSubstanceCodeableConcept,
      this.amountQuantity,
      this.amountString,
      this._amountString,
      });

  factory SubstanceSpecification_Property.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Structure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept stereochemistry;
CodeableConcept opticalActivity;
String molecularFormula;
Element _molecularFormula;
String molecularFormulaByMoiety;
Element _molecularFormulaByMoiety;
List<SubstanceSpecification_Isotope> isotope;
SubstanceSpecification_MolecularWeight molecularWeight;
List<Reference> source;
List<SubstanceSpecification_Representation> representation;

SubstanceSpecification_Structure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.stereochemistry,
      this.opticalActivity,
      this.molecularFormula,
      this._molecularFormula,
      this.molecularFormulaByMoiety,
      this._molecularFormulaByMoiety,
      this.isotope,
      this.molecularWeight,
      this.source,
      this.representation,
      });

  factory SubstanceSpecification_Structure.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_StructureFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_StructureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Isotope {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
CodeableConcept name;
CodeableConcept substitution;
Quantity halfLife;
SubstanceSpecification_MolecularWeight molecularWeight;

SubstanceSpecification_Isotope(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.name,
      this.substitution,
      this.halfLife,
      this.molecularWeight,
      });

  factory SubstanceSpecification_Isotope.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_IsotopeFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_IsotopeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_MolecularWeight {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept method;
CodeableConcept type;
Quantity amount;

SubstanceSpecification_MolecularWeight(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.method,
      this.type,
      this.amount,
      });

  factory SubstanceSpecification_MolecularWeight.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_MolecularWeightFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_MolecularWeightToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Representation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String representation;
Element _representation;
Attachment attachment;

SubstanceSpecification_Representation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.representation,
      this._representation,
      this.attachment,
      });

  factory SubstanceSpecification_Representation.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RepresentationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_RepresentationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Code {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept status;
DateTime statusDate;
Element _statusDate;
String comment;
Element _comment;
List<Reference> source;

SubstanceSpecification_Code(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.status,
      this.statusDate,
      this._statusDate,
      this.comment,
      this._comment,
      this.source,
      });

  factory SubstanceSpecification_Code.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_CodeFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_CodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Name {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;
CodeableConcept status;
bool preferred;
Element _preferred;
List<CodeableConcept> language;
List<CodeableConcept> domain;
List<CodeableConcept> jurisdiction;
List<SubstanceSpecification_Name> synonym;
List<SubstanceSpecification_Name> translation;
List<SubstanceSpecification_Official> official;
List<Reference> source;

SubstanceSpecification_Name(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this.status,
      this.preferred,
      this._preferred,
      this.language,
      this.domain,
      this.jurisdiction,
      this.synonym,
      this.translation,
      this.official,
      this.source,
      });

  factory SubstanceSpecification_Name.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_NameFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Official {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept authority;
CodeableConcept status;
DateTime date;
Element _date;

SubstanceSpecification_Official(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.authority,
      this.status,
      this.date,
      this._date,
      });

  factory SubstanceSpecification_Official.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_OfficialFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_OfficialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceSpecification_Relationship {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference substanceReference;
CodeableConcept substanceCodeableConcept;
CodeableConcept relationship;
bool isDefining;
Element _isDefining;
Quantity amountQuantity;
Range amountRange;
Ratio amountRatio;
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;
Ratio amountRatioLowLimit;
CodeableConcept amountType;
List<Reference> source;

SubstanceSpecification_Relationship(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substanceReference,
      this.substanceCodeableConcept,
      this.relationship,
      this.isDefining,
      this._isDefining,
      this.amountQuantity,
      this.amountRange,
      this.amountRatio,
      this.amountString,
      this._amountString,
      this.amountRatioLowLimit,
      this.amountType,
      this.source,
      });

  factory SubstanceSpecification_Relationship.fromJson(Map<String, dynamic> json) => _$SubstanceSpecification_RelationshipFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceSpecification_RelationshipToJson(this);
}

