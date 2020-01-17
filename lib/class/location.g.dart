// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
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
    operationalStatus: json['operationalStatus'] == null
        ? null
        : Coding.fromJson(json['operationalStatus'] as Map<String, dynamic>),
    name: json['name'] as String,
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    description: json['description'] as String,
    mode: json['mode'] as String,
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] as String,
    physicalType: json['physicalType'] as String,
    position: json['position'] == null
        ? null
        : Position.fromJson(json['position'] as Map<String, dynamic>),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
    hoursOfOperation: (json['hoursOfOperation'] as List)
        ?.map((e) => e == null
            ? null
            : HoursOfOperation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availabilityExceptions: json['availabilityExceptions'] as String,
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Endpoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'operationalStatus': instance.operationalStatus?.toJson(),
      'name': instance.name,
      'alias': instance.alias,
      'description': instance.description,
      'mode': instance.mode,
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address,
      'physicalType': instance.physicalType,
      'position': instance.position?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'partOf': instance.partOf?.toJson(),
      'hoursOfOperation':
          instance.hoursOfOperation?.map((e) => e?.toJson())?.toList(),
      'availabilityExceptions': instance.availabilityExceptions,
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
    };

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
