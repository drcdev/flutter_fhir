import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 445)
class NutritionOrder {

  //  This is a NutritionOrder resource
  @HiveField(0)
  final String resourceType= 'NutritionOrder';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Identifiers assigned to this order by the order sender or by the order
  // receiver.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this
  // NutritionOrder.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this NutritionOrder.
  @HiveField(13)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  List<Element> elementInstantiatesUri;

  //  The URL pointing to a protocol, guideline, orderset or other
  // definition that is adhered to in whole or in part by this
  // NutritionOrder.
  @HiveField(15)
  List<String> instantiates;

  //  Extensions for instantiates
  @HiveField(16)
  List<Element> elementInstantiates;

  //  The workflow status of the nutrition order/request.
  @HiveField(17)
  String status;

  //  Extensions for status
  @HiveField(18)
  Element elementStatus;

  //  Indicates the level of authority/intentionality associated with the
  // NutrionOrder and where the request fits into the workflow chain.
  @HiveField(19)
  String intent;

  //  Extensions for intent
  @HiveField(20)
  Element elementIntent;

  //  The person (patient) who needs the nutrition order for an oral diet,
  // nutritional supplement and/or enteral or formula feeding.
  @HiveField(21)
  Reference patient;

  //  An encounter that provides additional information about the healthcare
  // context in which this request is made.
  @HiveField(22)
  Reference encounter;

  //  The date and time that this nutrition order was requested.
  @HiveField(23)
  DateTime dateTime;

  //  Extensions for dateTime
  @HiveField(24)
  Element elementDateTime;

  //  The practitioner that holds legal responsibility for ordering the
  // diet, nutritional supplement, or formula feedings.
  @HiveField(25)
  Reference orderer;

  //  A link to a record of allergies or intolerances  which should be
  // included in the nutrition order.
  @HiveField(26)
  List<Reference> allergyIntolerance;

  //  This modifier is used to convey order-specific modifiers about the
  // type of food that should be given. These can be derived from patient
  // allergies, intolerances, or preferences such as Halal, Vegan or Kosher.
  // This modifier applies to the entire nutrition order inclusive of the
  // oral diet, nutritional supplements and enteral formula feedings.
  @HiveField(27)
  List<CodeableConcept> foodPreferenceModifier;

  //  This modifier is used to convey Order-specific modifier about the type
  // of oral food or oral fluids that should not be given. These can be
  // derived from patient allergies, intolerances, or preferences such as No
  // Red Meat, No Soy or No Wheat or  Gluten-Free.  While it should not be
  // necessary to repeat allergy or intolerance information captured in the
  // referenced AllergyIntolerance resource in the excludeFoodModifier, this
  // element may be used to convey additional specificity related to foods
  // that should be eliminated from the patient’s diet for any reason.  This
  // modifier applies to the entire nutrition order inclusive of the oral
  // diet, nutritional supplements and enteral formula feedings.
  @HiveField(28)
  List<CodeableConcept> excludeFoodModifier;

  //  Diet given orally in contrast to enteral (tube) feeding.
  @HiveField(29)
  NutritionOrder_OralDiet oralDiet;

  //  Oral nutritional products given in order to add further nutritional
  // value to the patient's diet.
  @HiveField(30)
  List<NutritionOrder_Supplement> supplement;

  //  Feeding provided through the gastrointestinal tract via a tube,
  // catheter, or stoma that delivers nutrition distal to the oral cavity.
  @HiveField(31)
  NutritionOrder_EnteralFormula enteralFormula;

  //  Comments made about the {{title}} by the requester, performer, subject
  // or other participants.
  @HiveField(32)
  List<Annotation> note;

NutritionOrder(
  this.patient,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.instantiates,
    this.elementInstantiates,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.encounter,
    this.dateTime,
    this.elementDateTime,
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The kind of diet or dietary restriction such as fiber restricted diet
  // or diabetic diet.
  List<CodeableConcept> type;

  //  The time period and frequency at which the diet should be given.  The
  // diet should be given for the combination of all schedules if more than
  // one schedule is present.
  List<Timing> schedule;

  //  Class that defines the quantity and type of nutrient modifications
  // (for example carbohydrate, fiber or sodium) required for the oral diet.
  List<NutritionOrder_Nutrient> nutrient;

  //  Class that describes any texture modifications required for the
  // patient to safely consume various types of solid foods.
  List<NutritionOrder_Texture> texture;

  //  The required consistency (e.g. honey-thick, nectar-thick, thin,
  // thickened.) of liquids or fluids served to the patient.
  List<CodeableConcept> fluidConsistencyType;

  //  Free text or additional instructions or information pertaining to the
  // oral diet.
  String instruction;

  //  Extensions for instruction
  Element elementInstruction;

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
    this.elementInstruction
    });

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) => _$NutritionOrder_OralDietFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_OralDietToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Nutrient {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The nutrient that is being modified such as carbohydrate or sodium.
  CodeableConcept modifier;

  //  The quantity of the specified nutrient to include in diet.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Any texture modifications (for solid foods) that should be made, e.g.
  // easy to chew, chopped, ground, and pureed.
  CodeableConcept modifier;

  //  The food type(s) (e.g. meats, all foods)  that the texture
  // modification applies to.  This could be all foods types.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The kind of nutritional supplement product required such as a high
  // protein or pediatric clear liquid supplement.
  CodeableConcept type;

  //  The product or brand name of the nutritional supplement such as "Acme
  // Protein Shake".
  String productName;

  //  Extensions for productName
  Element elementProductName;

  //  The time period and frequency at which the supplement(s) should be
  // given.  The supplement should be given for the combination of all
  // schedules if more than one schedule is present.
  List<Timing> schedule;

  //  The amount of the nutritional supplement to be given.
  Quantity quantity;

  //  Free text or additional instructions or information pertaining to the
  // oral supplement.
  String instruction;

  //  Extensions for instruction
  Element elementInstruction;

NutritionOrder_Supplement(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.productName,
    this.elementProductName,
    this.schedule,
    this.quantity,
    this.instruction,
    this.elementInstruction
    });

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) => _$NutritionOrder_SupplementFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_SupplementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_EnteralFormula {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The type of enteral or infant formula such as an adult standard
  // formula with fiber or a soy-based infant formula.
  CodeableConcept baseFormulaType;

  //  The product or brand name of the enteral or infant formula product
  // such as "ACME Adult Standard Formula".
  String baseFormulaProductName;

  //  Extensions for baseFormulaProductName
  Element elementBaseFormulaProductName;

  //  Indicates the type of modular component such as protein, carbohydrate,
  // fat or fiber to be provided in addition to or mixed with the base
  // formula.
  CodeableConcept additiveType;

  //  The product or brand name of the type of modular component to be added
  // to the formula.
  String additiveProductName;

  //  Extensions for additiveProductName
  Element elementAdditiveProductName;

  //  The amount of energy (calories) that the formula should provide per
  // specified volume, typically per mL or fluid oz.  For example, an infant
  // may require a formula that provides 24 calories per fluid ounce or an
  // adult may require an enteral formula that provides 1.5 calorie/mL.
  Quantity caloricDensity;

  //  The route or physiological path of administration into the patient's
  // gastrointestinal  tract for purposes of providing the formula feeding,
  // e.g. nasogastric tube.
  CodeableConcept routeofAdministration;

  //  Formula administration instructions as structured data.  This
  // repeating structure allows for changing the administration rate or
  // volume over time for both bolus and continuous feeding.  An example of
  // this would be an instruction to increase the rate of continuous feeding
  // every 2 hours.
  List<NutritionOrder_Administration> administration;

  //  The maximum total quantity of formula that may be administered to a
  // subject over the period of time, e.g. 1440 mL over 24 hours.
  Quantity maxVolumeToDeliver;

  //  Free text formula administration, feeding instructions or additional
  // instructions or information.
  String administrationInstruction;

  //  Extensions for administrationInstruction
  Element elementAdministrationInstruction;

NutritionOrder_EnteralFormula(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.elementBaseFormulaProductName,
    this.additiveType,
    this.additiveProductName,
    this.elementAdditiveProductName,
    this.caloricDensity,
    this.routeofAdministration,
    this.administration,
    this.maxVolumeToDeliver,
    this.administrationInstruction,
    this.elementAdministrationInstruction
    });

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) => _$NutritionOrder_EnteralFormulaFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_EnteralFormulaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Administration {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The time period and frequency at which the enteral formula should be
  // delivered to the patient.
  Timing schedule;

  //  The volume of formula to provide to the patient per the specified
  // administration schedule.
  Quantity quantity;

  //  The rate of administration of formula via a feeding pump, e.g. 60 mL
  // per hour, according to the specified schedule.
  Quantity rateQuantity;

  //  The rate of administration of formula via a feeding pump, e.g. 60 mL
  // per hour, according to the specified schedule.
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutritionOrderAdapter extends TypeAdapter<NutritionOrder> {
  @override
  final typeId = 445;

  @override
  NutritionOrder read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder(
      fields[21] as Reference,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      instantiates: (fields[15] as List)?.cast<String>(),
      elementInstantiates: (fields[16] as List)?.cast<Element>(),
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      intent: fields[19] as String,
      elementIntent: fields[20] as Element,
      encounter: fields[22] as Reference,
      dateTime: fields[23] as DateTime,
      elementDateTime: fields[24] as Element,
      orderer: fields[25] as Reference,
      allergyIntolerance: (fields[26] as List)?.cast<Reference>(),
      foodPreferenceModifier: (fields[27] as List)?.cast<CodeableConcept>(),
      excludeFoodModifier: (fields[28] as List)?.cast<CodeableConcept>(),
      oralDiet: fields[29] as NutritionOrder_OralDiet,
      supplement: (fields[30] as List)?.cast<NutritionOrder_Supplement>(),
      enteralFormula: fields[31] as NutritionOrder_EnteralFormula,
      note: (fields[32] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder obj) {
    writer
      ..writeByte(33)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.instantiates)
      ..writeByte(16)
      ..write(obj.elementInstantiates)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.intent)
      ..writeByte(20)
      ..write(obj.elementIntent)
      ..writeByte(21)
      ..write(obj.patient)
      ..writeByte(22)
      ..write(obj.encounter)
      ..writeByte(23)
      ..write(obj.dateTime)
      ..writeByte(24)
      ..write(obj.elementDateTime)
      ..writeByte(25)
      ..write(obj.orderer)
      ..writeByte(26)
      ..write(obj.allergyIntolerance)
      ..writeByte(27)
      ..write(obj.foodPreferenceModifier)
      ..writeByte(28)
      ..write(obj.excludeFoodModifier)
      ..writeByte(29)
      ..write(obj.oralDiet)
      ..writeByte(30)
      ..write(obj.supplement)
      ..writeByte(31)
      ..write(obj.enteralFormula)
      ..writeByte(32)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionOrder _$NutritionOrderFromJson(Map<String, dynamic> json) {
  return NutritionOrder(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiates:
        (json['instantiates'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiates: (json['elementInstantiates'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
    elementDateTime: json['elementDateTime'] == null
        ? null
        : Element.fromJson(json['elementDateTime'] as Map<String, dynamic>),
    orderer: json['orderer'] == null
        ? null
        : Reference.fromJson(json['orderer'] as Map<String, dynamic>),
    allergyIntolerance: (json['allergyIntolerance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    foodPreferenceModifier: (json['foodPreferenceModifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    excludeFoodModifier: (json['excludeFoodModifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    oralDiet: json['oralDiet'] == null
        ? null
        : NutritionOrder_OralDiet.fromJson(
            json['oralDiet'] as Map<String, dynamic>),
    supplement: (json['supplement'] as List)
        ?.map((e) => e == null
            ? null
            : NutritionOrder_Supplement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    enteralFormula: json['enteralFormula'] == null
        ? null
        : NutritionOrder_EnteralFormula.fromJson(
            json['enteralFormula'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NutritionOrderToJson(NutritionOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'instantiates': instance.instantiates,
      'elementInstantiates':
          instance.elementInstantiates?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'dateTime': instance.dateTime?.toIso8601String(),
      'elementDateTime': instance.elementDateTime?.toJson(),
      'orderer': instance.orderer?.toJson(),
      'allergyIntolerance':
          instance.allergyIntolerance?.map((e) => e?.toJson())?.toList(),
      'foodPreferenceModifier':
          instance.foodPreferenceModifier?.map((e) => e?.toJson())?.toList(),
      'excludeFoodModifier':
          instance.excludeFoodModifier?.map((e) => e?.toJson())?.toList(),
      'oralDiet': instance.oralDiet?.toJson(),
      'supplement': instance.supplement?.map((e) => e?.toJson())?.toList(),
      'enteralFormula': instance.enteralFormula?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

NutritionOrder_OralDiet _$NutritionOrder_OralDietFromJson(
    Map<String, dynamic> json) {
  return NutritionOrder_OralDiet(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    schedule: (json['schedule'] as List)
        ?.map((e) =>
            e == null ? null : Timing.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nutrient: (json['nutrient'] as List)
        ?.map((e) => e == null
            ? null
            : NutritionOrder_Nutrient.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    texture: (json['texture'] as List)
        ?.map((e) => e == null
            ? null
            : NutritionOrder_Texture.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fluidConsistencyType: (json['fluidConsistencyType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instruction: json['instruction'] as String,
    elementInstruction: json['elementInstruction'] == null
        ? null
        : Element.fromJson(json['elementInstruction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionOrder_OralDietToJson(
        NutritionOrder_OralDiet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'schedule': instance.schedule?.map((e) => e?.toJson())?.toList(),
      'nutrient': instance.nutrient?.map((e) => e?.toJson())?.toList(),
      'texture': instance.texture?.map((e) => e?.toJson())?.toList(),
      'fluidConsistencyType':
          instance.fluidConsistencyType?.map((e) => e?.toJson())?.toList(),
      'instruction': instance.instruction,
      'elementInstruction': instance.elementInstruction?.toJson(),
    };

NutritionOrder_Nutrient _$NutritionOrder_NutrientFromJson(
    Map<String, dynamic> json) {
  return NutritionOrder_Nutrient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: json['modifier'] == null
        ? null
        : CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionOrder_NutrientToJson(
        NutritionOrder_Nutrient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'modifier': instance.modifier?.toJson(),
      'amount': instance.amount?.toJson(),
    };

NutritionOrder_Texture _$NutritionOrder_TextureFromJson(
    Map<String, dynamic> json) {
  return NutritionOrder_Texture(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: json['modifier'] == null
        ? null
        : CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>),
    foodType: json['foodType'] == null
        ? null
        : CodeableConcept.fromJson(json['foodType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionOrder_TextureToJson(
        NutritionOrder_Texture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'modifier': instance.modifier?.toJson(),
      'foodType': instance.foodType?.toJson(),
    };

NutritionOrder_Supplement _$NutritionOrder_SupplementFromJson(
    Map<String, dynamic> json) {
  return NutritionOrder_Supplement(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    productName: json['productName'] as String,
    elementProductName: json['elementProductName'] == null
        ? null
        : Element.fromJson(json['elementProductName'] as Map<String, dynamic>),
    schedule: (json['schedule'] as List)
        ?.map((e) =>
            e == null ? null : Timing.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    instruction: json['instruction'] as String,
    elementInstruction: json['elementInstruction'] == null
        ? null
        : Element.fromJson(json['elementInstruction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionOrder_SupplementToJson(
        NutritionOrder_Supplement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'productName': instance.productName,
      'elementProductName': instance.elementProductName?.toJson(),
      'schedule': instance.schedule?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'instruction': instance.instruction,
      'elementInstruction': instance.elementInstruction?.toJson(),
    };

NutritionOrder_EnteralFormula _$NutritionOrder_EnteralFormulaFromJson(
    Map<String, dynamic> json) {
  return NutritionOrder_EnteralFormula(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    baseFormulaType: json['baseFormulaType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['baseFormulaType'] as Map<String, dynamic>),
    baseFormulaProductName: json['baseFormulaProductName'] as String,
    elementBaseFormulaProductName: json['elementBaseFormulaProductName'] == null
        ? null
        : Element.fromJson(
            json['elementBaseFormulaProductName'] as Map<String, dynamic>),
    additiveType: json['additiveType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveType'] as Map<String, dynamic>),
    additiveProductName: json['additiveProductName'] as String,
    elementAdditiveProductName: json['elementAdditiveProductName'] == null
        ? null
        : Element.fromJson(
            json['elementAdditiveProductName'] as Map<String, dynamic>),
    caloricDensity: json['caloricDensity'] == null
        ? null
        : Quantity.fromJson(json['caloricDensity'] as Map<String, dynamic>),
    routeofAdministration: json['routeofAdministration'] == null
        ? null
        : CodeableConcept.fromJson(
            json['routeofAdministration'] as Map<String, dynamic>),
    administration: (json['administration'] as List)
        ?.map((e) => e == null
            ? null
            : NutritionOrder_Administration.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maxVolumeToDeliver: json['maxVolumeToDeliver'] == null
        ? null
        : Quantity.fromJson(json['maxVolumeToDeliver'] as Map<String, dynamic>),
    administrationInstruction: json['administrationInstruction'] as String,
    elementAdministrationInstruction:
        json['elementAdministrationInstruction'] == null
            ? null
            : Element.fromJson(json['elementAdministrationInstruction']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionOrder_EnteralFormulaToJson(
        NutritionOrder_EnteralFormula instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'baseFormulaType': instance.baseFormulaType?.toJson(),
      'baseFormulaProductName': instance.baseFormulaProductName,
      'elementBaseFormulaProductName':
          instance.elementBaseFormulaProductName?.toJson(),
      'additiveType': instance.additiveType?.toJson(),
      'additiveProductName': instance.additiveProductName,
      'elementAdditiveProductName':
          instance.elementAdditiveProductName?.toJson(),
      'caloricDensity': instance.caloricDensity?.toJson(),
      'routeofAdministration': instance.routeofAdministration?.toJson(),
      'administration':
          instance.administration?.map((e) => e?.toJson())?.toList(),
      'maxVolumeToDeliver': instance.maxVolumeToDeliver?.toJson(),
      'administrationInstruction': instance.administrationInstruction,
      'elementAdministrationInstruction':
          instance.elementAdministrationInstruction?.toJson(),
    };

NutritionOrder_Administration _$NutritionOrder_AdministrationFromJson(
    Map<String, dynamic> json) {
  return NutritionOrder_Administration(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    schedule: json['schedule'] == null
        ? null
        : Timing.fromJson(json['schedule'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    rateQuantity: json['rateQuantity'] == null
        ? null
        : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
    rateRatio: json['rateRatio'] == null
        ? null
        : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionOrder_AdministrationToJson(
        NutritionOrder_Administration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'schedule': instance.schedule?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'rateQuantity': instance.rateQuantity?.toJson(),
      'rateRatio': instance.rateRatio?.toJson(),
    };
