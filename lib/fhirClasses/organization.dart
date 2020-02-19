import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';


@JsonSerializable(explicitToJson: true)
class Organization{

	static Future<Organization> newInstance(
	{	String resourceType,
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
	List<CodeableConcept> type,
	String name,
	Element elementName,
	List<String> alias,
	List<Element> elementAlias,
	List<ContactPoint> telecom,
	List<Address> address,
	Reference partOf,
	List<Organization_Contact> contact,
	List<Reference> endpoint,
}) async {
var fhirDb = new DatabaseHelper();
Organization newOrganization = new Organization(
	resourceType: 'Organization',
	id: id ?? await fhirDb.newResourceId('Organization'),
	meta: meta ?? await Meta.newInstance(),
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
	type: type,
	name: name,
	elementName: elementName,
	alias: alias,
	elementAlias: elementAlias,
	telecom: telecom,
	address: address,
	partOf: partOf,
	contact: contact,
	endpoint: endpoint,
);
	newOrganization.meta.createdAt = DateTime.now();
	newOrganization.meta.lastUpdated = newOrganization.meta.createdAt;
	int saved = await fhirDb.saveResource(newOrganization);
	 return newOrganization;
}

save() async {
		this.meta.lastUpdated = DateTime.now();
		var fhirDb = new DatabaseHelper();
		int saved = await fhirDb.saveResource(this);
}

	String resourceType= 'Organization';
	String id;
	Meta meta;
	String implicitRules;
	Element elementImplicitRules;
	String language;
	Element elementLanguage;
	Narrative text;
	List<dynamic> contained;
	List<Extension> extension;
	List<Extension> modifierExtension;
	List<Identifier> identifier;
	bool active;
	Element elementActive;
	List<CodeableConcept> type;
	String name;
	Element elementName;
	List<String> alias;
	List<Element> elementAlias;
	List<ContactPoint> telecom;
	List<Address> address;
	Reference partOf;
	List<Organization_Contact> contact;
	List<Reference> endpoint;

Organization(
	{@required this.resourceType,
this.id,
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
this.type,
this.name,
this.elementName,
this.alias,
this.elementAlias,
this.telecom,
this.address,
this.partOf,
this.contact,
this.endpoint,
});

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Organization_Contact{

	static Future<Organization_Contact> newInstance(
	{	String id,
	List<Extension> extension,
	List<Extension> modifierExtension,
	CodeableConcept purpose,
	HumanName name,
	List<ContactPoint> telecom,
	Address address,
}) async {
var fhirDb = new DatabaseHelper();
Organization_Contact newOrganization_Contact = new Organization_Contact(
	id: id ?? await fhirDb.newResourceId('Organization_Contact'),
	extension: extension,
	modifierExtension: modifierExtension,
	purpose: purpose,
	name: name,
	telecom: telecom,
	address: address,
);
	return newOrganization_Contact;
}

	String id;
	List<Extension> extension;
	List<Extension> modifierExtension;
	CodeableConcept purpose;
	HumanName name;
	List<ContactPoint> telecom;
	Address address;

Organization_Contact(
	{this.id,
this.extension,
this.modifierExtension,
this.purpose,
this.name,
this.telecom,
this.address,
});

  factory Organization_Contact.fromJson(Map<String, dynamic> json) => _$Organization_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$Organization_ContactToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization(
    resourceType: json['resourceType'] as String,
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
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: (json['address'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : Organization_Contact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
    };

Organization_Contact _$Organization_ContactFromJson(Map<String, dynamic> json) {
  return Organization_Contact(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] == null
        ? null
        : CodeableConcept.fromJson(json['purpose'] as Map<String, dynamic>),
    name: json['name'] == null
        ? null
        : HumanName.fromJson(json['name'] as Map<String, dynamic>),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Organization_ContactToJson(
        Organization_Contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose?.toJson(),
      'name': instance.name?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.toJson(),
    };
