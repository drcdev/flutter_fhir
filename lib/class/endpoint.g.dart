// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpoint _$EndpointFromJson(Map<String, dynamic> json) {
  return Endpoint(
    resourceType: json['resourceType'] as String,
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    connectionType: json['connectionType'] == null
        ? null
        : Coding.fromJson(json['connectionType'] as Map<String, dynamic>),
    name: json['name'] as String,
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    payloadType: (json['payloadType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payloadMimeType:
        (json['payloadMimeType'] as List)?.map((e) => e as String)?.toList(),
    address: json['address'] as String,
    header: (json['header'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$EndpointToJson(Endpoint instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'connectionType': instance.connectionType?.toJson(),
      'name': instance.name,
      'managingOrganization': instance.managingOrganization?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'payloadType': instance.payloadType?.map((e) => e?.toJson())?.toList(),
      'payloadMimeType': instance.payloadMimeType,
      'address': instance.address,
      'header': instance.header,
    };
