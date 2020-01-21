// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    name: json['name'] as String,
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicePeriod: json['servicePeriod'] == null
        ? null
        : Period.fromJson(json['servicePeriod'] as Map<String, dynamic>),
    coverage: (json['coverage'] as List)
        ?.map((e) =>
            e == null ? null : Coverage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    description: json['description'] as String,
    guarantor: (json['guarantor'] as List)
        ?.map((e) =>
            e == null ? null : Guarantor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
  )
    ..text = json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>)
    ..contained = (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'type': instance.type?.toJson(),
      'name': instance.name,
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'servicePeriod': instance.servicePeriod?.toJson(),
      'coverage': instance.coverage?.map((e) => e?.toJson())?.toList(),
      'owner': instance.owner?.toJson(),
      'description': instance.description,
      'guarantor': instance.guarantor?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.toJson(),
    };

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return Coverage(
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    priority: json['priority'] as int,
  );
}

Map<String, dynamic> _$CoverageToJson(Coverage instance) => <String, dynamic>{
      'coverage': instance.coverage?.toJson(),
      'priority': instance.priority,
    };

Guarantor _$GuarantorFromJson(Map<String, dynamic> json) {
  return Guarantor(
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
    onHold: json['onHold'] as bool,
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GuarantorToJson(Guarantor instance) => <String, dynamic>{
      'party': instance.party?.toJson(),
      'onHold': instance.onHold,
      'period': instance.period?.toJson(),
    };
