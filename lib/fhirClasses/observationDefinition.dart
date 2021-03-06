import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ObservationDefinition {
  static Future<ObservationDefinition> newInstance({
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
    List<CodeableConcept> category,
    CodeableConcept code,
    List<Identifier> identifier,
    String permittedDataType,
    List<Element> elementPermittedDataType,
    bool multipleResultsAllowed,
    Element elementMultipleResultsAllowed,
    CodeableConcept method,
    String preferredReportName,
    Element elementPreferredReportName,
    ObservationDefinition_QuantitativeDetails quantitativeDetails,
    List<ObservationDefinition_QualifiedInterval> qualifiedInterval,
    Reference validCodedValueSet,
    Reference normalCodedValueSet,
    Reference abnormalCodedValueSet,
    Reference criticalCodedValueSet,
  }) async {
    var fhirDb = new DatabaseHelper();
    ObservationDefinition newObservationDefinition = new ObservationDefinition(
      resourceType: 'ObservationDefinition',
      id: id ?? await fhirDb.newResourceId('ObservationDefinition'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      code: code,
      identifier: identifier,
      permittedDataType: permittedDataType,
      elementPermittedDataType: elementPermittedDataType,
      multipleResultsAllowed: multipleResultsAllowed,
      elementMultipleResultsAllowed: elementMultipleResultsAllowed,
      method: method,
      preferredReportName: preferredReportName,
      elementPreferredReportName: elementPreferredReportName,
      quantitativeDetails: quantitativeDetails,
      qualifiedInterval: qualifiedInterval,
      validCodedValueSet: validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet,
      abnormalCodedValueSet: abnormalCodedValueSet,
      criticalCodedValueSet: criticalCodedValueSet,
    );
    newObservationDefinition.meta.createdAt = DateTime.now();
    newObservationDefinition.meta.lastUpdated =
        newObservationDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newObservationDefinition);
    return newObservationDefinition;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'ObservationDefinition';
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
  List<CodeableConcept> category;
  CodeableConcept code;
  List<Identifier> identifier;
  String permittedDataType;
  List<Element> elementPermittedDataType;
  bool multipleResultsAllowed;
  Element elementMultipleResultsAllowed;
  CodeableConcept method;
  String preferredReportName;
  Element elementPreferredReportName;
  ObservationDefinition_QuantitativeDetails quantitativeDetails;
  List<ObservationDefinition_QualifiedInterval> qualifiedInterval;
  Reference validCodedValueSet;
  Reference normalCodedValueSet;
  Reference abnormalCodedValueSet;
  Reference criticalCodedValueSet;

  ObservationDefinition({
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
    this.category,
    @required this.code,
    this.identifier,
    this.permittedDataType,
    this.elementPermittedDataType,
    this.multipleResultsAllowed,
    this.elementMultipleResultsAllowed,
    this.method,
    this.preferredReportName,
    this.elementPreferredReportName,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
  });

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinitionToJson(this);
}

class ObservationDefinition_QuantitativeDetails {
  static Future<ObservationDefinition_QuantitativeDetails> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept customaryUnit,
    CodeableConcept unit,
    double conversionFactor,
    Element elementConversionFactor,
    int decimalPrecision,
    Element elementDecimalPrecision,
  }) async {
    var fhirDb = new DatabaseHelper();
    ObservationDefinition_QuantitativeDetails
        newObservationDefinition_QuantitativeDetails =
        new ObservationDefinition_QuantitativeDetails(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      customaryUnit: customaryUnit,
      unit: unit,
      conversionFactor: conversionFactor,
      elementConversionFactor: elementConversionFactor,
      decimalPrecision: decimalPrecision,
      elementDecimalPrecision: elementDecimalPrecision,
    );
    return newObservationDefinition_QuantitativeDetails;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept customaryUnit;
  CodeableConcept unit;
  double conversionFactor;
  Element elementConversionFactor;
  int decimalPrecision;
  Element elementDecimalPrecision;

  ObservationDefinition_QuantitativeDetails({
    this.id,
    this.extension,
    this.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.elementConversionFactor,
    this.decimalPrecision,
    this.elementDecimalPrecision,
  });

  factory ObservationDefinition_QuantitativeDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationDefinition_QuantitativeDetailsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ObservationDefinition_QuantitativeDetailsToJson(this);
}

class ObservationDefinition_QualifiedInterval {
  static Future<ObservationDefinition_QualifiedInterval> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String category,
    Element elementCategory,
    Range range,
    CodeableConcept context,
    List<CodeableConcept> appliesTo,
    String gender,
    Element elementGender,
    Range age,
    Range gestationalAge,
    String condition,
    Element elementCondition,
  }) async {
    var fhirDb = new DatabaseHelper();
    ObservationDefinition_QualifiedInterval
        newObservationDefinition_QualifiedInterval =
        new ObservationDefinition_QualifiedInterval(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      elementCategory: elementCategory,
      range: range,
      context: context,
      appliesTo: appliesTo,
      gender: gender,
      elementGender: elementGender,
      age: age,
      gestationalAge: gestationalAge,
      condition: condition,
      elementCondition: elementCondition,
    );
    return newObservationDefinition_QualifiedInterval;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String category;
  Element elementCategory;
  Range range;
  CodeableConcept context;
  List<CodeableConcept> appliesTo;
  String gender;
  Element elementGender;
  Range age;
  Range gestationalAge;
  String condition;
  Element elementCondition;

  ObservationDefinition_QualifiedInterval({
    this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.elementCategory,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.elementGender,
    this.age,
    this.gestationalAge,
    this.condition,
    this.elementCondition,
  });

  factory ObservationDefinition_QualifiedInterval.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ObservationDefinition_QualifiedIntervalToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObservationDefinition _$ObservationDefinitionFromJson(
    Map<String, dynamic> json) {
  return ObservationDefinition(
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
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    permittedDataType: json['permittedDataType'] as String,
    elementPermittedDataType: (json['elementPermittedDataType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleResultsAllowed: json['multipleResultsAllowed'] as bool,
    elementMultipleResultsAllowed: json['elementMultipleResultsAllowed'] == null
        ? null
        : Element.fromJson(
            json['elementMultipleResultsAllowed'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    preferredReportName: json['preferredReportName'] as String,
    elementPreferredReportName: json['elementPreferredReportName'] == null
        ? null
        : Element.fromJson(
            json['elementPreferredReportName'] as Map<String, dynamic>),
    quantitativeDetails: json['quantitativeDetails'] == null
        ? null
        : ObservationDefinition_QuantitativeDetails.fromJson(
            json['quantitativeDetails'] as Map<String, dynamic>),
    qualifiedInterval: (json['qualifiedInterval'] as List)
        ?.map((e) => e == null
            ? null
            : ObservationDefinition_QualifiedInterval.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    validCodedValueSet: json['validCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['validCodedValueSet'] as Map<String, dynamic>),
    normalCodedValueSet: json['normalCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['normalCodedValueSet'] as Map<String, dynamic>),
    abnormalCodedValueSet: json['abnormalCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['abnormalCodedValueSet'] as Map<String, dynamic>),
    criticalCodedValueSet: json['criticalCodedValueSet'] == null
        ? null
        : Reference.fromJson(
            json['criticalCodedValueSet'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinitionToJson(
    ObservationDefinition instance) {
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
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('permittedDataType', instance.permittedDataType);
  writeNotNull('elementPermittedDataType',
      instance.elementPermittedDataType?.map((e) => e?.toJson())?.toList());
  writeNotNull('multipleResultsAllowed', instance.multipleResultsAllowed);
  writeNotNull('elementMultipleResultsAllowed',
      instance.elementMultipleResultsAllowed?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('preferredReportName', instance.preferredReportName);
  writeNotNull('elementPreferredReportName',
      instance.elementPreferredReportName?.toJson());
  writeNotNull('quantitativeDetails', instance.quantitativeDetails?.toJson());
  writeNotNull('qualifiedInterval',
      instance.qualifiedInterval?.map((e) => e?.toJson())?.toList());
  writeNotNull('validCodedValueSet', instance.validCodedValueSet?.toJson());
  writeNotNull('normalCodedValueSet', instance.normalCodedValueSet?.toJson());
  writeNotNull(
      'abnormalCodedValueSet', instance.abnormalCodedValueSet?.toJson());
  writeNotNull(
      'criticalCodedValueSet', instance.criticalCodedValueSet?.toJson());
  return val;
}

ObservationDefinition_QuantitativeDetails
    _$ObservationDefinition_QuantitativeDetailsFromJson(
        Map<String, dynamic> json) {
  return ObservationDefinition_QuantitativeDetails(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    customaryUnit: json['customaryUnit'] == null
        ? null
        : CodeableConcept.fromJson(
            json['customaryUnit'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    conversionFactor: (json['conversionFactor'] as num)?.toDouble(),
    elementConversionFactor: json['elementConversionFactor'] == null
        ? null
        : Element.fromJson(
            json['elementConversionFactor'] as Map<String, dynamic>),
    decimalPrecision: json['decimalPrecision'] as int,
    elementDecimalPrecision: json['elementDecimalPrecision'] == null
        ? null
        : Element.fromJson(
            json['elementDecimalPrecision'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinition_QuantitativeDetailsToJson(
    ObservationDefinition_QuantitativeDetails instance) {
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
  writeNotNull('customaryUnit', instance.customaryUnit?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('conversionFactor', instance.conversionFactor);
  writeNotNull(
      'elementConversionFactor', instance.elementConversionFactor?.toJson());
  writeNotNull('decimalPrecision', instance.decimalPrecision);
  writeNotNull(
      'elementDecimalPrecision', instance.elementDecimalPrecision?.toJson());
  return val;
}

ObservationDefinition_QualifiedInterval
    _$ObservationDefinition_QualifiedIntervalFromJson(
        Map<String, dynamic> json) {
  return ObservationDefinition_QualifiedInterval(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] as String,
    elementCategory: json['elementCategory'] == null
        ? null
        : Element.fromJson(json['elementCategory'] as Map<String, dynamic>),
    range: json['range'] == null
        ? null
        : Range.fromJson(json['range'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : CodeableConcept.fromJson(json['context'] as Map<String, dynamic>),
    appliesTo: (json['appliesTo'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    age: json['age'] == null
        ? null
        : Range.fromJson(json['age'] as Map<String, dynamic>),
    gestationalAge: json['gestationalAge'] == null
        ? null
        : Range.fromJson(json['gestationalAge'] as Map<String, dynamic>),
    condition: json['condition'] as String,
    elementCondition: json['elementCondition'] == null
        ? null
        : Element.fromJson(json['elementCondition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinition_QualifiedIntervalToJson(
    ObservationDefinition_QualifiedInterval instance) {
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
  writeNotNull('category', instance.category);
  writeNotNull('elementCategory', instance.elementCategory?.toJson());
  writeNotNull('range', instance.range?.toJson());
  writeNotNull('context', instance.context?.toJson());
  writeNotNull(
      'appliesTo', instance.appliesTo?.map((e) => e?.toJson())?.toList());
  writeNotNull('gender', instance.gender);
  writeNotNull('elementGender', instance.elementGender?.toJson());
  writeNotNull('age', instance.age?.toJson());
  writeNotNull('gestationalAge', instance.gestationalAge?.toJson());
  writeNotNull('condition', instance.condition);
  writeNotNull('elementCondition', instance.elementCondition?.toJson());
  return val;
}
