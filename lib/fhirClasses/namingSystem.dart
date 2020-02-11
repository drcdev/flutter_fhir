import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 149)
class NamingSystem {

	static Future<NamingSystem> newInstance({
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
		String name,
		Element elementName,
		String status,
		Element elementStatus,
		String kind,
		Element elementKind,
		DateTime date,
		Element elementDate,
		String publisher,
		Element elementPublisher,
		List<ContactDetail> contact,
		String responsible,
		Element elementResponsible,
		CodeableConcept type,
		String description,
		Element elementDescription,
		List<UsageContext> useContext,
		List<CodeableConcept> jurisdiction,
		String usage,
		Element elementUsage,
		List<NamingSystem_UniqueId> uniqueId}) async {
	 return NamingSystem(
			id: await newEntry('NamingSystem'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			status: status,
			elementStatus: elementStatus,
			kind: kind,
			elementKind: elementKind,
			date: date,
			elementDate: elementDate,
			publisher: publisher,
			elementPublisher: elementPublisher,
			contact: contact,
			responsible: responsible,
			elementResponsible: elementResponsible,
			type: type,
			description: description,
			elementDescription: elementDescription,
			useContext: useContext,
			jurisdiction: jurisdiction,
			usage: usage,
			elementUsage: elementUsage,
			uniqueId: uniqueId);
	}

  @HiveField(0)
  final String resourceType= 'NamingSystem';
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
  String name;
  @HiveField(12)
  Element elementName;
  @HiveField(13)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(14)
  Element elementStatus;
  @HiveField(15)
  String kind; // <code> enum: codesystem/identifier/root;
  @HiveField(16)
  Element elementKind;
  @HiveField(17)
  DateTime date;
  @HiveField(18)
  Element elementDate;
  @HiveField(19)
  String publisher;
  @HiveField(20)
  Element elementPublisher;
  @HiveField(21)
  List<ContactDetail> contact;
  @HiveField(22)
  String responsible;
  @HiveField(23)
  Element elementResponsible;
  @HiveField(24)
  CodeableConcept type;
  @HiveField(25)
  String description;
  @HiveField(26)
  Element elementDescription;
  @HiveField(27)
  List<UsageContext> useContext;
  @HiveField(28)
  List<CodeableConcept> jurisdiction;
  @HiveField(29)
  String usage;
  @HiveField(30)
  Element elementUsage;
  @HiveField(31)
  List<NamingSystem_UniqueId> uniqueId;

NamingSystem(
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
    this.name,
    this.elementName,
    this.status,
    this.elementStatus,
    this.kind,
    this.elementKind,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.responsible,
    this.elementResponsible,
    this.type,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.usage,
    this.elementUsage,
    @required this.uniqueId
    });

  factory NamingSystem.fromJson(Map<String, dynamic> json) => _$NamingSystemFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NamingSystem_UniqueId {

	static Future<NamingSystem_UniqueId> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		String value,
		Element elementValue,
		bool preferred,
		Element elementPreferred,
		String comment,
		Element elementComment,
		Period period}) async {
	 return NamingSystem_UniqueId(
			id: await newEntry('NamingSystem_UniqueId'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			value: value,
			elementValue: elementValue,
			preferred: preferred,
			elementPreferred: elementPreferred,
			comment: comment,
			elementComment: elementComment,
			period: period);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type; // <code> enum: oid/uuid/uri/other;
  Element elementType;
  String value;
  Element elementValue;
  bool preferred;
  Element elementPreferred;
  String comment;
  Element elementComment;
  Period period;

NamingSystem_UniqueId(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.value,
    this.elementValue,
    this.preferred,
    this.elementPreferred,
    this.comment,
    this.elementComment,
    this.period
    });

  factory NamingSystem_UniqueId.fromJson(Map<String, dynamic> json) => _$NamingSystem_UniqueIdFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystem_UniqueIdToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NamingSystemAdapter extends TypeAdapter<NamingSystem> {
  @override
  final typeId = 149;

  @override
  NamingSystem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NamingSystem(
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
      name: fields[11] as String,
      elementName: fields[12] as Element,
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      kind: fields[15] as String,
      elementKind: fields[16] as Element,
      date: fields[17] as DateTime,
      elementDate: fields[18] as Element,
      publisher: fields[19] as String,
      elementPublisher: fields[20] as Element,
      contact: (fields[21] as List)?.cast<ContactDetail>(),
      responsible: fields[22] as String,
      elementResponsible: fields[23] as Element,
      type: fields[24] as CodeableConcept,
      description: fields[25] as String,
      elementDescription: fields[26] as Element,
      useContext: (fields[27] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[28] as List)?.cast<CodeableConcept>(),
      usage: fields[29] as String,
      elementUsage: fields[30] as Element,
      uniqueId: (fields[31] as List)?.cast<NamingSystem_UniqueId>(),
    );
  }

  @override
  void write(BinaryWriter writer, NamingSystem obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.name)
      ..writeByte(12)
      ..write(obj.elementName)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.kind)
      ..writeByte(16)
      ..write(obj.elementKind)
      ..writeByte(17)
      ..write(obj.date)
      ..writeByte(18)
      ..write(obj.elementDate)
      ..writeByte(19)
      ..write(obj.publisher)
      ..writeByte(20)
      ..write(obj.elementPublisher)
      ..writeByte(21)
      ..write(obj.contact)
      ..writeByte(22)
      ..write(obj.responsible)
      ..writeByte(23)
      ..write(obj.elementResponsible)
      ..writeByte(24)
      ..write(obj.type)
      ..writeByte(25)
      ..write(obj.description)
      ..writeByte(26)
      ..write(obj.elementDescription)
      ..writeByte(27)
      ..write(obj.useContext)
      ..writeByte(28)
      ..write(obj.jurisdiction)
      ..writeByte(29)
      ..write(obj.usage)
      ..writeByte(30)
      ..write(obj.elementUsage)
      ..writeByte(31)
      ..write(obj.uniqueId);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamingSystem _$NamingSystemFromJson(Map<String, dynamic> json) {
  return NamingSystem(
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responsible: json['responsible'] as String,
    elementResponsible: json['elementResponsible'] == null
        ? null
        : Element.fromJson(json['elementResponsible'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usage: json['usage'] as String,
    elementUsage: json['elementUsage'] == null
        ? null
        : Element.fromJson(json['elementUsage'] as Map<String, dynamic>),
    uniqueId: (json['uniqueId'] as List)
        ?.map((e) => e == null
            ? null
            : NamingSystem_UniqueId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NamingSystemToJson(NamingSystem instance) =>
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
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'responsible': instance.responsible,
      'elementResponsible': instance.elementResponsible?.toJson(),
      'type': instance.type?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'usage': instance.usage,
      'elementUsage': instance.elementUsage?.toJson(),
      'uniqueId': instance.uniqueId?.map((e) => e?.toJson())?.toList(),
    };

NamingSystem_UniqueId _$NamingSystem_UniqueIdFromJson(
    Map<String, dynamic> json) {
  return NamingSystem_UniqueId(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    preferred: json['preferred'] as bool,
    elementPreferred: json['elementPreferred'] == null
        ? null
        : Element.fromJson(json['elementPreferred'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NamingSystem_UniqueIdToJson(
        NamingSystem_UniqueId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'preferred': instance.preferred,
      'elementPreferred': instance.elementPreferred?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'period': instance.period?.toJson(),
    };
