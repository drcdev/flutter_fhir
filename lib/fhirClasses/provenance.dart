import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 166)
class Provenance {

	static Future<Provenance> newInstance({
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
		List<Reference> target,
		Period occurredPeriod,
		String occurredDateTime,
		Element elementOccurredDateTime,
		DateTime recorded,
		Element elementRecorded,
		List<String> policy,
		List<Element> elementPolicy,
		Reference location,
		List<CodeableConcept> reason,
		CodeableConcept activity,
		List<Provenance_Agent> agent,
		List<Provenance_Entity> entity,
		List<Signature> signature}) async {
	Provenance newProvenance = new Provenance(
			id: await newId('Provenance'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			target: target,
			occurredPeriod: occurredPeriod,
			occurredDateTime: occurredDateTime,
			elementOccurredDateTime: elementOccurredDateTime,
			recorded: recorded,
			elementRecorded: elementRecorded,
			policy: policy,
			elementPolicy: elementPolicy,
			location: location,
			reason: reason,
			activity: activity,
			agent: agent,
			entity: entity,
			signature: signature);
	var provenanceBox = await Hive.openBox<Provenance>('ProvenanceBox');
	provenanceBox.put(newProvenance.id, newProvenance);
	return newProvenance;
}
  @HiveField(0)
  final String resourceType= 'Provenance';
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
  List<Reference> target;
  @HiveField(12)
  Period occurredPeriod;
  @HiveField(13)
  String occurredDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(14)
  Element elementOccurredDateTime;
  @HiveField(15)
  DateTime recorded;
  @HiveField(16)
  Element elementRecorded;
  @HiveField(17)
  List<String> policy;
  @HiveField(18)
  List<Element> elementPolicy;
  @HiveField(19)
  Reference location;
  @HiveField(20)
  List<CodeableConcept> reason;
  @HiveField(21)
  CodeableConcept activity;
  @HiveField(22)
  List<Provenance_Agent> agent;
  @HiveField(23)
  List<Provenance_Entity> entity;
  @HiveField(24)
  List<Signature> signature;

Provenance(
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
    @required this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    this.elementOccurredDateTime,
    this.recorded,
    this.elementRecorded,
    this.policy,
    this.elementPolicy,
    this.location,
    this.reason,
    this.activity,
    @required this.agent,
    this.entity,
    this.signature
    });

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() => _$ProvenanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Agent {

	static Future<Provenance_Agent> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<CodeableConcept> role,
		Reference who,
		Reference onBehalfOf}) async {
	Provenance_Agent newProvenance_Agent = new Provenance_Agent(
			id: await newId('Provenance_Agent'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			role: role,
			who: who,
			onBehalfOf: onBehalfOf);
	var provenance_AgentBox = await Hive.openBox<Provenance_Agent>('Provenance_AgentBox');
	provenance_AgentBox.put(newProvenance_Agent.id, newProvenance_Agent);
	return newProvenance_Agent;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> role;
  Reference who;
  Reference onBehalfOf;

Provenance_Agent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.role,
    @required this.who,
    this.onBehalfOf
    });

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Entity {

	static Future<Provenance_Entity> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String role,
		Element elementRole,
		Reference what,
		List<Provenance_Agent> agent}) async {
	Provenance_Entity newProvenance_Entity = new Provenance_Entity(
			id: await newId('Provenance_Entity'),
			extension: extension,
			modifierExtension: modifierExtension,
			role: role,
			elementRole: elementRole,
			what: what,
			agent: agent);
	var provenance_EntityBox = await Hive.openBox<Provenance_Entity>('Provenance_EntityBox');
	provenance_EntityBox.put(newProvenance_Entity.id, newProvenance_Entity);
	return newProvenance_Entity;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String role; // <code> enum: derivation/revision/quotation/source/removal;
  Element elementRole;
  Reference what;
  List<Provenance_Agent> agent;

Provenance_Entity(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.elementRole,
    @required this.what,
    this.agent
    });

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) => _$Provenance_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_EntityToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProvenanceAdapter extends TypeAdapter<Provenance> {
  @override
  final typeId = 166;

  @override
  Provenance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Provenance(
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
      target: (fields[11] as List)?.cast<Reference>(),
      occurredPeriod: fields[12] as Period,
      occurredDateTime: fields[13] as String,
      elementOccurredDateTime: fields[14] as Element,
      recorded: fields[15] as DateTime,
      elementRecorded: fields[16] as Element,
      policy: (fields[17] as List)?.cast<String>(),
      elementPolicy: (fields[18] as List)?.cast<Element>(),
      location: fields[19] as Reference,
      reason: (fields[20] as List)?.cast<CodeableConcept>(),
      activity: fields[21] as CodeableConcept,
      agent: (fields[22] as List)?.cast<Provenance_Agent>(),
      entity: (fields[23] as List)?.cast<Provenance_Entity>(),
      signature: (fields[24] as List)?.cast<Signature>(),
    );
  }

  @override
  void write(BinaryWriter writer, Provenance obj) {
    writer
      ..writeByte(25)
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
      ..write(obj.target)
      ..writeByte(12)
      ..write(obj.occurredPeriod)
      ..writeByte(13)
      ..write(obj.occurredDateTime)
      ..writeByte(14)
      ..write(obj.elementOccurredDateTime)
      ..writeByte(15)
      ..write(obj.recorded)
      ..writeByte(16)
      ..write(obj.elementRecorded)
      ..writeByte(17)
      ..write(obj.policy)
      ..writeByte(18)
      ..write(obj.elementPolicy)
      ..writeByte(19)
      ..write(obj.location)
      ..writeByte(20)
      ..write(obj.reason)
      ..writeByte(21)
      ..write(obj.activity)
      ..writeByte(22)
      ..write(obj.agent)
      ..writeByte(23)
      ..write(obj.entity)
      ..writeByte(24)
      ..write(obj.signature);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Provenance _$ProvenanceFromJson(Map<String, dynamic> json) {
  return Provenance(
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
    target: (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurredPeriod: json['occurredPeriod'] == null
        ? null
        : Period.fromJson(json['occurredPeriod'] as Map<String, dynamic>),
    occurredDateTime: json['occurredDateTime'] as String,
    elementOccurredDateTime: json['elementOccurredDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurredDateTime'] as Map<String, dynamic>),
    recorded: json['recorded'] == null
        ? null
        : DateTime.parse(json['recorded'] as String),
    elementRecorded: json['elementRecorded'] == null
        ? null
        : Element.fromJson(json['elementRecorded'] as Map<String, dynamic>),
    policy: (json['policy'] as List)?.map((e) => e as String)?.toList(),
    elementPolicy: (json['elementPolicy'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    reason: (json['reason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activity: json['activity'] == null
        ? null
        : CodeableConcept.fromJson(json['activity'] as Map<String, dynamic>),
    agent: (json['agent'] as List)
        ?.map((e) => e == null
            ? null
            : Provenance_Agent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entity: (json['entity'] as List)
        ?.map((e) => e == null
            ? null
            : Provenance_Entity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    signature: (json['signature'] as List)
        ?.map((e) =>
            e == null ? null : Signature.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProvenanceToJson(Provenance instance) =>
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
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'occurredPeriod': instance.occurredPeriod?.toJson(),
      'occurredDateTime': instance.occurredDateTime,
      'elementOccurredDateTime': instance.elementOccurredDateTime?.toJson(),
      'recorded': instance.recorded?.toIso8601String(),
      'elementRecorded': instance.elementRecorded?.toJson(),
      'policy': instance.policy,
      'elementPolicy':
          instance.elementPolicy?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'reason': instance.reason?.map((e) => e?.toJson())?.toList(),
      'activity': instance.activity?.toJson(),
      'agent': instance.agent?.map((e) => e?.toJson())?.toList(),
      'entity': instance.entity?.map((e) => e?.toJson())?.toList(),
      'signature': instance.signature?.map((e) => e?.toJson())?.toList(),
    };

Provenance_Agent _$Provenance_AgentFromJson(Map<String, dynamic> json) {
  return Provenance_Agent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    role: (json['role'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    who: json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Provenance_AgentToJson(Provenance_Agent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'role': instance.role?.map((e) => e?.toJson())?.toList(),
      'who': instance.who?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
    };

Provenance_Entity _$Provenance_EntityFromJson(Map<String, dynamic> json) {
  return Provenance_Entity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] as String,
    elementRole: json['elementRole'] == null
        ? null
        : Element.fromJson(json['elementRole'] as Map<String, dynamic>),
    what: json['what'] == null
        ? null
        : Reference.fromJson(json['what'] as Map<String, dynamic>),
    agent: (json['agent'] as List)
        ?.map((e) => e == null
            ? null
            : Provenance_Agent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Provenance_EntityToJson(Provenance_Entity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'role': instance.role,
      'elementRole': instance.elementRole?.toJson(),
      'what': instance.what?.toJson(),
      'agent': instance.agent?.map((e) => e?.toJson())?.toList(),
    };
