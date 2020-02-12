import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 100)
class Endpoint {

	static Future<Endpoint> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		String status,
		Element elementStatus,
		Coding connectionType,
		String name,
		Element elementName,
		Reference managingOrganization,
		List<ContactPoint> contact,
		Period period,
		List<CodeableConcept> payloadType,
		List<String> payloadMimeType,
		List<Element> elementPayloadMimeType,
		String address,
		Element elementAddress,
		List<String> header,
		List<Element> elementHeader}) async {
	Endpoint newEndpoint = new Endpoint(
			id: await newId('Endpoint'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			status: status,
			elementStatus: elementStatus,
			connectionType: connectionType,
			name: name,
			elementName: elementName,
			managingOrganization: managingOrganization,
			contact: contact,
			period: period,
			payloadType: payloadType,
			payloadMimeType: payloadMimeType,
			elementPayloadMimeType: elementPayloadMimeType,
			address: address,
			elementAddress: elementAddress,
			header: header,
			elementHeader: elementHeader);
	var endpointBox = await Hive.openBox<Endpoint>('EndpointBox');
	endpointBox.add(newEndpoint);
	return newEndpoint;
}
  @HiveField(0)
  final String resourceType= 'Endpoint';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status; // <code> enum: active/suspended/error/off/entered-in-error/test;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  Coding connectionType;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  Reference managingOrganization;
  @HiveField(18)
  List<ContactPoint> contact;
  @HiveField(19)
  Period period;
  @HiveField(20)
  List<CodeableConcept> payloadType;
  @HiveField(21)
  List<String> payloadMimeType;
  @HiveField(22)
  List<Element> elementPayloadMimeType;
  @HiveField(23)
  String address;
  @HiveField(24)
  Element elementAddress;
  @HiveField(25)
  List<String> header;
  @HiveField(26)
  List<Element> elementHeader;

Endpoint(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    @required this.connectionType,
    this.name,
    this.elementName,
    this.managingOrganization,
    this.contact,
    this.period,
    @required this.payloadType,
    this.payloadMimeType,
    this.elementPayloadMimeType,
    this.address,
    this.elementAddress,
    this.header,
    this.elementHeader
    });

  factory Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$EndpointToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EndpointAdapter extends TypeAdapter<Endpoint> {
  @override
  final typeId = 100;

  @override
  Endpoint read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Endpoint(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      connectionType: fields[14] as Coding,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      managingOrganization: fields[17] as Reference,
      contact: (fields[18] as List)?.cast<ContactPoint>(),
      period: fields[19] as Period,
      payloadType: (fields[20] as List)?.cast<CodeableConcept>(),
      payloadMimeType: (fields[21] as List)?.cast<String>(),
      elementPayloadMimeType: (fields[22] as List)?.cast<Element>(),
      address: fields[23] as String,
      elementAddress: fields[24] as Element,
      header: (fields[25] as List)?.cast<String>(),
      elementHeader: (fields[26] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, Endpoint obj) {
    writer
      ..writeByte(27)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.connectionType)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.managingOrganization)
      ..writeByte(18)
      ..write(obj.contact)
      ..writeByte(19)
      ..write(obj.period)
      ..writeByte(20)
      ..write(obj.payloadType)
      ..writeByte(21)
      ..write(obj.payloadMimeType)
      ..writeByte(22)
      ..write(obj.elementPayloadMimeType)
      ..writeByte(23)
      ..write(obj.address)
      ..writeByte(24)
      ..write(obj.elementAddress)
      ..writeByte(25)
      ..write(obj.header)
      ..writeByte(26)
      ..write(obj.elementHeader);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpoint _$EndpointFromJson(Map<String, dynamic> json) {
  return Endpoint(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    connectionType: json['connectionType'] == null
        ? null
        : Coding.fromJson(json['connectionType'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
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
    elementPayloadMimeType: (json['elementPayloadMimeType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] as String,
    elementAddress: json['elementAddress'] == null
        ? null
        : Element.fromJson(json['elementAddress'] as Map<String, dynamic>),
    header: (json['header'] as List)?.map((e) => e as String)?.toList(),
    elementHeader: (json['elementHeader'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EndpointToJson(Endpoint instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'connectionType': instance.connectionType?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'payloadType': instance.payloadType?.map((e) => e?.toJson())?.toList(),
      'payloadMimeType': instance.payloadMimeType,
      'elementPayloadMimeType':
          instance.elementPayloadMimeType?.map((e) => e?.toJson())?.toList(),
      'address': instance.address,
      'elementAddress': instance.elementAddress?.toJson(),
      'header': instance.header,
      'elementHeader':
          instance.elementHeader?.map((e) => e?.toJson())?.toList(),
    };
