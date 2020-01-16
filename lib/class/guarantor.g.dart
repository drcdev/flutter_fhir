// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
