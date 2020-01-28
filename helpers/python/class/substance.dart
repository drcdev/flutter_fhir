part 'substance.g.dart';

@JsonSerializable(explicitToJson: true)
class Substance {

Substance resourceType;
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
List<Identifier> identifier;
String status; // <code> enum: active/inactive/entered-in-error;
Element _status;
List<CodeableConcept> category;
CodeableConcept code;
String description;
Element _description;
List<Substance_Instance> instance;
List<Substance_Ingredient> ingredient;

Substance(
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
      this.status,
      this._status,
      this.category,
      this.code,
      this.description,
      this._description,
      this.instance,
      this.ingredient,
      });

  factory Substance.fromJson(Map<String, dynamic> json) => _$SubstanceFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Instance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
DateTime expiry;
Element _expiry;
Quantity quantity;

Substance_Instance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.expiry,
      this._expiry,
      this.quantity,
      });

  factory Substance_Instance.fromJson(Map<String, dynamic> json) => _$Substance_InstanceFromJson(json);
  Map<String, dynamic> toJson() _$Substance_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Substance_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Ratio quantity;
CodeableConcept substanceCodeableConcept;
Reference substanceReference;

Substance_Ingredient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.substanceCodeableConcept,
      this.substanceReference,
      });

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) => _$Substance_IngredientFromJson(json);
  Map<String, dynamic> toJson() _$Substance_IngredientToJson(this);
}

