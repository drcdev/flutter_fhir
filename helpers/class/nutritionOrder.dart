import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'nutritionOrder.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder {


// This is a NutritionOrder resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Identifiers assigned to this order by the order sender or by the order receiver.
List<Identifier> identifier;

// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
//  definition that is adhered to in whole or in part by this NutritionOrder.
List<String> instantiatesCanonical;

// The URL pointing to an externally maintained protocol, guideline, orderset or
//  other definition that is adhered to in whole or in part by this NutritionOrder.
List<String> instantiatesUri;

// Extensions for instantiatesUri
List<Element> _instantiatesUri;

// The URL pointing to a protocol, guideline, orderset or other definition that is
//  adhered to in whole or in part by this NutritionOrder.
List<String> instantiates;

// Extensions for instantiates
List<Element> _instantiates;

// The workflow status of the nutrition order/request.
String status;

// Extensions for status
Element _status;

// Indicates the level of authority/intentionality associated with the NutrionOrder
//  and where the request fits into the workflow chain.
String intent;

// Extensions for intent
Element _intent;

// The person (patient) who needs the nutrition order for an oral diet, nutritional
//  supplement and/or enteral or formula feeding.
Reference patient;

// An encounter that provides additional information about the healthcare context
//  in which this request is made.
Reference encounter;

// The date and time that this nutrition order was requested.
DateTime dateTime;

// Extensions for dateTime
Element _dateTime;

// The practitioner that holds legal responsibility for ordering the diet,
//  nutritional supplement, or formula feedings.
Reference orderer;

// A link to a record of allergies or intolerances  which should be included in the
//  nutrition order.
List<Reference> allergyIntolerance;

// This modifier is used to convey order-specific modifiers about the type of food
//  that should be given. These can be derived from patient allergies,
//  intolerances, or preferences such as Halal, Vegan or Kosher. This modifier
//  applies to the entire nutrition order inclusive of the oral diet, nutritional
//  supplements and enteral formula feedings.
List<CodeableConcept> foodPreferenceModifier;

// This modifier is used to convey Order-specific modifier about the type of oral
//  food or oral fluids that should not be given. These can be derived from patient
//  allergies, intolerances, or preferences such as No Red Meat, No Soy or No Wheat
//  or  Gluten-Free.  While it should not be necessary to repeat allergy or
//  intolerance information captured in the referenced AllergyIntolerance resource
//  in the excludeFoodModifier, this element may be used to convey additional
//  specificity related to foods that should be eliminated from the patient’s diet
//  for any reason.  This modifier applies to the entire nutrition order inclusive
//  of the oral diet, nutritional supplements and enteral formula feedings.
List<CodeableConcept> excludeFoodModifier;

// Diet given orally in contrast to enteral (tube) feeding.
NutritionOrder_OralDiet oralDiet;

// Oral nutritional products given in order to add further nutritional value to the
//  patient's diet.
List<NutritionOrder_Supplement> supplement;

// Feeding provided through the gastrointestinal tract via a tube, catheter, or
//  stoma that delivers nutrition distal to the oral cavity.
NutritionOrder_EnteralFormula enteralFormula;

// Comments made about the {{title}} by the requester, performer, subject or other
//  participants.
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
    this.note
    });

  factory NutritionOrder.fromJson(Map<String, dynamic> json) => _$NutritionOrderFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_OralDiet {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The kind of diet or dietary restriction such as fiber restricted diet or
//  diabetic diet.
List<CodeableConcept> type;

// The time period and frequency at which the diet should be given.  The diet
//  should be given for the combination of all schedules if more than one schedule
//  is present.
List<Timing> schedule;

// Class that defines the quantity and type of nutrient modifications (for example
//  carbohydrate, fiber or sodium) required for the oral diet.
List<NutritionOrder_Nutrient> nutrient;

// Class that describes any texture modifications required for the patient to
//  safely consume various types of solid foods.
List<NutritionOrder_Texture> texture;

// The required consistency (e.g. honey-thick, nectar-thick, thin, thickened.) of
//  liquids or fluids served to the patient.
List<CodeableConcept> fluidConsistencyType;

// Free text or additional instructions or information pertaining to the oral diet.
String instruction;

// Extensions for instruction
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
    this._instruction
    });

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) => _$NutritionOrder_OralDietFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_OralDietToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Nutrient {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The nutrient that is being modified such as carbohydrate or sodium.
CodeableConcept modifier;

// The quantity of the specified nutrient to include in diet.
Quantity amount;

NutritionOrder_Nutrient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.amount
    });

  factory NutritionOrder_Nutrient.fromJson(Map<String, dynamic> json) => _$NutritionOrder_NutrientFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_NutrientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Texture {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Any texture modifications (for solid foods) that should be made, e.g. easy to
//  chew, chopped, ground, and pureed.
CodeableConcept modifier;

// The food type(s) (e.g. meats, all foods)  that the texture modification applies
//  to.  This could be all foods types.
CodeableConcept foodType;

NutritionOrder_Texture(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.foodType
    });

  factory NutritionOrder_Texture.fromJson(Map<String, dynamic> json) => _$NutritionOrder_TextureFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_TextureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Supplement {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The kind of nutritional supplement product required such as a high protein or
//  pediatric clear liquid supplement.
CodeableConcept type;

// The product or brand name of the nutritional supplement such as "Acme Protein
//  Shake".
String productName;

// Extensions for productName
Element _productName;

// The time period and frequency at which the supplement(s) should be given.  The
//  supplement should be given for the combination of all schedules if more than
//  one schedule is present.
List<Timing> schedule;

// The amount of the nutritional supplement to be given.
Quantity quantity;

// Free text or additional instructions or information pertaining to the oral
//  supplement.
String instruction;

// Extensions for instruction
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
    this._instruction
    });

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) => _$NutritionOrder_SupplementFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_SupplementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_EnteralFormula {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The type of enteral or infant formula such as an adult standard formula with
//  fiber or a soy-based infant formula.
CodeableConcept baseFormulaType;

// The product or brand name of the enteral or infant formula product such as "ACME
//  Adult Standard Formula".
String baseFormulaProductName;

// Extensions for baseFormulaProductName
Element _baseFormulaProductName;

// Indicates the type of modular component such as protein, carbohydrate, fat or
//  fiber to be provided in addition to or mixed with the base formula.
CodeableConcept additiveType;

// The product or brand name of the type of modular component to be added to the
//  formula.
String additiveProductName;

// Extensions for additiveProductName
Element _additiveProductName;

// The amount of energy (calories) that the formula should provide per specified
//  volume, typically per mL or fluid oz.  For example, an infant may require a
//  formula that provides 24 calories per fluid ounce or an adult may require an
//  enteral formula that provides 1.5 calorie/mL.
Quantity caloricDensity;

// The route or physiological path of administration into the patient's
//  gastrointestinal  tract for purposes of providing the formula feeding, e.g.
//  nasogastric tube.
CodeableConcept routeofAdministration;

// Formula administration instructions as structured data.  This repeating
//  structure allows for changing the administration rate or volume over time for
//  both bolus and continuous feeding.  An example of this would be an instruction
//  to increase the rate of continuous feeding every 2 hours.
List<NutritionOrder_Administration> administration;

// The maximum total quantity of formula that may be administered to a subject over
//  the period of time, e.g. 1440 mL over 24 hours.
Quantity maxVolumeToDeliver;

// Free text formula administration, feeding instructions or additional
//  instructions or information.
String administrationInstruction;

// Extensions for administrationInstruction
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
    this._administrationInstruction
    });

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) => _$NutritionOrder_EnteralFormulaFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_EnteralFormulaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Administration {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The time period and frequency at which the enteral formula should be delivered
//  to the patient.
Timing schedule;

// The volume of formula to provide to the patient per the specified administration
//  schedule.
Quantity quantity;

// The rate of administration of formula via a feeding pump, e.g. 60 mL per hour,
//  according to the specified schedule.
Quantity rateQuantity;

// The rate of administration of formula via a feeding pump, e.g. 60 mL per hour,
//  according to the specified schedule.
Ratio rateRatio;

NutritionOrder_Administration(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio
    });

  factory NutritionOrder_Administration.fromJson(Map<String, dynamic> json) => _$NutritionOrder_AdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_AdministrationToJson(this);
}

