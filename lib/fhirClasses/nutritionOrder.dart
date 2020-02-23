import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class NutritionOrder {
  static Future<NutritionOrder> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    List<String> instantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    List<String> instantiates,
    List<Element> elementInstantiates,
    String status,
    Element elementStatus,
    String intent,
    Element elementIntent,
    Reference patient,
    Reference encounter,
    DateTime dateTime,
    Element elementDateTime,
    Reference orderer,
    List<Reference> allergyIntolerance,
    List<CodeableConcept> foodPreferenceModifier,
    List<CodeableConcept> excludeFoodModifier,
    NutritionOrder_OralDiet oralDiet,
    List<NutritionOrder_Supplement> supplement,
    NutritionOrder_EnteralFormula enteralFormula,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder newNutritionOrder = new NutritionOrder(
      resourceType: 'NutritionOrder',
      id: id ?? await fhirDb.newResourceId('NutritionOrder'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      instantiates: instantiates,
      elementInstantiates: elementInstantiates,
      status: status,
      elementStatus: elementStatus,
      intent: intent,
      elementIntent: elementIntent,
      patient: patient,
      encounter: encounter,
      dateTime: dateTime,
      elementDateTime: elementDateTime,
      orderer: orderer,
      allergyIntolerance: allergyIntolerance,
      foodPreferenceModifier: foodPreferenceModifier,
      excludeFoodModifier: excludeFoodModifier,
      oralDiet: oralDiet,
      supplement: supplement,
      enteralFormula: enteralFormula,
      note: note,
    );
    newNutritionOrder.meta.createdAt = DateTime.now();
    newNutritionOrder.meta.lastUpdated = newNutritionOrder.meta.createdAt;
    int saved = await fhirDb.saveResource(newNutritionOrder);
    return newNutritionOrder;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'NutritionOrder';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  List<String> instantiatesCanonical;
  @HiveField(13)
  List<String> instantiatesUri;
  @HiveField(14)
  List<Element> elementInstantiatesUri;
  @HiveField(15)
  List<String> instantiates;
  @HiveField(16)
  List<Element> elementInstantiates;
  @HiveField(17)
  String status;
  @HiveField(18)
  Element elementStatus;
  @HiveField(19)
  String intent;
  @HiveField(20)
  Element elementIntent;
  @HiveField(21)
  Reference patient;
  @HiveField(22)
  Reference encounter;
  @HiveField(23)
  DateTime dateTime;
  @HiveField(24)
  Element elementDateTime;
  @HiveField(25)
  Reference orderer;
  @HiveField(26)
  List<Reference> allergyIntolerance;
  @HiveField(27)
  List<CodeableConcept> foodPreferenceModifier;
  @HiveField(28)
  List<CodeableConcept> excludeFoodModifier;
  @HiveField(29)
  NutritionOrder_OralDiet oralDiet;
  @HiveField(30)
  List<NutritionOrder_Supplement> supplement;
  @HiveField(31)
  NutritionOrder_EnteralFormula enteralFormula;
  @HiveField(32)
  List<Annotation> note;

  NutritionOrder({
    @required this.resourceType,
    this.id,
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
    @required this.patient,
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
    this.note,
  });

  factory NutritionOrder.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrderFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrderToJson(this);
}

class NutritionOrder_OralDiet {
  static Future<NutritionOrder_OralDiet> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> type,
    List<Timing> schedule,
    List<NutritionOrder_Nutrient> nutrient,
    List<NutritionOrder_Texture> texture,
    List<CodeableConcept> fluidConsistencyType,
    String instruction,
    Element elementInstruction,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder_OralDiet newNutritionOrder_OralDiet =
        new NutritionOrder_OralDiet(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      schedule: schedule,
      nutrient: nutrient,
      texture: texture,
      fluidConsistencyType: fluidConsistencyType,
      instruction: instruction,
      elementInstruction: elementInstruction,
    );
    return newNutritionOrder_OralDiet;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<CodeableConcept> type;
  @HiveField(4)
  List<Timing> schedule;
  @HiveField(5)
  List<NutritionOrder_Nutrient> nutrient;
  @HiveField(6)
  List<NutritionOrder_Texture> texture;
  @HiveField(7)
  List<CodeableConcept> fluidConsistencyType;
  @HiveField(8)
  String instruction;
  @HiveField(9)
  Element elementInstruction;

  NutritionOrder_OralDiet({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    this.elementInstruction,
  });

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_OralDietFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_OralDietToJson(this);
}

class NutritionOrder_Nutrient {
  static Future<NutritionOrder_Nutrient> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept modifier,
    Quantity amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder_Nutrient newNutritionOrder_Nutrient =
        new NutritionOrder_Nutrient(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      modifier: modifier,
      amount: amount,
    );
    return newNutritionOrder_Nutrient;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept modifier;
  @HiveField(4)
  Quantity amount;

  NutritionOrder_Nutrient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.amount,
  });

  factory NutritionOrder_Nutrient.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_NutrientFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_NutrientToJson(this);
}

class NutritionOrder_Texture {
  static Future<NutritionOrder_Texture> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept modifier,
    CodeableConcept foodType,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder_Texture newNutritionOrder_Texture =
        new NutritionOrder_Texture(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      modifier: modifier,
      foodType: foodType,
    );
    return newNutritionOrder_Texture;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept modifier;
  @HiveField(4)
  CodeableConcept foodType;

  NutritionOrder_Texture({
    this.id,
    this.extension,
    this.modifierExtension,
    this.modifier,
    this.foodType,
  });

  factory NutritionOrder_Texture.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_TextureFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_TextureToJson(this);
}

class NutritionOrder_Supplement {
  static Future<NutritionOrder_Supplement> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String productName,
    Element elementProductName,
    List<Timing> schedule,
    Quantity quantity,
    String instruction,
    Element elementInstruction,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder_Supplement newNutritionOrder_Supplement =
        new NutritionOrder_Supplement(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      productName: productName,
      elementProductName: elementProductName,
      schedule: schedule,
      quantity: quantity,
      instruction: instruction,
      elementInstruction: elementInstruction,
    );
    return newNutritionOrder_Supplement;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  String productName;
  @HiveField(5)
  Element elementProductName;
  @HiveField(6)
  List<Timing> schedule;
  @HiveField(7)
  Quantity quantity;
  @HiveField(8)
  String instruction;
  @HiveField(9)
  Element elementInstruction;

  NutritionOrder_Supplement({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.productName,
    this.elementProductName,
    this.schedule,
    this.quantity,
    this.instruction,
    this.elementInstruction,
  });

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_SupplementFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_SupplementToJson(this);
}

class NutritionOrder_EnteralFormula {
  static Future<NutritionOrder_EnteralFormula> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept baseFormulaType,
    String baseFormulaProductName,
    Element elementBaseFormulaProductName,
    CodeableConcept additiveType,
    String additiveProductName,
    Element elementAdditiveProductName,
    Quantity caloricDensity,
    CodeableConcept routeofAdministration,
    List<NutritionOrder_Administration> administration,
    Quantity maxVolumeToDeliver,
    String administrationInstruction,
    Element elementAdministrationInstruction,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder_EnteralFormula newNutritionOrder_EnteralFormula =
        new NutritionOrder_EnteralFormula(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      baseFormulaType: baseFormulaType,
      baseFormulaProductName: baseFormulaProductName,
      elementBaseFormulaProductName: elementBaseFormulaProductName,
      additiveType: additiveType,
      additiveProductName: additiveProductName,
      elementAdditiveProductName: elementAdditiveProductName,
      caloricDensity: caloricDensity,
      routeofAdministration: routeofAdministration,
      administration: administration,
      maxVolumeToDeliver: maxVolumeToDeliver,
      administrationInstruction: administrationInstruction,
      elementAdministrationInstruction: elementAdministrationInstruction,
    );
    return newNutritionOrder_EnteralFormula;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept baseFormulaType;
  @HiveField(4)
  String baseFormulaProductName;
  @HiveField(5)
  Element elementBaseFormulaProductName;
  @HiveField(6)
  CodeableConcept additiveType;
  @HiveField(7)
  String additiveProductName;
  @HiveField(8)
  Element elementAdditiveProductName;
  @HiveField(9)
  Quantity caloricDensity;
  @HiveField(10)
  CodeableConcept routeofAdministration;
  @HiveField(11)
  List<NutritionOrder_Administration> administration;
  @HiveField(12)
  Quantity maxVolumeToDeliver;
  @HiveField(13)
  String administrationInstruction;
  @HiveField(14)
  Element elementAdministrationInstruction;

  NutritionOrder_EnteralFormula({
    this.id,
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
    this.elementAdministrationInstruction,
  });

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_EnteralFormulaFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_EnteralFormulaToJson(this);
}

class NutritionOrder_Administration {
  static Future<NutritionOrder_Administration> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Timing schedule,
    Quantity quantity,
    Quantity rateQuantity,
    Ratio rateRatio,
  }) async {
    var fhirDb = new DatabaseHelper();
    NutritionOrder_Administration newNutritionOrder_Administration =
        new NutritionOrder_Administration(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      schedule: schedule,
      quantity: quantity,
      rateQuantity: rateQuantity,
      rateRatio: rateRatio,
    );
    return newNutritionOrder_Administration;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Timing schedule;
  @HiveField(4)
  Quantity quantity;
  @HiveField(5)
  Quantity rateQuantity;
  @HiveField(6)
  Ratio rateRatio;

  NutritionOrder_Administration({
    this.id,
    this.extension,
    this.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
  });

  factory NutritionOrder_Administration.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_AdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_AdministrationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionOrder _$NutritionOrderFromJson(Map<String, dynamic> json) {
  return NutritionOrder(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
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

Map<String, dynamic> _$NutritionOrderToJson(NutritionOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiates', instance.instantiates);
  writeNotNull('elementInstantiates',
      instance.elementInstantiates?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('intent', instance.intent);
  writeNotNull('elementIntent', instance.elementIntent?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('dateTime', instance.dateTime?.toIso8601String());
  writeNotNull('elementDateTime', instance.elementDateTime?.toJson());
  writeNotNull('orderer', instance.orderer?.toJson());
  writeNotNull('allergyIntolerance',
      instance.allergyIntolerance?.map((e) => e?.toJson())?.toList());
  writeNotNull('foodPreferenceModifier',
      instance.foodPreferenceModifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('excludeFoodModifier',
      instance.excludeFoodModifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('oralDiet', instance.oralDiet?.toJson());
  writeNotNull(
      'supplement', instance.supplement?.map((e) => e?.toJson())?.toList());
  writeNotNull('enteralFormula', instance.enteralFormula?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    NutritionOrder_OralDiet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'schedule', instance.schedule?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'nutrient', instance.nutrient?.map((e) => e?.toJson())?.toList());
  writeNotNull('texture', instance.texture?.map((e) => e?.toJson())?.toList());
  writeNotNull('fluidConsistencyType',
      instance.fluidConsistencyType?.map((e) => e?.toJson())?.toList());
  writeNotNull('instruction', instance.instruction);
  writeNotNull('elementInstruction', instance.elementInstruction?.toJson());
  return val;
}

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
    NutritionOrder_Nutrient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifier', instance.modifier?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

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
    NutritionOrder_Texture instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifier', instance.modifier?.toJson());
  writeNotNull('foodType', instance.foodType?.toJson());
  return val;
}

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
    NutritionOrder_Supplement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('productName', instance.productName);
  writeNotNull('elementProductName', instance.elementProductName?.toJson());
  writeNotNull(
      'schedule', instance.schedule?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('instruction', instance.instruction);
  writeNotNull('elementInstruction', instance.elementInstruction?.toJson());
  return val;
}

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
    NutritionOrder_EnteralFormula instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('baseFormulaType', instance.baseFormulaType?.toJson());
  writeNotNull('baseFormulaProductName', instance.baseFormulaProductName);
  writeNotNull('elementBaseFormulaProductName',
      instance.elementBaseFormulaProductName?.toJson());
  writeNotNull('additiveType', instance.additiveType?.toJson());
  writeNotNull('additiveProductName', instance.additiveProductName);
  writeNotNull('elementAdditiveProductName',
      instance.elementAdditiveProductName?.toJson());
  writeNotNull('caloricDensity', instance.caloricDensity?.toJson());
  writeNotNull(
      'routeofAdministration', instance.routeofAdministration?.toJson());
  writeNotNull('administration',
      instance.administration?.map((e) => e?.toJson())?.toList());
  writeNotNull('maxVolumeToDeliver', instance.maxVolumeToDeliver?.toJson());
  writeNotNull('administrationInstruction', instance.administrationInstruction);
  writeNotNull('elementAdministrationInstruction',
      instance.elementAdministrationInstruction?.toJson());
  return val;
}

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
    NutritionOrder_Administration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('schedule', instance.schedule?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('rateQuantity', instance.rateQuantity?.toJson());
  writeNotNull('rateRatio', instance.rateRatio?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutritionOrderAdapter extends TypeAdapter<NutritionOrder> {
  @override
  NutritionOrder read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder(
      resourceType: fields[0] as String,
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
      patient: fields[21] as Reference,
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

class NutritionOrder_OralDietAdapter
    extends TypeAdapter<NutritionOrder_OralDiet> {
  @override
  NutritionOrder_OralDiet read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder_OralDiet(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: (fields[3] as List)?.cast<CodeableConcept>(),
      schedule: (fields[4] as List)?.cast<Timing>(),
      nutrient: (fields[5] as List)?.cast<NutritionOrder_Nutrient>(),
      texture: (fields[6] as List)?.cast<NutritionOrder_Texture>(),
      fluidConsistencyType: (fields[7] as List)?.cast<CodeableConcept>(),
      instruction: fields[8] as String,
      elementInstruction: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder_OralDiet obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.schedule)
      ..writeByte(5)
      ..write(obj.nutrient)
      ..writeByte(6)
      ..write(obj.texture)
      ..writeByte(7)
      ..write(obj.fluidConsistencyType)
      ..writeByte(8)
      ..write(obj.instruction)
      ..writeByte(9)
      ..write(obj.elementInstruction);
  }
}

class NutritionOrder_NutrientAdapter
    extends TypeAdapter<NutritionOrder_Nutrient> {
  @override
  NutritionOrder_Nutrient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder_Nutrient(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      modifier: fields[3] as CodeableConcept,
      amount: fields[4] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder_Nutrient obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.modifier)
      ..writeByte(4)
      ..write(obj.amount);
  }
}

class NutritionOrder_TextureAdapter
    extends TypeAdapter<NutritionOrder_Texture> {
  @override
  NutritionOrder_Texture read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder_Texture(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      modifier: fields[3] as CodeableConcept,
      foodType: fields[4] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder_Texture obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.modifier)
      ..writeByte(4)
      ..write(obj.foodType);
  }
}

class NutritionOrder_SupplementAdapter
    extends TypeAdapter<NutritionOrder_Supplement> {
  @override
  NutritionOrder_Supplement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder_Supplement(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      productName: fields[4] as String,
      elementProductName: fields[5] as Element,
      schedule: (fields[6] as List)?.cast<Timing>(),
      quantity: fields[7] as Quantity,
      instruction: fields[8] as String,
      elementInstruction: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder_Supplement obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.productName)
      ..writeByte(5)
      ..write(obj.elementProductName)
      ..writeByte(6)
      ..write(obj.schedule)
      ..writeByte(7)
      ..write(obj.quantity)
      ..writeByte(8)
      ..write(obj.instruction)
      ..writeByte(9)
      ..write(obj.elementInstruction);
  }
}

class NutritionOrder_EnteralFormulaAdapter
    extends TypeAdapter<NutritionOrder_EnteralFormula> {
  @override
  NutritionOrder_EnteralFormula read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder_EnteralFormula(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      baseFormulaType: fields[3] as CodeableConcept,
      baseFormulaProductName: fields[4] as String,
      elementBaseFormulaProductName: fields[5] as Element,
      additiveType: fields[6] as CodeableConcept,
      additiveProductName: fields[7] as String,
      elementAdditiveProductName: fields[8] as Element,
      caloricDensity: fields[9] as Quantity,
      routeofAdministration: fields[10] as CodeableConcept,
      administration:
          (fields[11] as List)?.cast<NutritionOrder_Administration>(),
      maxVolumeToDeliver: fields[12] as Quantity,
      administrationInstruction: fields[13] as String,
      elementAdministrationInstruction: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder_EnteralFormula obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.baseFormulaType)
      ..writeByte(4)
      ..write(obj.baseFormulaProductName)
      ..writeByte(5)
      ..write(obj.elementBaseFormulaProductName)
      ..writeByte(6)
      ..write(obj.additiveType)
      ..writeByte(7)
      ..write(obj.additiveProductName)
      ..writeByte(8)
      ..write(obj.elementAdditiveProductName)
      ..writeByte(9)
      ..write(obj.caloricDensity)
      ..writeByte(10)
      ..write(obj.routeofAdministration)
      ..writeByte(11)
      ..write(obj.administration)
      ..writeByte(12)
      ..write(obj.maxVolumeToDeliver)
      ..writeByte(13)
      ..write(obj.administrationInstruction)
      ..writeByte(14)
      ..write(obj.elementAdministrationInstruction);
  }
}

class NutritionOrder_AdministrationAdapter
    extends TypeAdapter<NutritionOrder_Administration> {
  @override
  NutritionOrder_Administration read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionOrder_Administration(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      schedule: fields[3] as Timing,
      quantity: fields[4] as Quantity,
      rateQuantity: fields[5] as Quantity,
      rateRatio: fields[6] as Ratio,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionOrder_Administration obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.schedule)
      ..writeByte(4)
      ..write(obj.quantity)
      ..writeByte(5)
      ..write(obj.rateQuantity)
      ..writeByte(6)
      ..write(obj.rateRatio);
  }
}
