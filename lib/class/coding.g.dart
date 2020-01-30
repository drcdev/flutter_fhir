// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coding _$CodingFromJson(Map<String, dynamic> json) {
  return Coding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    element_system: json['element_system'] == null
        ? null
        : Element.fromJson(json['element_system'] as Map<String, dynamic>),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    display: json['display'] as String,
    element_display: json['element_display'] == null
        ? null
        : Element.fromJson(json['element_display'] as Map<String, dynamic>),
    userSelected: json['userSelected'] as bool,
    element_userSelected: json['element_userSelected'] == null
        ? null
        : Element.fromJson(
            json['element_userSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodingToJson(Coding instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'element_system': instance.element_system?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'display': instance.display,
      'element_display': instance.element_display?.toJson(),
      'userSelected': instance.userSelected,
      'element_userSelected': instance.element_userSelected?.toJson(),
    };
