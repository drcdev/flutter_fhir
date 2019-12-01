// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return Patient(
    use: json['use'] as String,
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    name: json['name'] == null
        ? null
        : HumanName.fromJson(json['name'] as Map<String, dynamic>),
    gender: json['gender'] as String,
    birthDate: json['birthDate'] as String,
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
      'use': instance.use,
      'resourceType': instance.resourceType,
      'id': instance.id,
      'name': instance.name?.toJson(),
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'address': instance.address?.toJson(),
    };
