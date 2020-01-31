// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observationDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObservationDefinition _$ObservationDefinitionFromJson(
    Map<String, dynamic> json) {
  return ObservationDefinition(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    permittedDataType:
        (json['permittedDataType'] as List)?.map((e) => e as String)?.toList(),
    element_permittedDataType: (json['element_permittedDataType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleResultsAllowed: json['multipleResultsAllowed'] as bool,
    element_multipleResultsAllowed:
        json['element_multipleResultsAllowed'] == null
            ? null
            : Element.fromJson(
                json['element_multipleResultsAllowed'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    preferredReportName: json['preferredReportName'] as String,
    element_preferredReportName: json['element_preferredReportName'] == null
        ? null
        : Element.fromJson(
            json['element_preferredReportName'] as Map<String, dynamic>),
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
        ObservationDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'permittedDataType': instance.permittedDataType,
      'element_permittedDataType':
          instance.element_permittedDataType?.map((e) => e?.toJson())?.toList(),
      'multipleResultsAllowed': instance.multipleResultsAllowed,
      'element_multipleResultsAllowed':
          instance.element_multipleResultsAllowed?.toJson(),
      'method': instance.method?.toJson(),
      'preferredReportName': instance.preferredReportName,
      'element_preferredReportName':
          instance.element_preferredReportName?.toJson(),
      'quantitativeDetails': instance.quantitativeDetails?.toJson(),
      'qualifiedInterval':
          instance.qualifiedInterval?.map((e) => e?.toJson())?.toList(),
      'validCodedValueSet': instance.validCodedValueSet?.toJson(),
      'normalCodedValueSet': instance.normalCodedValueSet?.toJson(),
      'abnormalCodedValueSet': instance.abnormalCodedValueSet?.toJson(),
      'criticalCodedValueSet': instance.criticalCodedValueSet?.toJson(),
    };

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
    element_conversionFactor: json['element_conversionFactor'] == null
        ? null
        : Element.fromJson(
            json['element_conversionFactor'] as Map<String, dynamic>),
    decimalPrecision: json['decimalPrecision'] as int,
    element_decimalPrecision: json['element_decimalPrecision'] == null
        ? null
        : Element.fromJson(
            json['element_decimalPrecision'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinition_QuantitativeDetailsToJson(
        ObservationDefinition_QuantitativeDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'customaryUnit': instance.customaryUnit?.toJson(),
      'unit': instance.unit?.toJson(),
      'conversionFactor': instance.conversionFactor,
      'element_conversionFactor': instance.element_conversionFactor?.toJson(),
      'decimalPrecision': instance.decimalPrecision,
      'element_decimalPrecision': instance.element_decimalPrecision?.toJson(),
    };

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
    element_category: json['element_category'] == null
        ? null
        : Element.fromJson(json['element_category'] as Map<String, dynamic>),
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
    element_gender: json['element_gender'] == null
        ? null
        : Element.fromJson(json['element_gender'] as Map<String, dynamic>),
    age: json['age'] == null
        ? null
        : Range.fromJson(json['age'] as Map<String, dynamic>),
    gestationalAge: json['gestationalAge'] == null
        ? null
        : Range.fromJson(json['gestationalAge'] as Map<String, dynamic>),
    condition: json['condition'] as String,
    element_condition: json['element_condition'] == null
        ? null
        : Element.fromJson(json['element_condition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ObservationDefinition_QualifiedIntervalToJson(
        ObservationDefinition_QualifiedInterval instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category,
      'element_category': instance.element_category?.toJson(),
      'range': instance.range?.toJson(),
      'context': instance.context?.toJson(),
      'appliesTo': instance.appliesTo?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'element_gender': instance.element_gender?.toJson(),
      'age': instance.age?.toJson(),
      'gestationalAge': instance.gestationalAge?.toJson(),
      'condition': instance.condition,
      'element_condition': instance.element_condition?.toJson(),
    };
