// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
