// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coding _$CodingFromJson(Map<String, dynamic> json) {
  return Coding(
    system: json['system'] as String,
    version: json['version'] as String,
    code: json['code'] as String,
    display: json['display'] as String,
    userSelected: json['userSelected'] as bool,
  );
}

Map<String, dynamic> _$CodingToJson(Coding instance) => <String, dynamic>{
      'system': instance.system,
      'version': instance.version,
      'code': instance.code,
      'display': instance.display,
      'userSelected': instance.userSelected,
    };
