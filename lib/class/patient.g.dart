// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return Patient(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    name: (json['name'] as List)
        ?.map((e) =>
            e == null ? null : HumanName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gender: json['gender'] as String,
    birthDate: json['birthDate'] as String,
    address: json['address'] as List,
  )..fullUrl = json['fullUrl'] as String;
}

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'address': instance.address,
      'fullUrl': instance.fullUrl,
    };
