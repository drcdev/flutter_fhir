import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 156)
class OrganizationAffiliation {

	static Future<OrganizationAffiliation> newInstance({
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
		bool active,
		Element elementActive,
		Period period,
		Reference organization,
		Reference participatingOrganization,
		List<Reference> network,
		List<CodeableConcept> code,
		List<CodeableConcept> specialty,
		List<Reference> location,
		List<Reference> healthcareService,
		List<ContactPoint> telecom,
		List<Reference> endpoint}) async {
	OrganizationAffiliation newOrganizationAffiliation = new OrganizationAffiliation(
			id: await newId('OrganizationAffiliation'),
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
			active: active,
			elementActive: elementActive,
			period: period,
			organization: organization,
			participatingOrganization: participatingOrganization,
			network: network,
			code: code,
			specialty: specialty,
			location: location,
			healthcareService: healthcareService,
			telecom: telecom,
			endpoint: endpoint);
	var organizationAffiliationBox = await Hive.openBox<OrganizationAffiliation>('OrganizationAffiliationBox');
	organizationAffiliationBox.add(newOrganizationAffiliation);
	return newOrganizationAffiliation;
}
  @HiveField(0)
  final String resourceType= 'OrganizationAffiliation';
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
  bool active;
  @HiveField(13)
  Element elementActive;
  @HiveField(14)
  Period period;
  @HiveField(15)
  Reference organization;
  @HiveField(16)
  Reference participatingOrganization;
  @HiveField(17)
  List<Reference> network;
  @HiveField(18)
  List<CodeableConcept> code;
  @HiveField(19)
  List<CodeableConcept> specialty;
  @HiveField(20)
  List<Reference> location;
  @HiveField(21)
  List<Reference> healthcareService;
  @HiveField(22)
  List<ContactPoint> telecom;
  @HiveField(23)
  List<Reference> endpoint;

OrganizationAffiliation(
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
    this.active,
    this.elementActive,
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.endpoint
    });

  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) => _$OrganizationAffiliationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationAffiliationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrganizationAffiliationAdapter
    extends TypeAdapter<OrganizationAffiliation> {
  @override
  final typeId = 156;

  @override
  OrganizationAffiliation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrganizationAffiliation(
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
      active: fields[12] as bool,
      elementActive: fields[13] as Element,
      period: fields[14] as Period,
      organization: fields[15] as Reference,
      participatingOrganization: fields[16] as Reference,
      network: (fields[17] as List)?.cast<Reference>(),
      code: (fields[18] as List)?.cast<CodeableConcept>(),
      specialty: (fields[19] as List)?.cast<CodeableConcept>(),
      location: (fields[20] as List)?.cast<Reference>(),
      healthcareService: (fields[21] as List)?.cast<Reference>(),
      telecom: (fields[22] as List)?.cast<ContactPoint>(),
      endpoint: (fields[23] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, OrganizationAffiliation obj) {
    writer
      ..writeByte(24)
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
      ..write(obj.active)
      ..writeByte(13)
      ..write(obj.elementActive)
      ..writeByte(14)
      ..write(obj.period)
      ..writeByte(15)
      ..write(obj.organization)
      ..writeByte(16)
      ..write(obj.participatingOrganization)
      ..writeByte(17)
      ..write(obj.network)
      ..writeByte(18)
      ..write(obj.code)
      ..writeByte(19)
      ..write(obj.specialty)
      ..writeByte(20)
      ..write(obj.location)
      ..writeByte(21)
      ..write(obj.healthcareService)
      ..writeByte(22)
      ..write(obj.telecom)
      ..writeByte(23)
      ..write(obj.endpoint);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationAffiliation _$OrganizationAffiliationFromJson(
    Map<String, dynamic> json) {
  return OrganizationAffiliation(
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
    active: json['active'] as bool,
    elementActive: json['elementActive'] == null
        ? null
        : Element.fromJson(json['elementActive'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    organization: json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    participatingOrganization: json['participatingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['participatingOrganization'] as Map<String, dynamic>),
    network: (json['network'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialty: (json['specialty'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: (json['location'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    healthcareService: (json['healthcareService'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OrganizationAffiliationToJson(
        OrganizationAffiliation instance) =>
    <String, dynamic>{
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
      'active': instance.active,
      'elementActive': instance.elementActive?.toJson(),
      'period': instance.period?.toJson(),
      'organization': instance.organization?.toJson(),
      'participatingOrganization': instance.participatingOrganization?.toJson(),
      'network': instance.network?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'specialty': instance.specialty?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'healthcareService':
          instance.healthcareService?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
    };
