import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Person {

	static Future<Person> newInstance({
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
		List<HumanName> name,
		List<ContactPoint> telecom,
		String gender,
		Element elementGender,
		String birthDate,
		Element elementBirthDate,
		List<Address> address,
		Attachment photo,
		Reference managingOrganization,
		bool active,
		Element elementActive,
		List<Person_Link> link}) async {
	Person newPerson = new Person(
			id: await newId('Person'),
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
			name: name,
			telecom: telecom,
			gender: gender,
			elementGender: elementGender,
			birthDate: birthDate,
			elementBirthDate: elementBirthDate,
			address: address,
			photo: photo,
			managingOrganization: managingOrganization,
			active: active,
			elementActive: elementActive,
			link: link);
	var personBox = await Hive.openBox<Person>('PersonBox');
	personBox.put(newPerson.id, newPerson);
	return newPerson;
}
  final String resourceType= 'Person';
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
  List<HumanName> name;
  List<ContactPoint> telecom;
  String gender; // <code> enum: male/female/other/unknown;
  Element elementGender;
  String birthDate;
  Element elementBirthDate;
  List<Address> address;
  Attachment photo;
  Reference managingOrganization;
  bool active;
  Element elementActive;
  List<Person_Link> link;

Person(
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
    this.name,
    this.telecom,
    this.gender,
    this.elementGender,
    this.birthDate,
    this.elementBirthDate,
    this.address,
    this.photo,
    this.managingOrganization,
    this.active,
    this.elementActive,
    this.link
    });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Person_Link {

	static Future<Person_Link> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference target,
		String assurance,
		Element elementAssurance}) async {
	Person_Link newPerson_Link = new Person_Link(
			id: await newId('Person_Link'),
			extension: extension,
			modifierExtension: modifierExtension,
			target: target,
			assurance: assurance,
			elementAssurance: elementAssurance);
	var person_LinkBox = await Hive.openBox<Person_Link>('Person_LinkBox');
	person_LinkBox.put(newPerson_Link.id, newPerson_Link);
	return newPerson_Link;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference target;
  String assurance; // <code> enum: level1/level2/level3/level4;
  Element elementAssurance;

Person_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.target,
    this.assurance,
    this.elementAssurance
    });

  factory Person_Link.fromJson(Map<String, dynamic> json) => _$Person_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Person_LinkToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
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
    name: (json['name'] as List)
        ?.map((e) =>
            e == null ? null : HumanName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    birthDate: json['birthDate'] as String,
    elementBirthDate: json['elementBirthDate'] == null
        ? null
        : Element.fromJson(json['elementBirthDate'] as Map<String, dynamic>),
    address: (json['address'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    photo: json['photo'] == null
        ? null
        : Attachment.fromJson(json['photo'] as Map<String, dynamic>),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    active: json['active'] as bool,
    elementActive: json['elementActive'] == null
        ? null
        : Element.fromJson(json['elementActive'] as Map<String, dynamic>),
    link: (json['link'] as List)
        ?.map((e) =>
            e == null ? null : Person_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
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
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'birthDate': instance.birthDate,
      'elementBirthDate': instance.elementBirthDate?.toJson(),
      'address': instance.address?.map((e) => e?.toJson())?.toList(),
      'photo': instance.photo?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'active': instance.active,
      'elementActive': instance.elementActive?.toJson(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

Person_Link _$Person_LinkFromJson(Map<String, dynamic> json) {
  return Person_Link(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    target: json['target'] == null
        ? null
        : Reference.fromJson(json['target'] as Map<String, dynamic>),
    assurance: json['assurance'] as String,
    elementAssurance: json['elementAssurance'] == null
        ? null
        : Element.fromJson(json['elementAssurance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Person_LinkToJson(Person_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.toJson(),
      'assurance': instance.assurance,
      'elementAssurance': instance.elementAssurance?.toJson(),
    };
