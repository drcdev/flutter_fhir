// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classHistory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassHistory _$ClassHistoryFromJson(Map<String, dynamic> json) {
  return ClassHistory(
    classs: json['classs'] == null
        ? null
        : Coding.fromJson(json['classs'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClassHistoryToJson(ClassHistory instance) =>
    <String, dynamic>{
      'classs': instance.classs?.toJson(),
      'period': instance.period?.toJson(),
    };
