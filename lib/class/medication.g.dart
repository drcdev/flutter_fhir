// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medication _$MedicationFromJson(Map<String, dynamic> json) {
  return Medication(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] as String,
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Ratio.fromJson(json['amount'] as Map<String, dynamic>),
    ingredient: (json['ingredient'] as List)
        ?.map((e) =>
            e == null ? null : Ingredient.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    batch: json['batch'] == null
        ? null
        : Batch.fromJson(json['batch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationToJson(Medication instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'status': instance.status,
      'manufacturer': instance.manufacturer?.toJson(),
      'form': instance.form?.toJson(),
      'amount': instance.amount?.toJson(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'batch': instance.batch?.toJson(),
    };

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return Ingredient(
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    isActive: json['isActive'] as bool,
    strength: json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IngredientToJson(Ingredient instance) =>
    <String, dynamic>{
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'isActive': instance.isActive,
      'strength': instance.strength?.toJson(),
    };

Batch _$BatchFromJson(Map<String, dynamic> json) {
  return Batch(
    lotNumber: json['lotNumber'] as String,
    expirationDate: json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate'] as String),
  );
}

Map<String, dynamic> _$BatchToJson(Batch instance) => <String, dynamic>{
      'lotNumber': instance.lotNumber,
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };
