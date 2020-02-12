import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';


import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
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
@HiveType(typeId: 158)
class Patient {

	static Future<Patient> newInstance({
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
		String gender,
		Element elementGender,
		String birthDate,
		Element elementBirthDate,
		bool deceasedBoolean,
		Element elementDeceasedBoolean,
		String deceasedDateTime,
		Element elementDeceasedDateTime,
		List<Address> address,
		CodeableConcept maritalStatus,
		bool multipleBirthBoolean,
		Element elementMultipleBirthBoolean,
		int multipleBirthInteger,
		Element elementMultipleBirthInteger,
		List<Attachment> photo,
		List<Patient_Contact> contact,
		List<Patient_Communication> communication,
		List<Reference> generalPractitioner,
		Reference managingOrganization,
		List<Patient_Link> link}) async {
	Patient newPatient = new Patient(
			id: await newId('Patient'),
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
			gender: gender,
			elementGender: elementGender,
			birthDate: birthDate,
			elementBirthDate: elementBirthDate,
			deceasedBoolean: deceasedBoolean,
			elementDeceasedBoolean: elementDeceasedBoolean,
			deceasedDateTime: deceasedDateTime,
			elementDeceasedDateTime: elementDeceasedDateTime,
			address: address,
			maritalStatus: maritalStatus,
			multipleBirthBoolean: multipleBirthBoolean,
			elementMultipleBirthBoolean: elementMultipleBirthBoolean,
			multipleBirthInteger: multipleBirthInteger,
			elementMultipleBirthInteger: elementMultipleBirthInteger,
			photo: photo,
			contact: contact,
			communication: communication,
			generalPractitioner: generalPractitioner,
			managingOrganization: managingOrganization,
			link: link);
	var patientBox = await Hive.openBox<Patient>('PatientBox');
	patientBox.add(newPatient);
	return newPatient;
}
  @HiveField(0)
  final String resourceType= 'Patient';
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
  String gender; // <code> enum: male/female/other/unknown;
  @HiveField(17)
  Element elementGender;
  @HiveField(18)
  String birthDate;
  @HiveField(19)
  Element elementBirthDate;
  @HiveField(20)
  bool deceasedBoolean; //  pattern: ^true|false$
  @HiveField(21)
  Element elementDeceasedBoolean;
  @HiveField(22)
  String deceasedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(23)
  Element elementDeceasedDateTime;
  @HiveField(24)
  List<Address> address;
  @HiveField(25)
  CodeableConcept maritalStatus;
  @HiveField(26)
  bool multipleBirthBoolean; //  pattern: ^true|false$
  @HiveField(27)
  Element elementMultipleBirthBoolean;
  int multipleBirthInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  @HiveField(29)
  Element elementMultipleBirthInteger;
  @HiveField(30)
  List<Attachment> photo;
  @HiveField(31)
  List<Patient_Contact> contact;
  @HiveField(32)
  List<Patient_Communication> communication;
  @HiveField(33)
  List<Reference> generalPractitioner;
  @HiveField(34)
  Reference managingOrganization;
  @HiveField(35)
  List<Patient_Link> link;

Patient(
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
    this.gender,
    this.elementGender,
    this.birthDate,
    this.elementBirthDate,
    this.deceasedBoolean,
    this.elementDeceasedBoolean,
    this.deceasedDateTime,
    this.elementDeceasedDateTime,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,
    this.elementMultipleBirthBoolean,
    this.multipleBirthInteger,
    this.elementMultipleBirthInteger,
    this.photo,
    this.contact,
    this.communication,
    this.generalPractitioner,
    this.managingOrganization,
    this.link
    });

  String printName() {
    return ('${(this.name?.first?.family?.toString() ?? '')}'
        ', '
        '${(this.name?.first?.given?.first?.toString() ?? '')}');
  }

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}

Future<Patient> readPatient(String id) async {
  final directory =
      await getApplicationDocumentsDirectory(); //get current directory
  Patient pt = Patient.fromJson(jsonDecode(
      await File('${directory.path}/' + id + '.txt')
          .readAsString())); //read patient from file
  return (pt);
}

Future<List<Patient>> readPtList() async {
  final directory =
      await getApplicationDocumentsDirectory(); //get current directory
  List<String> ptNumbers =
      (await File('${directory.path}/fhir/patient.txt').readAsString())
          .split('\n');
  var ptList = new List<Patient>();
  for (var i = 0; i < ptNumbers.length; i++) {
    final pt = File('${directory.path}/fhir/patient/' + ptNumbers[i] + '.txt');
    var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
    ptList.add(newpt);
  }
  return ptList;
}

@JsonSerializable(explicitToJson: true)
class Patient_Contact {

	static Future<Patient_Contact> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> relationship,
		HumanName name,
		List<ContactPoint> telecom,
		Address address,
		String gender,
		Element elementGender,
		Reference organization,
		Period period}) async {
	Patient_Contact newPatient_Contact = new Patient_Contact(
			id: await newId('Patient_Contact'),
			extension: extension,
			modifierExtension: modifierExtension,
			relationship: relationship,
			name: name,
			telecom: telecom,
			address: address,
			gender: gender,
			elementGender: elementGender,
			organization: organization,
			period: period);
	var patient_ContactBox = await Hive.openBox<Patient_Contact>('Patient_ContactBox');
	patient_ContactBox.add(newPatient_Contact);
	return newPatient_Contact;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> relationship;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;
  String gender; // <code> enum: male/female/other/unknown;
  Element elementGender;
  Reference organization;
  Period period;

Patient_Contact(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.elementGender,
    this.organization,
    this.period
    });

  factory Patient_Contact.fromJson(Map<String, dynamic> json) => _$Patient_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Communication {

	static Future<Patient_Communication> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept language,
		bool preferred,
		Element elementPreferred}) async {
	Patient_Communication newPatient_Communication = new Patient_Communication(
			id: await newId('Patient_Communication'),
			extension: extension,
			modifierExtension: modifierExtension,
			language: language,
			preferred: preferred,
			elementPreferred: elementPreferred);
	var patient_CommunicationBox = await Hive.openBox<Patient_Communication>('Patient_CommunicationBox');
	patient_CommunicationBox.add(newPatient_Communication);
	return newPatient_Communication;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept language;
  bool preferred;
  Element elementPreferred;

Patient_Communication(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.language,
    this.preferred,
    this.elementPreferred
    });

  factory Patient_Communication.fromJson(Map<String, dynamic> json) => _$Patient_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Link {

	static Future<Patient_Link> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference other,
		String type,
		Element elementType}) async {
	Patient_Link newPatient_Link = new Patient_Link(
			id: await newId('Patient_Link'),
			extension: extension,
			modifierExtension: modifierExtension,
			other: other,
			type: type,
			elementType: elementType);
	var patient_LinkBox = await Hive.openBox<Patient_Link>('Patient_LinkBox');
	patient_LinkBox.add(newPatient_Link);
	return newPatient_Link;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference other;
  String type; // <code> enum: replaced-by/replaces/refer/seealso;
  Element elementType;

Patient_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.other,
    this.type,
    this.elementType
    });

  factory Patient_Link.fromJson(Map<String, dynamic> json) => _$Patient_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_LinkToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientAdapter extends TypeAdapter<Patient> {
  @override
  final typeId = 158;

  @override
  Patient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Patient(
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
      gender: fields[16] as String,
      elementGender: fields[17] as Element,
      birthDate: fields[18] as String,
      elementBirthDate: fields[19] as Element,
      deceasedBoolean: fields[20] as bool,
      elementDeceasedBoolean: fields[21] as Element,
      deceasedDateTime: fields[22] as String,
      elementDeceasedDateTime: fields[23] as Element,
      address: (fields[24] as List)?.cast<Address>(),
      maritalStatus: fields[25] as CodeableConcept,
      multipleBirthBoolean: fields[26] as bool,
      elementMultipleBirthBoolean: fields[27] as Element,
      elementMultipleBirthInteger: fields[29] as Element,
      photo: (fields[30] as List)?.cast<Attachment>(),
      contact: (fields[31] as List)?.cast<Patient_Contact>(),
      communication: (fields[32] as List)?.cast<Patient_Communication>(),
      generalPractitioner: (fields[33] as List)?.cast<Reference>(),
      managingOrganization: fields[34] as Reference,
      link: (fields[35] as List)?.cast<Patient_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, Patient obj) {
    writer
      ..writeByte(35)
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
      ..write(obj.gender)
      ..writeByte(17)
      ..write(obj.elementGender)
      ..writeByte(18)
      ..write(obj.birthDate)
      ..writeByte(19)
      ..write(obj.elementBirthDate)
      ..writeByte(20)
      ..write(obj.deceasedBoolean)
      ..writeByte(21)
      ..write(obj.elementDeceasedBoolean)
      ..writeByte(22)
      ..write(obj.deceasedDateTime)
      ..writeByte(23)
      ..write(obj.elementDeceasedDateTime)
      ..writeByte(24)
      ..write(obj.address)
      ..writeByte(25)
      ..write(obj.maritalStatus)
      ..writeByte(26)
      ..write(obj.multipleBirthBoolean)
      ..writeByte(27)
      ..write(obj.elementMultipleBirthBoolean)
      ..writeByte(29)
      ..write(obj.elementMultipleBirthInteger)
      ..writeByte(30)
      ..write(obj.photo)
      ..writeByte(31)
      ..write(obj.contact)
      ..writeByte(32)
      ..write(obj.communication)
      ..writeByte(33)
      ..write(obj.generalPractitioner)
      ..writeByte(34)
      ..write(obj.managingOrganization)
      ..writeByte(35)
      ..write(obj.link);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return Patient(
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
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    birthDate: json['birthDate'] as String,
    elementBirthDate: json['elementBirthDate'] == null
        ? null
        : Element.fromJson(json['elementBirthDate'] as Map<String, dynamic>),
    deceasedBoolean: json['deceasedBoolean'] as bool,
    elementDeceasedBoolean: json['elementDeceasedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedBoolean'] as Map<String, dynamic>),
    deceasedDateTime: json['deceasedDateTime'] as String,
    elementDeceasedDateTime: json['elementDeceasedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedDateTime'] as Map<String, dynamic>),
    address: (json['address'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maritalStatus: json['maritalStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['maritalStatus'] as Map<String, dynamic>),
    multipleBirthBoolean: json['multipleBirthBoolean'] as bool,
    elementMultipleBirthBoolean: json['elementMultipleBirthBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementMultipleBirthBoolean'] as Map<String, dynamic>),
    multipleBirthInteger: json['multipleBirthInteger'] as int,
    elementMultipleBirthInteger: json['elementMultipleBirthInteger'] == null
        ? null
        : Element.fromJson(
            json['elementMultipleBirthInteger'] as Map<String, dynamic>),
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : Patient_Contact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communication: (json['communication'] as List)
        ?.map((e) => e == null
            ? null
            : Patient_Communication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    generalPractitioner: (json['generalPractitioner'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    link: (json['link'] as List)
        ?.map((e) =>
            e == null ? null : Patient_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
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
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'birthDate': instance.birthDate,
      'elementBirthDate': instance.elementBirthDate?.toJson(),
      'deceasedBoolean': instance.deceasedBoolean,
      'elementDeceasedBoolean': instance.elementDeceasedBoolean?.toJson(),
      'deceasedDateTime': instance.deceasedDateTime,
      'elementDeceasedDateTime': instance.elementDeceasedDateTime?.toJson(),
      'address': instance.address?.map((e) => e?.toJson())?.toList(),
      'maritalStatus': instance.maritalStatus?.toJson(),
      'multipleBirthBoolean': instance.multipleBirthBoolean,
      'elementMultipleBirthBoolean':
          instance.elementMultipleBirthBoolean?.toJson(),
      'multipleBirthInteger': instance.multipleBirthInteger,
      'elementMultipleBirthInteger':
          instance.elementMultipleBirthInteger?.toJson(),
      'photo': instance.photo?.map((e) => e?.toJson())?.toList(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'communication':
          instance.communication?.map((e) => e?.toJson())?.toList(),
      'generalPractitioner':
          instance.generalPractitioner?.map((e) => e?.toJson())?.toList(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

Patient_Contact _$Patient_ContactFromJson(Map<String, dynamic> json) {
  return Patient_Contact(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relationship: (json['relationship'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    gender: json['gender'] as String,
    elementGender: json['elementGender'] == null
        ? null
        : Element.fromJson(json['elementGender'] as Map<String, dynamic>),
    organization: json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Patient_ContactToJson(Patient_Contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'relationship': instance.relationship?.map((e) => e?.toJson())?.toList(),
      'name': instance.name?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'address': instance.address?.toJson(),
      'gender': instance.gender,
      'elementGender': instance.elementGender?.toJson(),
      'organization': instance.organization?.toJson(),
      'period': instance.period?.toJson(),
    };

Patient_Communication _$Patient_CommunicationFromJson(
    Map<String, dynamic> json) {
  return Patient_Communication(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    language: json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
    preferred: json['preferred'] as bool,
    elementPreferred: json['elementPreferred'] == null
        ? null
        : Element.fromJson(json['elementPreferred'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Patient_CommunicationToJson(
        Patient_Communication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'language': instance.language?.toJson(),
      'preferred': instance.preferred,
      'elementPreferred': instance.elementPreferred?.toJson(),
    };

Patient_Link _$Patient_LinkFromJson(Map<String, dynamic> json) {
  return Patient_Link(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    other: json['other'] == null
        ? null
        : Reference.fromJson(json['other'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Patient_LinkToJson(Patient_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'other': instance.other?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
    };
