// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familyMemberHistory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMemberHistory _$FamilyMemberHistoryFromJson(Map<String, dynamic> json) {
  return FamilyMemberHistory(
    resourceType: json['resourceType'] as String,
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
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    element_instantiatesUri: (json['element_instantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    dataAbsentReason: json['dataAbsentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dataAbsentReason'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    sex: json['sex'] == null
        ? null
        : CodeableConcept.fromJson(json['sex'] as Map<String, dynamic>),
    bornPeriod: json['bornPeriod'] == null
        ? null
        : Period.fromJson(json['bornPeriod'] as Map<String, dynamic>),
    bornDate: json['bornDate'] as String,
    element_bornDate: json['element_bornDate'] == null
        ? null
        : Element.fromJson(json['element_bornDate'] as Map<String, dynamic>),
    bornString: json['bornString'] as String,
    element_bornString: json['element_bornString'] == null
        ? null
        : Element.fromJson(json['element_bornString'] as Map<String, dynamic>),
    ageAge: json['ageAge'] == null
        ? null
        : Age.fromJson(json['ageAge'] as Map<String, dynamic>),
    ageRange: json['ageRange'] == null
        ? null
        : Range.fromJson(json['ageRange'] as Map<String, dynamic>),
    ageString: json['ageString'] as String,
    element_ageString: json['element_ageString'] == null
        ? null
        : Element.fromJson(json['element_ageString'] as Map<String, dynamic>),
    estimatedAge: json['estimatedAge'] as bool,
    element_estimatedAge: json['element_estimatedAge'] == null
        ? null
        : Element.fromJson(
            json['element_estimatedAge'] as Map<String, dynamic>),
    deceasedBoolean: json['deceasedBoolean'] as bool,
    element_deceasedBoolean: json['element_deceasedBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_deceasedBoolean'] as Map<String, dynamic>),
    deceasedAge: json['deceasedAge'] == null
        ? null
        : Age.fromJson(json['deceasedAge'] as Map<String, dynamic>),
    deceasedRange: json['deceasedRange'] == null
        ? null
        : Range.fromJson(json['deceasedRange'] as Map<String, dynamic>),
    deceasedDate: json['deceasedDate'] as String,
    element_deceasedDate: json['element_deceasedDate'] == null
        ? null
        : Element.fromJson(
            json['element_deceasedDate'] as Map<String, dynamic>),
    deceasedString: json['deceasedString'] as String,
    element_deceasedString: json['element_deceasedString'] == null
        ? null
        : Element.fromJson(
            json['element_deceasedString'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : FamilyMemberHistory_Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistoryToJson(
        FamilyMemberHistory instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'element_instantiatesUri':
          instance.element_instantiatesUri?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'dataAbsentReason': instance.dataAbsentReason?.toJson(),
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'sex': instance.sex?.toJson(),
      'bornPeriod': instance.bornPeriod?.toJson(),
      'bornDate': instance.bornDate,
      'element_bornDate': instance.element_bornDate?.toJson(),
      'bornString': instance.bornString,
      'element_bornString': instance.element_bornString?.toJson(),
      'ageAge': instance.ageAge?.toJson(),
      'ageRange': instance.ageRange?.toJson(),
      'ageString': instance.ageString,
      'element_ageString': instance.element_ageString?.toJson(),
      'estimatedAge': instance.estimatedAge,
      'element_estimatedAge': instance.element_estimatedAge?.toJson(),
      'deceasedBoolean': instance.deceasedBoolean,
      'element_deceasedBoolean': instance.element_deceasedBoolean?.toJson(),
      'deceasedAge': instance.deceasedAge?.toJson(),
      'deceasedRange': instance.deceasedRange?.toJson(),
      'deceasedDate': instance.deceasedDate,
      'element_deceasedDate': instance.element_deceasedDate?.toJson(),
      'deceasedString': instance.deceasedString,
      'element_deceasedString': instance.element_deceasedString?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
    };

FamilyMemberHistory_Condition _$FamilyMemberHistory_ConditionFromJson(
    Map<String, dynamic> json) {
  return FamilyMemberHistory_Condition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    contributedToDeath: json['contributedToDeath'] as bool,
    element_contributedToDeath: json['element_contributedToDeath'] == null
        ? null
        : Element.fromJson(
            json['element_contributedToDeath'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    element_onsetString: json['element_onsetString'] == null
        ? null
        : Element.fromJson(json['element_onsetString'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistory_ConditionToJson(
        FamilyMemberHistory_Condition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'contributedToDeath': instance.contributedToDeath,
      'element_contributedToDeath':
          instance.element_contributedToDeath?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetString': instance.onsetString,
      'element_onsetString': instance.element_onsetString?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
