// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospitalization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hospitalization _$HospitalizationFromJson(Map<String, dynamic> json) {
  return Hospitalization(
    preAdmissionIdentifier: json['preAdmissionIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['preAdmissionIdentifier'] as Map<String, dynamic>),
    origin: json['origin'] == null
        ? null
        : Reference.fromJson(json['origin'] as Map<String, dynamic>),
    admitSource: json['admitSource'] == null
        ? null
        : CodeableConcept.fromJson(json['admitSource'] as Map<String, dynamic>),
    reAdmission: json['reAdmission'] == null
        ? null
        : CodeableConcept.fromJson(json['reAdmission'] as Map<String, dynamic>),
    dietPreference: (json['dietPreference'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialCourtesy: (json['specialCourtesy'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialArrangement: (json['specialArrangement'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    destination: json['destination'] == null
        ? null
        : Reference.fromJson(json['destination'] as Map<String, dynamic>),
    dischargeDisposition: json['dischargeDisposition'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dischargeDisposition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HospitalizationToJson(Hospitalization instance) =>
    <String, dynamic>{
      'preAdmissionIdentifier': instance.preAdmissionIdentifier?.toJson(),
      'origin': instance.origin?.toJson(),
      'admitSource': instance.admitSource?.toJson(),
      'reAdmission': instance.reAdmission?.toJson(),
      'dietPreference':
          instance.dietPreference?.map((e) => e?.toJson())?.toList(),
      'specialCourtesy':
          instance.specialCourtesy?.map((e) => e?.toJson())?.toList(),
      'specialArrangement':
          instance.specialArrangement?.map((e) => e?.toJson())?.toList(),
      'destination': instance.destination?.toJson(),
      'dischargeDisposition': instance.dischargeDisposition?.toJson(),
    };
