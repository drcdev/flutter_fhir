// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Position _$PositionFromJson(Map<String, dynamic> json) {
  return Position(
    longitude: json['longitude'] as int,
    latitude: json['latitude'] as int,
    altitude: json['altitude'] as int,
  );
}

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'altitude': instance.altitude,
    };
