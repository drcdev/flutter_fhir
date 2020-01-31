// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinalProductPharmaceutical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPharmaceutical _$MedicinalProductPharmaceuticalFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical(
    json['administrableDoseForm'] == null
        ? null
        : CodeableConcept.fromJson(
            json['administrableDoseForm'] as Map<String, dynamic>),
    (json['routeOfAdministration'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    unitOfPresentation: json['unitOfPresentation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfPresentation'] as Map<String, dynamic>),
    ingredient: (json['ingredient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    device: (json['device'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    characteristics: (json['characteristics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_Characteristics.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceuticalToJson(
        MedicinalProductPharmaceutical instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'administrableDoseForm': instance.administrableDoseForm?.toJson(),
      'unitOfPresentation': instance.unitOfPresentation?.toJson(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'device': instance.device?.map((e) => e?.toJson())?.toList(),
      'characteristics':
          instance.characteristics?.map((e) => e?.toJson())?.toList(),
      'routeOfAdministration':
          instance.routeOfAdministration?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPharmaceutical_Characteristics
    _$MedicinalProductPharmaceutical_CharacteristicsFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_Characteristics(
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
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_CharacteristicsToJson(
        MedicinalProductPharmaceutical_Characteristics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'status': instance.status?.toJson(),
    };

MedicinalProductPharmaceutical_RouteOfAdministration
    _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_RouteOfAdministration(
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
    firstDose: json['firstDose'] == null
        ? null
        : Quantity.fromJson(json['firstDose'] as Map<String, dynamic>),
    maxSingleDose: json['maxSingleDose'] == null
        ? null
        : Quantity.fromJson(json['maxSingleDose'] as Map<String, dynamic>),
    maxDosePerDay: json['maxDosePerDay'] == null
        ? null
        : Quantity.fromJson(json['maxDosePerDay'] as Map<String, dynamic>),
    maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] == null
        ? null
        : Ratio.fromJson(
            json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>),
    maxTreatmentPeriod: json['maxTreatmentPeriod'] == null
        ? null
        : Duration.fromJson(json['maxTreatmentPeriod'] as Map<String, dynamic>),
    targetSpecies: (json['targetSpecies'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_TargetSpecies.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic>
    _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(
            MedicinalProductPharmaceutical_RouteOfAdministration instance) =>
        <String, dynamic>{
          'id': instance.id,
          'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
          'modifierExtension':
              instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
          'code': instance.code?.toJson(),
          'firstDose': instance.firstDose?.toJson(),
          'maxSingleDose': instance.maxSingleDose?.toJson(),
          'maxDosePerDay': instance.maxDosePerDay?.toJson(),
          'maxDosePerTreatmentPeriod':
              instance.maxDosePerTreatmentPeriod?.toJson(),
          'maxTreatmentPeriod': instance.maxTreatmentPeriod?.toJson(),
          'targetSpecies':
              instance.targetSpecies?.map((e) => e?.toJson())?.toList(),
        };

MedicinalProductPharmaceutical_TargetSpecies
    _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_TargetSpecies(
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
    withdrawalPeriod: (json['withdrawalPeriod'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_TargetSpeciesToJson(
        MedicinalProductPharmaceutical_TargetSpecies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'withdrawalPeriod':
          instance.withdrawalPeriod?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPharmaceutical_WithdrawalPeriod
    _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_WithdrawalPeriod(
    json['tissue'] == null
        ? null
        : CodeableConcept.fromJson(json['tissue'] as Map<String, dynamic>),
    json['value'] == null
        ? null
        : Quantity.fromJson(json['value'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInformation: json['supportingInformation'] as String,
    element_supportingInformation: json['element_supportingInformation'] == null
        ? null
        : Element.fromJson(
            json['element_supportingInformation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(
        MedicinalProductPharmaceutical_WithdrawalPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'tissue': instance.tissue?.toJson(),
      'value': instance.value?.toJson(),
      'supportingInformation': instance.supportingInformation,
      'element_supportingInformation':
          instance.element_supportingInformation?.toJson(),
    };
