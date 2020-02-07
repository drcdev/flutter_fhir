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
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
    userSelected: json['userSelected'] as bool,
    elementUserSelected: json['elementUserSelected'] == null
        ? null
        : Element.fromJson(json['elementUserSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CodingToJson(Coding instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
      'userSelected': instance.userSelected,
      'elementUserSelected': instance.elementUserSelected?.toJson(),
    };
