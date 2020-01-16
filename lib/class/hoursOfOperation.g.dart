// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hoursOfOperation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HoursOfOperation _$HoursOfOperationFromJson(Map<String, dynamic> json) {
  return HoursOfOperation(
    daysOfWeek: (json['daysOfWeek'] as List)?.map((e) => e as String)?.toList(),
    allDay: json['allDay'] as bool,
    openingTime: json['openingTime'] == null
        ? null
        : DateTime.parse(json['openingTime'] as String),
    closingTime: json['closingTime'] == null
        ? null
        : DateTime.parse(json['closingTime'] as String),
  );
}

Map<String, dynamic> _$HoursOfOperationToJson(HoursOfOperation instance) =>
    <String, dynamic>{
      'daysOfWeek': instance.daysOfWeek,
      'allDay': instance.allDay,
      'openingTime': instance.openingTime?.toIso8601String(),
      'closingTime': instance.closingTime?.toIso8601String(),
    };
