// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataRequirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRequirement _$DataRequirementFromJson(Map<String, dynamic> json) {
  return DataRequirement(
    id: json['id'] as String,
    extension: json['extension'],
    type: json['type'] as String,
    profile: json['profile'],
    subjectCodeableConcept: json['subjectCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['subjectCodeableConcept'] as Map<String, dynamic>),
    subjectReference: json['subjectReference'] == null
        ? null
        : Reference.fromJson(json['subjectReference'] as Map<String, dynamic>),
    mustSupport: json['mustSupport'],
    codeFilter: json['codeFilter'],
    dateFilter: json['dateFilter'],
    limit: json['limit'] as int,
    sort: json['sort'],
  )
    ..value = json['value']
    ..be = json['be'];
}

Map<String, dynamic> _$DataRequirementToJson(DataRequirement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension,
      'type': instance.type,
      'profile': instance.profile,
      'subjectCodeableConcept': instance.subjectCodeableConcept?.toJson(),
      'subjectReference': instance.subjectReference?.toJson(),
      'value': instance.value,
      'be': instance.be,
      'mustSupport': instance.mustSupport,
      'codeFilter': instance.codeFilter,
      'dateFilter': instance.dateFilter,
      'limit': instance.limit,
      'sort': instance.sort,
    };

DataRequirement_CodeFilter _$DataRequirement_CodeFilterFromJson(
    Map<String, dynamic> json) {
  return DataRequirement_CodeFilter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    searchParam: json['searchParam'] as String,
    valueSet: json['valueSet'] as String,
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataRequirement_CodeFilterToJson(
        DataRequirement_CodeFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'searchParam': instance.searchParam,
      'valueSet': instance.valueSet,
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
    };

DataRequirement_DateFilter _$DataRequirement_DateFilterFromJson(
    Map<String, dynamic> json) {
  return DataRequirement_DateFilter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    searchParam: json['searchParam'] as String,
    valueDateTime: json['valueDateTime'] as String,
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'],
  );
}

Map<String, dynamic> _$DataRequirement_DateFilterToJson(
        DataRequirement_DateFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'searchParam': instance.searchParam,
      'valueDateTime': instance.valueDateTime,
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueDuration': instance.valueDuration,
    };

DataRequirement_Sort _$DataRequirement_SortFromJson(Map<String, dynamic> json) {
  return DataRequirement_Sort(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    direction: json['direction'] as String,
  );
}

Map<String, dynamic> _$DataRequirement_SortToJson(
        DataRequirement_Sort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'direction': instance.direction,
    };
