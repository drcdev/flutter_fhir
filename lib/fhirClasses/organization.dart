import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

class Organization {
  static Future<Organization> newInstance({
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
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Organization';
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
  List<CodeableConcept> type;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  List<String> alias;
  @HiveField(18)
  List<Element> elementAlias;
  @HiveField(19)
  List<ContactPoint> telecom;
  @HiveField(20)
  List<Address> address;
  @HiveField(21)
  Reference partOf;
  @HiveField(22)
  List<Organization_Contact> contact;
  @HiveField(23)
  List<Reference> endpoint;

  Organization({
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

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}

class Organization_Contact {
  static Future<Organization_Contact> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept purpose,
    HumanName name,
    List<ContactPoint> telecom,
    Address address,
  }) async {
    var fhirDb = new DatabaseHelper();
    Organization_Contact newOrganization_Contact = new Organization_Contact(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      purpose: purpose,
      name: name,
      telecom: telecom,
      address: address,
    );
    return newOrganization_Contact;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept purpose;
  @HiveField(4)
  HumanName name;
  @HiveField(5)
  List<ContactPoint> telecom;
  @HiveField(6)
  Address address;

  Organization_Contact({
    this.id,
    this.extension,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  factory Organization_Contact.fromJson(Map<String, dynamic> json) =>
      _$Organization_ContactFromJson(json);
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

Map<String, dynamic> _$OrganizationToJson(Organization instance) {
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
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('alias', instance.alias);
  writeNotNull(
      'elementAlias', instance.elementAlias?.map((e) => e?.toJson())?.toList());
  writeNotNull('telecom', instance.telecom?.map((e) => e?.toJson())?.toList());
  writeNotNull('address', instance.address?.map((e) => e?.toJson())?.toList());
  writeNotNull('partOf', instance.partOf?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'endpoint', instance.endpoint?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    Organization_Contact instance) {
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
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('telecom', instance.telecom?.map((e) => e?.toJson())?.toList());
  writeNotNull('address', instance.address?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrganizationAdapter extends TypeAdapter<Organization> {
  @override
  Organization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Organization(
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
      type: (fields[14] as List)?.cast<CodeableConcept>(),
      name: fields[15] as String,
      elementName: fields[16] as Element,
      alias: (fields[17] as List)?.cast<String>(),
      elementAlias: (fields[18] as List)?.cast<Element>(),
      telecom: (fields[19] as List)?.cast<ContactPoint>(),
      address: (fields[20] as List)?.cast<Address>(),
      partOf: fields[21] as Reference,
      contact: (fields[22] as List)?.cast<Organization_Contact>(),
      endpoint: (fields[23] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Organization obj) {
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
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.alias)
      ..writeByte(18)
      ..write(obj.elementAlias)
      ..writeByte(19)
      ..write(obj.telecom)
      ..writeByte(20)
      ..write(obj.address)
      ..writeByte(21)
      ..write(obj.partOf)
      ..writeByte(22)
      ..write(obj.contact)
      ..writeByte(23)
      ..write(obj.endpoint);
  }
}

class Organization_ContactAdapter extends TypeAdapter<Organization_Contact> {
  @override
  Organization_Contact read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Organization_Contact(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      purpose: fields[3] as CodeableConcept,
      name: fields[4] as HumanName,
      telecom: (fields[5] as List)?.cast<ContactPoint>(),
      address: fields[6] as Address,
    );
  }

  @override
  void write(BinaryWriter writer, Organization_Contact obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.purpose)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.telecom)
      ..writeByte(6)
      ..write(obj.address);
  }
}
