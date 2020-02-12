import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 163)
class Practitioner {

	static Future<Practitioner> newInstance({
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
		List<HumanName> name,
		List<ContactPoint> telecom,
		List<Address> address,
		String gender,
		Element elementGender,
		String birthDate,
		Element elementBirthDate,
		List<Attachment> photo,
		List<Practitioner_Qualification> qualification,
		List<CodeableConcept> communication}) async {
	Practitioner newPractitioner = new Practitioner(
			id: await newId('Practitioner'),
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
			name: name,
			telecom: telecom,
			address: address,
			gender: gender,
			elementGender: elementGender,
			birthDate: birthDate,
			elementBirthDate: elementBirthDate,
			photo: photo,
			qualification: qualification,
			communication: communication);
	var practitionerBox = await Hive.openBox<Practitioner>('PractitionerBox');
	practitionerBox.add(newPractitioner);
	return newPractitioner;
}
  @HiveField(0)
  final String resourceType= 'Practitioner';
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
  List<HumanName> name;
  @HiveField(15)
  List<ContactPoint> telecom;
  @HiveField(16)
  List<Address> address;
  @HiveField(17)
  String gender; // <code> enum: male/female/other/unknown;
  @HiveField(18)
  Element elementGender;
  @HiveField(19)
  String birthDate;
  @HiveField(20)
  Element elementBirthDate;
  @HiveField(21)
  List<Attachment> photo;
  @HiveField(22)
  List<Practitioner_Qualification> qualification;
  @HiveField(23)
  List<CodeableConcept> communication;

Practitioner(
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
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.elementGender,
    this.birthDate,
    this.elementBirthDate,
    this.photo,
    this.qualification,
    this.communication
    });

  factory Practitioner.fromJson(Map<String, dynamic> json) => _$PractitionerFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Practitioner_Qualification {

	static Future<Practitioner_Qualification> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		CodeableConcept code,
		Period period,
		Reference issuer}) async {
	Practitioner_Qualification newPractitioner_Qualification = new Practitioner_Qualification(
			id: await newId('Practitioner_Qualification'),
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			code: code,
			period: period,
			issuer: issuer);
	var practitioner_QualificationBox = await Hive.openBox<Practitioner_Qualification>('Practitioner_QualificationBox');
	practitioner_QualificationBox.add(newPractitioner_Qualification);
	return newPractitioner_Qualification;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept code;
  Period period;
  Reference issuer;

Practitioner_Qualification(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    @required this.code,
    this.period,
    this.issuer
    });

  factory Practitioner_Qualification.fromJson(Map<String, dynamic> json) => _$Practitioner_QualificationFromJson(json);
  Map<String, dynamic> toJson() => _$Practitioner_QualificationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PractitionerAdapter extends TypeAdapter<Practitioner> {
  @override
  final typeId = 163;

  @override
  Practitioner read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Practitioner(
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
      name: (fields[14] as List)?.cast<HumanName>(),
      telecom: (fields[15] as List)?.cast<ContactPoint>(),
      address: (fields[16] as List)?.cast<Address>(),
      gender: fields[17] as String,
      elementGender: fields[18] as Element,
      birthDate: fields[19] as String,
      elementBirthDate: fields[20] as Element,
      photo: (fields[21] as List)?.cast<Attachment>(),
      qualification: (fields[22] as List)?.cast<Practitioner_Qualification>(),
      communication: (fields[23] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, Practitioner obj) {
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
      ..write(obj.name)
      ..writeByte(15)
      ..write(obj.telecom)
      ..writeByte(16)
      ..write(obj.address)
      ..writeByte(17)
      ..write(obj.gender)
      ..writeByte(18)
      ..write(obj.elementGender)
      ..writeByte(19)
      ..write(obj.birthDate)
      ..writeByte(20)
      ..write(obj.elementBirthDate)
      ..writeByte(21)
      ..write(obj.photo)
      ..writeByte(22)
      ..write(obj.qualification)
      ..writeByte(23)
      ..write(obj.communication);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Practitioner _$PractitionerFromJson(Map<String, dynamic> json) {
  return Practitioner(
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
    name: (json['name'] as List)
        ?.map((e) =>
            e == null ? null : HumanName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: (json['address'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    birthDate: json['birthDate'] as String,
    elementBirthDate: json['elementBirthDate'] == null
        ? null
        : Element.fromJson(json['elementBirthDate'] as Map<String, dynamic>),
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    qualification: (json['qualification'] as List)
        ?.map((e) => e == null
            ? null
            : Practitioner_Qualification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communication: (json['communication'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PractitionerToJson(Practitioner instance) =>
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
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.map((e) => e?.toJson())?.toList(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'birthDate': instance.birthDate,
      'elementBirthDate': instance.elementBirthDate?.toJson(),
      'photo': instance.photo?.map((e) => e?.toJson())?.toList(),
      'qualification':
          instance.qualification?.map((e) => e?.toJson())?.toList(),
      'communication':
          instance.communication?.map((e) => e?.toJson())?.toList(),
    };

Practitioner_Qualification _$Practitioner_QualificationFromJson(
    Map<String, dynamic> json) {
  return Practitioner_Qualification(
    id: json['id'] as String,
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    issuer: json['issuer'] == null
        ? null
        : Reference.fromJson(json['issuer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Practitioner_QualificationToJson(
        Practitioner_Qualification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'period': instance.period?.toJson(),
      'issuer': instance.issuer?.toJson(),
    };
