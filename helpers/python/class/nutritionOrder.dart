part 'nutritionOrder.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder {

NutritionOrder resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<String> instantiates;
List<Element> _instantiates;
String status;
Element _status;
String intent;
Element _intent;
Reference patient;
Reference encounter;
DateTime dateTime;
Element _dateTime;
Reference orderer;
List<Reference> allergyIntolerance;
List<CodeableConcept> foodPreferenceModifier;
List<CodeableConcept> excludeFoodModifier;
NutritionOrder_OralDiet oralDiet;
List<NutritionOrder_Supplement> supplement;
NutritionOrder_EnteralFormula enteralFormula;
List<Annotation> note;

NutritionOrder(
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
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.instantiates,
      this._instantiates,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.patient,
      this.encounter,
      this.dateTime,
      this._dateTime,
      this.orderer,
      this.allergyIntolerance,
      this.foodPreferenceModifier,
      this.excludeFoodModifier,
      this.oralDiet,
      this.supplement,
      this.enteralFormula,
      this.note,
      });

  factory NutritionOrder.fromJson(Map<String, dynamic> json) => _$NutritionOrderFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_OralDiet {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> type;
List<Timing> schedule;
List<NutritionOrder_Nutrient> nutrient;
List<NutritionOrder_Texture> texture;
List<CodeableConcept> fluidConsistencyType;
String instruction;
Element _instruction;

NutritionOrder_OralDiet(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.schedule,
      this.nutrient,
      this.texture,
      this.fluidConsistencyType,
      this.instruction,
      this._instruction,
      });

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) => _$NutritionOrder_OralDietFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_OralDietToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Nutrient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept modifier;
Quantity amount;

NutritionOrder_Nutrient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.modifier,
      this.amount,
      });

  factory NutritionOrder_Nutrient.fromJson(Map<String, dynamic> json) => _$NutritionOrder_NutrientFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_NutrientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Texture {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept modifier;
CodeableConcept foodType;

NutritionOrder_Texture(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.modifier,
      this.foodType,
      });

  factory NutritionOrder_Texture.fromJson(Map<String, dynamic> json) => _$NutritionOrder_TextureFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_TextureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Supplement {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String productName;
Element _productName;
List<Timing> schedule;
Quantity quantity;
String instruction;
Element _instruction;

NutritionOrder_Supplement(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.productName,
      this._productName,
      this.schedule,
      this.quantity,
      this.instruction,
      this._instruction,
      });

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) => _$NutritionOrder_SupplementFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_SupplementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_EnteralFormula {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept baseFormulaType;
String baseFormulaProductName;
Element _baseFormulaProductName;
CodeableConcept additiveType;
String additiveProductName;
Element _additiveProductName;
Quantity caloricDensity;
CodeableConcept routeofAdministration;
List<NutritionOrder_Administration> administration;
Quantity maxVolumeToDeliver;
String administrationInstruction;
Element _administrationInstruction;

NutritionOrder_EnteralFormula(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.baseFormulaType,
      this.baseFormulaProductName,
      this._baseFormulaProductName,
      this.additiveType,
      this.additiveProductName,
      this._additiveProductName,
      this.caloricDensity,
      this.routeofAdministration,
      this.administration,
      this.maxVolumeToDeliver,
      this.administrationInstruction,
      this._administrationInstruction,
      });

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) => _$NutritionOrder_EnteralFormulaFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_EnteralFormulaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Administration {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Timing schedule;
Quantity quantity;
Quantity rateQuantity;
Ratio rateRatio;

NutritionOrder_Administration(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.schedule,
      this.quantity,
      this.rateQuantity,
      this.rateRatio,
      });

  factory NutritionOrder_Administration.fromJson(Map<String, dynamic> json) => _$NutritionOrder_AdministrationFromJson(json);
  Map<String, dynamic> toJson() _$NutritionOrder_AdministrationToJson(this);
}

