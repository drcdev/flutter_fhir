import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Substance {
  static Future<Substance> newInstance({
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
    String status,
    Element elementStatus,
    List<CodeableConcept> category,
    CodeableConcept code,
    String description,
    Element elementDescription,
    List<Substance_Instance> instance,
    List<Substance_Ingredient> ingredient,
  }) async {
    var fhirDb = new DatabaseHelper();
    Substance newSubstance = new Substance(
      resourceType: 'Substance',
      id: id ?? await fhirDb.newResourceId('Substance'),
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
      status: status,
      elementStatus: elementStatus,
      category: category,
      code: code,
      description: description,
      elementDescription: elementDescription,
      instance: instance,
      ingredient: ingredient,
    );
    newSubstance.meta.createdAt = DateTime.now();
    newSubstance.meta.lastUpdated = newSubstance.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstance);
    return newSubstance;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'Substance';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  List<CodeableConcept> category;
  CodeableConcept code;
  String description;
  Element elementDescription;
  List<Substance_Instance> instance;
  List<Substance_Ingredient> ingredient;

  Substance({
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
    this.status,
    this.elementStatus,
    this.category,
    @required this.code,
    this.description,
    this.elementDescription,
    this.instance,
    this.ingredient,
  });

  factory Substance.fromJson(Map<String, dynamic> json) =>
      _$SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Substance_Instance {
  static Future<Substance_Instance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    DateTime expiry,
    Element elementExpiry,
    Quantity quantity,
  }) async {
    var fhirDb = new DatabaseHelper();
    Substance_Instance newSubstance_Instance = new Substance_Instance(
      id: id ?? await fhirDb.newResourceId('Substance_Instance'),
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      expiry: expiry,
      elementExpiry: elementExpiry,
      quantity: quantity,
    );
    return newSubstance_Instance;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  DateTime expiry;
  Element elementExpiry;
  Quantity quantity;

  Substance_Instance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.expiry,
    this.elementExpiry,
    this.quantity,
  });

  factory Substance_Instance.fromJson(Map<String, dynamic> json) =>
      _$Substance_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_InstanceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Substance_Ingredient {
  static Future<Substance_Ingredient> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Ratio quantity,
    CodeableConcept substanceCodeableConcept,
    Reference substanceReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Substance_Ingredient newSubstance_Ingredient = new Substance_Ingredient(
      id: id ?? await fhirDb.newResourceId('Substance_Ingredient'),
      extension: extension,
      modifierExtension: modifierExtension,
      quantity: quantity,
      substanceCodeableConcept: substanceCodeableConcept,
      substanceReference: substanceReference,
    );
    return newSubstance_Ingredient;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Ratio quantity;
  CodeableConcept substanceCodeableConcept;
  Reference substanceReference;

  Substance_Ingredient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.substanceCodeableConcept,
    this.substanceReference,
  });

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$Substance_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_IngredientToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Substance _$SubstanceFromJson(Map<String, dynamic> json) {
  return Substance(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : Substance_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ingredient: (json['ingredient'] as List)
        ?.map((e) => e == null
            ? null
            : Substance_Ingredient.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceToJson(Substance instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'instance', instance.instance?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'ingredient', instance.ingredient?.map((e) => e?.toJson())?.toList());
  return val;
}

Substance_Instance _$Substance_InstanceFromJson(Map<String, dynamic> json) {
  return Substance_Instance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    elementExpiry: json['elementExpiry'] == null
        ? null
        : Element.fromJson(json['elementExpiry'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Substance_InstanceToJson(Substance_Instance instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  writeNotNull('elementExpiry', instance.elementExpiry?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  return val;
}

Substance_Ingredient _$Substance_IngredientFromJson(Map<String, dynamic> json) {
  return Substance_Ingredient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Ratio.fromJson(json['quantity'] as Map<String, dynamic>),
    substanceCodeableConcept: json['substanceCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['substanceCodeableConcept'] as Map<String, dynamic>),
    substanceReference: json['substanceReference'] == null
        ? null
        : Reference.fromJson(
            json['substanceReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Substance_IngredientToJson(
    Substance_Ingredient instance) {
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
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull(
      'substanceCodeableConcept', instance.substanceCodeableConcept?.toJson());
  writeNotNull('substanceReference', instance.substanceReference?.toJson());
  return val;
}
