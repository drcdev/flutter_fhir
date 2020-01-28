part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {

Medication resourceType;
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
CodeableConcept code;
String status;
Element _status;
Reference manufacturer;
CodeableConcept form;
Ratio amount;
List<Medication_Ingredient> ingredient;
Medication_Batch batch;

Medication(
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
      this.code,
      this.status,
      this._status,
      this.manufacturer,
      this.form,
      this.amount,
      this.ingredient,
      this.batch,
      });

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() _$MedicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medication_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept itemCodeableConcept;
Reference itemReference;
bool isActive;
Element _isActive;
Ratio strength;

Medication_Ingredient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.isActive,
      this._isActive,
      this.strength,
      });

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) => _$Medication_IngredientFromJson(json);
  Map<String, dynamic> toJson() _$Medication_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medication_Batch {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String lotNumber;
Element _lotNumber;
DateTime expirationDate;
Element _expirationDate;

Medication_Batch(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.lotNumber,
      this._lotNumber,
      this.expirationDate,
      this._expirationDate,
      });

  factory Medication_Batch.fromJson(Map<String, dynamic> json) => _$Medication_BatchFromJson(json);
  Map<String, dynamic> toJson() _$Medication_BatchToJson(this);
}

