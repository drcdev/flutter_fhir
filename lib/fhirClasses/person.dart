import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

class Person {
  static Future<Person> newInstance({
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
    List<Person_Link> link,
  }) async {
    var fhirDb = new DatabaseHelper();
    Person newPerson = new Person(
      resourceType: 'Person',
      id: id ?? await fhirDb.newResourceId('Person'),
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
      link: link,
    );
    newPerson.meta.createdAt = DateTime.now();
    newPerson.meta.lastUpdated = newPerson.meta.createdAt;
    int saved = await fhirDb.saveResource(newPerson);
    return newPerson;
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
  String resourceType = 'Person';
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
  List<HumanName> name;
  @HiveField(13)
  List<ContactPoint> telecom;
  @HiveField(14)
  String gender;
  @HiveField(15)
  Element elementGender;
  @HiveField(16)
  String birthDate;
  @HiveField(17)
  Element elementBirthDate;
  @HiveField(18)
  List<Address> address;
  @HiveField(19)
  Attachment photo;
  @HiveField(20)
  Reference managingOrganization;
  @HiveField(21)
  bool active;
  @HiveField(22)
  Element elementActive;
  @HiveField(23)
  List<Person_Link> link;

  Person({
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
    this.link,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

class Person_Link {
  static Future<Person_Link> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference target,
    String assurance,
    Element elementAssurance,
  }) async {
    var fhirDb = new DatabaseHelper();
    Person_Link newPerson_Link = new Person_Link(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      target: target,
      assurance: assurance,
      elementAssurance: elementAssurance,
    );
    return newPerson_Link;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference target;
  @HiveField(4)
  String assurance;
  @HiveField(5)
  Element elementAssurance;

  Person_Link({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.target,
    this.assurance,
    this.elementAssurance,
  });

  factory Person_Link.fromJson(Map<String, dynamic> json) =>
      _$Person_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Person_LinkToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
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

Map<String, dynamic> _$PersonToJson(Person instance) {
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
  writeNotNull('name', instance.name?.map((e) => e?.toJson())?.toList());
  writeNotNull('telecom', instance.telecom?.map((e) => e?.toJson())?.toList());
  writeNotNull('gender', instance.gender);
  writeNotNull('elementGender', instance.elementGender?.toJson());
  writeNotNull('birthDate', instance.birthDate);
  writeNotNull('elementBirthDate', instance.elementBirthDate?.toJson());
  writeNotNull('address', instance.address?.map((e) => e?.toJson())?.toList());
  writeNotNull('photo', instance.photo?.toJson());
  writeNotNull('managingOrganization', instance.managingOrganization?.toJson());
  writeNotNull('active', instance.active);
  writeNotNull('elementActive', instance.elementActive?.toJson());
  writeNotNull('link', instance.link?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Person_LinkToJson(Person_Link instance) {
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
  writeNotNull('target', instance.target?.toJson());
  writeNotNull('assurance', instance.assurance);
  writeNotNull('elementAssurance', instance.elementAssurance?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonAdapter extends TypeAdapter<Person> {
  @override
  Person read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Person(
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
      name: (fields[12] as List)?.cast<HumanName>(),
      telecom: (fields[13] as List)?.cast<ContactPoint>(),
      gender: fields[14] as String,
      elementGender: fields[15] as Element,
      birthDate: fields[16] as String,
      elementBirthDate: fields[17] as Element,
      address: (fields[18] as List)?.cast<Address>(),
      photo: fields[19] as Attachment,
      managingOrganization: fields[20] as Reference,
      active: fields[21] as bool,
      elementActive: fields[22] as Element,
      link: (fields[23] as List)?.cast<Person_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, Person obj) {
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
      ..write(obj.name)
      ..writeByte(13)
      ..write(obj.telecom)
      ..writeByte(14)
      ..write(obj.gender)
      ..writeByte(15)
      ..write(obj.elementGender)
      ..writeByte(16)
      ..write(obj.birthDate)
      ..writeByte(17)
      ..write(obj.elementBirthDate)
      ..writeByte(18)
      ..write(obj.address)
      ..writeByte(19)
      ..write(obj.photo)
      ..writeByte(20)
      ..write(obj.managingOrganization)
      ..writeByte(21)
      ..write(obj.active)
      ..writeByte(22)
      ..write(obj.elementActive)
      ..writeByte(23)
      ..write(obj.link);
  }
}

class Person_LinkAdapter extends TypeAdapter<Person_Link> {
  @override
  Person_Link read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Person_Link(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      target: fields[3] as Reference,
      assurance: fields[4] as String,
      elementAssurance: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Person_Link obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.target)
      ..writeByte(4)
      ..write(obj.assurance)
      ..writeByte(5)
      ..write(obj.elementAssurance);
  }
}
