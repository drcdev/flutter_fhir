// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encounter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Encounter _$EncounterFromJson(Map<String, dynamic> json) {
  return Encounter(
    resourceType: json['resourceType'] as String,
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    language: json['language'] as String,
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    statusHistory: (json['statusHistory'] as List)
        ?.map((e) => e == null
            ? null
            : StatusHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classs: json['classs'] == null
        ? null
        : Coding.fromJson(json['classs'] as Map<String, dynamic>),
    classHistory: (json['classHistory'] as List)
        ?.map((e) =>
            e == null ? null : ClassHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceType: json['serviceType'] == null
        ? null
        : CodeableConcept.fromJson(json['serviceType'] as Map<String, dynamic>),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    episodeOfCare: (json['episodeOfCare'] as List)
        ?.map((e) => e == null
            ? null
            : EpisodeOfCare.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) => e == null
            ? null
            : ServiceRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    participant: (json['participant'] as List)
        ?.map((e) =>
            e == null ? null : Participant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    appointment: (json['appointment'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    length: json['length'] as int,
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) =>
            e == null ? null : Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    account: (json['account'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hospitalization: json['hospitalization'] == null
        ? null
        : Hospitalization.fromJson(
            json['hospitalization'] as Map<String, dynamic>),
    location: (json['location'] as List)
        ?.map((e) =>
            e == null ? null : Location.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceProvider: json['serviceProvider'] == null
        ? null
        : Reference.fromJson(json['serviceProvider'] as Map<String, dynamic>),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EncounterToJson(Encounter instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'statusHistory':
          instance.statusHistory?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.toJson(),
      'classHistory': instance.classHistory?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'serviceType': instance.serviceType?.toJson(),
      'priority': instance.priority?.toJson(),
      'subject': instance.subject?.toJson(),
      'episodeOfCare':
          instance.episodeOfCare?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'participant': instance.participant?.map((e) => e?.toJson())?.toList(),
      'appointment': instance.appointment?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'length': instance.length,
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'account': instance.account?.map((e) => e?.toJson())?.toList(),
      'hospitalization': instance.hospitalization?.toJson(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'serviceProvider': instance.serviceProvider?.toJson(),
      'partOf': instance.partOf?.toJson(),
    };

StatusHistory _$StatusHistoryFromJson(Map<String, dynamic> json) {
  return StatusHistory(
    status: json['status'] as String,
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatusHistoryToJson(StatusHistory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'period': instance.period?.toJson(),
    };

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

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return Participant(
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    individual: json['individual'] == null
        ? null
        : Reference.fromJson(json['individual'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
    <String, dynamic>{
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'individual': instance.individual?.toJson(),
    };

Diagnosis _$DiagnosisFromJson(Map<String, dynamic> json) {
  return Diagnosis(
    condition: json['condition'] == null
        ? null
        : Reference.fromJson(json['condition'] as Map<String, dynamic>),
    use: json['use'] == null
        ? null
        : CodeableConcept.fromJson(json['use'] as Map<String, dynamic>),
    rank: json['rank'] as int,
  );
}

Map<String, dynamic> _$DiagnosisToJson(Diagnosis instance) => <String, dynamic>{
      'condition': instance.condition?.toJson(),
      'use': instance.use?.toJson(),
      'rank': instance.rank,
    };

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

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    status: json['status'] as String,
    physicalType: json['physicalType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['physicalType'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'location': instance.location?.toJson(),
      'status': instance.status,
      'physicalType': instance.physicalType?.toJson(),
      'period': instance.period?.toJson(),
    };
