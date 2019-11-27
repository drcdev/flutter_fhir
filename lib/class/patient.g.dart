// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return Patient(
    json['use'] as String,
    json['resourceType'] as String,
    json['id'] as String,
    json['name'] == null
        ? null
        : HumanName.fromJson(json['name'] as Map<String, dynamic>),
    json['gender'] as String,
    json['birthDate'] as String,
    json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
      'use': instance.use,
      'resourceType': instance.resourceType,
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'address': instance.address,
    };
