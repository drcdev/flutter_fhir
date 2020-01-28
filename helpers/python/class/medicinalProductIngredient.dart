part 'medicinalProductIngredient.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient {

MedicinalProductIngredient resourceType;
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
CodeableConcept role;
bool allergenicIndicator;
Element _allergenicIndicator;
List<Reference> manufacturer;
List<MedicinalProductIngredient_SpecifiedSubstance> specifiedSubstance;
MedicinalProductIngredient_Substance substance;

MedicinalProductIngredient(
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
      this.role,
      this.allergenicIndicator,
      this._allergenicIndicator,
      this.manufacturer,
      this.specifiedSubstance,
      this.substance,
      });

  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredientFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_SpecifiedSubstance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept group;
CodeableConcept confidentiality;
List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_SpecifiedSubstance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.group,
      this.confidentiality,
      this.strength,
      });

  factory MedicinalProductIngredient_SpecifiedSubstance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_SpecifiedSubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Strength {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Ratio presentation;
Ratio presentationLowLimit;
Ratio concentration;
Ratio concentrationLowLimit;
String measurementPoint;
Element _measurementPoint;
List<CodeableConcept> country;
List<MedicinalProductIngredient_ReferenceStrength> referenceStrength;

MedicinalProductIngredient_Strength(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.presentation,
      this.presentationLowLimit,
      this.concentration,
      this.concentrationLowLimit,
      this.measurementPoint,
      this._measurementPoint,
      this.country,
      this.referenceStrength,
      });

  factory MedicinalProductIngredient_Strength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_StrengthFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_StrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_ReferenceStrength {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept substance;
Ratio strength;
Ratio strengthLowLimit;
String measurementPoint;
Element _measurementPoint;
List<CodeableConcept> country;

MedicinalProductIngredient_ReferenceStrength(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substance,
      this.strength,
      this.strengthLowLimit,
      this.measurementPoint,
      this._measurementPoint,
      this.country,
      });

  factory MedicinalProductIngredient_ReferenceStrength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_ReferenceStrengthFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_ReferenceStrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient_Substance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_Substance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.strength,
      });

  factory MedicinalProductIngredient_Substance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SubstanceFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIngredient_SubstanceToJson(this);
}

