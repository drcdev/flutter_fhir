

part 'medicinalProductIngredient.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIngredient {

  This is a MedicinalProductIngredient resource resourceType;
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
this.substance});

  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredientToJson(this);
}