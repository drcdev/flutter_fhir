import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class RelatedPerson {
  static Future<RelatedPerson> newInstance({
    String resourceType,
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
    Reference patient,
    List<CodeableConcept> relationship,
    List<HumanName> name,
    List<ContactPoint> telecom,
    String gender,
    Element elementGender,
    String birthDate,
    Element elementBirthDate,
    List<Address> address,
    List<Attachment> photo,
    Period period,
    List<RelatedPerson_Communication> communication,
  }) async {
    var fhirDb = new DatabaseHelper();
    RelatedPerson newRelatedPerson = new RelatedPerson(
      resourceType: 'RelatedPerson',
      id: id ?? await fhirDb.newResourceId('RelatedPerson'),
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
      patient: patient,
      relationship: relationship,
      name: name,
      telecom: telecom,
      gender: gender,
      elementGender: elementGender,
      birthDate: birthDate,
      elementBirthDate: elementBirthDate,
      address: address,
      photo: photo,
      period: period,
      communication: communication,
    );
    newRelatedPerson.meta.createdAt = DateTime.now();
    newRelatedPerson.meta.lastUpdated = newRelatedPerson.meta.createdAt;
    int saved = await fhirDb.saveResource(newRelatedPerson);
    return newRelatedPerson;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'RelatedPerson';
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
  Reference patient;
  @HiveField(15)
  List<CodeableConcept> relationship;
  @HiveField(16)
  List<HumanName> name;
  @HiveField(17)
  List<ContactPoint> telecom;
  @HiveField(18)
  String gender;
  @HiveField(19)
  Element elementGender;
  @HiveField(20)
  String birthDate;
  @HiveField(21)
  Element elementBirthDate;
  @HiveField(22)
  List<Address> address;
  @HiveField(23)
  List<Attachment> photo;
  @HiveField(24)
  Period period;
  @HiveField(25)
  List<RelatedPerson_Communication> communication;

  RelatedPerson({
    @required this.resourceType,
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
    @required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.elementGender,
    this.birthDate,
    this.elementBirthDate,
    this.address,
    this.photo,
    this.period,
    this.communication,
  });

  factory RelatedPerson.fromJson(Map<String, dynamic> json) =>
      _$RelatedPersonFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPersonToJson(this);
}

class RelatedPerson_Communication {
  static Future<RelatedPerson_Communication> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept language,
    bool preferred,
    Element elementPreferred,
  }) async {
    var fhirDb = new DatabaseHelper();
    RelatedPerson_Communication newRelatedPerson_Communication =
        new RelatedPerson_Communication(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      language: language,
      preferred: preferred,
      elementPreferred: elementPreferred,
    );
    return newRelatedPerson_Communication;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept language;
  @HiveField(4)
  bool preferred;
  @HiveField(5)
  Element elementPreferred;

  RelatedPerson_Communication({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.language,
    this.preferred,
    this.elementPreferred,
  });

  factory RelatedPerson_Communication.fromJson(Map<String, dynamic> json) =>
      _$RelatedPerson_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPerson_CommunicationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedPerson _$RelatedPersonFromJson(Map<String, dynamic> json) {
  return RelatedPerson(
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    relationship: (json['relationship'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
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
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    communication: (json['communication'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedPerson_Communication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RelatedPersonToJson(RelatedPerson instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('active', instance.active);
  writeNotNull('elementActive', instance.elementActive?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull(
      'relationship', instance.relationship?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name?.map((e) => e?.toJson())?.toList());
  writeNotNull('telecom', instance.telecom?.map((e) => e?.toJson())?.toList());
  writeNotNull('gender', instance.gender);
  writeNotNull('elementGender', instance.elementGender?.toJson());
  writeNotNull('birthDate', instance.birthDate);
  writeNotNull('elementBirthDate', instance.elementBirthDate?.toJson());
  writeNotNull('address', instance.address?.map((e) => e?.toJson())?.toList());
  writeNotNull('photo', instance.photo?.map((e) => e?.toJson())?.toList());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('communication',
      instance.communication?.map((e) => e?.toJson())?.toList());
  return val;
}

RelatedPerson_Communication _$RelatedPerson_CommunicationFromJson(
    Map<String, dynamic> json) {
  return RelatedPerson_Communication(
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

Map<String, dynamic> _$RelatedPerson_CommunicationToJson(
    RelatedPerson_Communication instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('preferred', instance.preferred);
  writeNotNull('elementPreferred', instance.elementPreferred?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RelatedPersonAdapter extends TypeAdapter<RelatedPerson> {
  @override
  RelatedPerson read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RelatedPerson(
      resourceType: fields[0] as String,
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
      patient: fields[14] as Reference,
      relationship: (fields[15] as List)?.cast<CodeableConcept>(),
      name: (fields[16] as List)?.cast<HumanName>(),
      telecom: (fields[17] as List)?.cast<ContactPoint>(),
      gender: fields[18] as String,
      elementGender: fields[19] as Element,
      birthDate: fields[20] as String,
      elementBirthDate: fields[21] as Element,
      address: (fields[22] as List)?.cast<Address>(),
      photo: (fields[23] as List)?.cast<Attachment>(),
      period: fields[24] as Period,
      communication: (fields[25] as List)?.cast<RelatedPerson_Communication>(),
    );
  }

  @override
  void write(BinaryWriter writer, RelatedPerson obj) {
    writer
      ..writeByte(26)
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
      ..write(obj.patient)
      ..writeByte(15)
      ..write(obj.relationship)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.telecom)
      ..writeByte(18)
      ..write(obj.gender)
      ..writeByte(19)
      ..write(obj.elementGender)
      ..writeByte(20)
      ..write(obj.birthDate)
      ..writeByte(21)
      ..write(obj.elementBirthDate)
      ..writeByte(22)
      ..write(obj.address)
      ..writeByte(23)
      ..write(obj.photo)
      ..writeByte(24)
      ..write(obj.period)
      ..writeByte(25)
      ..write(obj.communication);
  }
}

class RelatedPerson_CommunicationAdapter
    extends TypeAdapter<RelatedPerson_Communication> {
  @override
  RelatedPerson_Communication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RelatedPerson_Communication(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      language: fields[3] as CodeableConcept,
      preferred: fields[4] as bool,
      elementPreferred: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, RelatedPerson_Communication obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(4)
      ..write(obj.preferred)
      ..writeByte(5)
      ..write(obj.elementPreferred);
  }
}
