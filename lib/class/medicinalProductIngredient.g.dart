// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinalProductIngredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIngredient _$MedicinalProductIngredientFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIngredient(
    json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    allergenicIndicator: json['allergenicIndicator'] as bool,
    element_allergenicIndicator: json['element_allergenicIndicator'] == null
        ? null
        : Element.fromJson(
            json['element_allergenicIndicator'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specifiedSubstance: (json['specifiedSubstance'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_SpecifiedSubstance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : MedicinalProductIngredient_Substance.fromJson(
            json['substance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductIngredientToJson(
        MedicinalProductIngredient instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'role': instance.role?.toJson(),
      'allergenicIndicator': instance.allergenicIndicator,
      'element_allergenicIndicator':
          instance.element_allergenicIndicator?.toJson(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
      'specifiedSubstance':
          instance.specifiedSubstance?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
    };

MedicinalProductIngredient_SpecifiedSubstance
    _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIngredient_SpecifiedSubstance(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    json['group'] == null
        ? null
        : CodeableConcept.fromJson(json['group'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    confidentiality: json['confidentiality'] == null
        ? null
        : CodeableConcept.fromJson(
            json['confidentiality'] as Map<String, dynamic>),
    strength: (json['strength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_Strength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_SpecifiedSubstanceToJson(
        MedicinalProductIngredient_SpecifiedSubstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'group': instance.group?.toJson(),
      'confidentiality': instance.confidentiality?.toJson(),
      'strength': instance.strength?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIngredient_Strength
    _$MedicinalProductIngredient_StrengthFromJson(Map<String, dynamic> json) {
  return MedicinalProductIngredient_Strength(
    json['presentation'] == null
        ? null
        : Ratio.fromJson(json['presentation'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    presentationLowLimit: json['presentationLowLimit'] == null
        ? null
        : Ratio.fromJson(json['presentationLowLimit'] as Map<String, dynamic>),
    concentration: json['concentration'] == null
        ? null
        : Ratio.fromJson(json['concentration'] as Map<String, dynamic>),
    concentrationLowLimit: json['concentrationLowLimit'] == null
        ? null
        : Ratio.fromJson(json['concentrationLowLimit'] as Map<String, dynamic>),
    measurementPoint: json['measurementPoint'] as String,
    element_measurementPoint: json['element_measurementPoint'] == null
        ? null
        : Element.fromJson(
            json['element_measurementPoint'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceStrength: (json['referenceStrength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_ReferenceStrength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_StrengthToJson(
        MedicinalProductIngredient_Strength instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'presentation': instance.presentation?.toJson(),
      'presentationLowLimit': instance.presentationLowLimit?.toJson(),
      'concentration': instance.concentration?.toJson(),
      'concentrationLowLimit': instance.concentrationLowLimit?.toJson(),
      'measurementPoint': instance.measurementPoint,
      'element_measurementPoint': instance.element_measurementPoint?.toJson(),
      'country': instance.country?.map((e) => e?.toJson())?.toList(),
      'referenceStrength':
          instance.referenceStrength?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIngredient_ReferenceStrength
    _$MedicinalProductIngredient_ReferenceStrengthFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIngredient_ReferenceStrength(
    json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    strengthLowLimit: json['strengthLowLimit'] == null
        ? null
        : Ratio.fromJson(json['strengthLowLimit'] as Map<String, dynamic>),
    measurementPoint: json['measurementPoint'] as String,
    element_measurementPoint: json['element_measurementPoint'] == null
        ? null
        : Element.fromJson(
            json['element_measurementPoint'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_ReferenceStrengthToJson(
        MedicinalProductIngredient_ReferenceStrength instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'strength': instance.strength?.toJson(),
      'strengthLowLimit': instance.strengthLowLimit?.toJson(),
      'measurementPoint': instance.measurementPoint,
      'element_measurementPoint': instance.element_measurementPoint?.toJson(),
      'country': instance.country?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIngredient_Substance
    _$MedicinalProductIngredient_SubstanceFromJson(Map<String, dynamic> json) {
  return MedicinalProductIngredient_Substance(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: (json['strength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_Strength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_SubstanceToJson(
        MedicinalProductIngredient_Substance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'strength': instance.strength?.map((e) => e?.toJson())?.toList(),
    };
