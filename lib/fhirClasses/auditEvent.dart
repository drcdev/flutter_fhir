import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 62)
class AuditEvent {

	static Future<AuditEvent> newInstance({
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
		Coding type,
		List<Coding> subtype,
		String action,
		Element elementAction,
		Period period,
		DateTime recorded,
		Element elementRecorded,
		String outcome,
		Element elementOutcome,
		String outcomeDesc,
		Element elementOutcomeDesc,
		List<CodeableConcept> purposeOfEvent,
		List<AuditEvent_Agent> agent,
		AuditEvent_Source source,
		List<AuditEvent_Entity> entity}) async {
	AuditEvent newAuditEvent = new AuditEvent(
			id: await newId('AuditEvent'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			subtype: subtype,
			action: action,
			elementAction: elementAction,
			period: period,
			recorded: recorded,
			elementRecorded: elementRecorded,
			outcome: outcome,
			elementOutcome: elementOutcome,
			outcomeDesc: outcomeDesc,
			elementOutcomeDesc: elementOutcomeDesc,
			purposeOfEvent: purposeOfEvent,
			agent: agent,
			source: source,
			entity: entity);
	var auditEventBox = await Hive.openBox<AuditEvent>('AuditEventBox');
	auditEventBox.put(newAuditEvent.id, newAuditEvent);
	return newAuditEvent;
}
  @HiveField(0)
  final String resourceType= 'AuditEvent';
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
  Coding type;
  @HiveField(12)
  List<Coding> subtype;
  @HiveField(13)
  String action; // <code> enum: C/R/U/D/E;
  @HiveField(14)
  Element elementAction;
  @HiveField(15)
  Period period;
  @HiveField(16)
  DateTime recorded;
  @HiveField(17)
  Element elementRecorded;
  @HiveField(18)
  String outcome; // <code> enum: 0/4/8/12;
  @HiveField(19)
  Element elementOutcome;
  @HiveField(20)
  String outcomeDesc;
  @HiveField(21)
  Element elementOutcomeDesc;
  @HiveField(22)
  List<CodeableConcept> purposeOfEvent;
  @HiveField(23)
  List<AuditEvent_Agent> agent;
  @HiveField(24)
  AuditEvent_Source source;
  @HiveField(25)
  List<AuditEvent_Entity> entity;

AuditEvent(
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
    @required this.type,
    this.subtype,
    this.action,
    this.elementAction,
    this.period,
    this.recorded,
    this.elementRecorded,
    this.outcome,
    this.elementOutcome,
    this.outcomeDesc,
    this.elementOutcomeDesc,
    this.purposeOfEvent,
    @required this.agent,
    @required this.source,
    this.entity
    });

  factory AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Agent {

	static Future<AuditEvent_Agent> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<CodeableConcept> role,
		Reference who,
		String altId,
		Element elementAltId,
		String name,
		Element elementName,
		bool requestor,
		Element elementRequestor,
		Reference location,
		List<String> policy,
		List<Element> elementPolicy,
		Coding media,
		AuditEvent_Network network,
		List<CodeableConcept> purposeOfUse}) async {
	AuditEvent_Agent newAuditEvent_Agent = new AuditEvent_Agent(
			id: await newId('AuditEvent_Agent'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			role: role,
			who: who,
			altId: altId,
			elementAltId: elementAltId,
			name: name,
			elementName: elementName,
			requestor: requestor,
			elementRequestor: elementRequestor,
			location: location,
			policy: policy,
			elementPolicy: elementPolicy,
			media: media,
			network: network,
			purposeOfUse: purposeOfUse);
	var auditEvent_AgentBox = await Hive.openBox<AuditEvent_Agent>('AuditEvent_AgentBox');
	auditEvent_AgentBox.put(newAuditEvent_Agent.id, newAuditEvent_Agent);
	return newAuditEvent_Agent;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> role;
  Reference who;
  String altId;
  Element elementAltId;
  String name;
  Element elementName;
  bool requestor;
  Element elementRequestor;
  Reference location;
  List<String> policy;
  List<Element> elementPolicy;
  Coding media;
  AuditEvent_Network network;
  List<CodeableConcept> purposeOfUse;

AuditEvent_Agent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.elementAltId,
    this.name,
    this.elementName,
    this.requestor,
    this.elementRequestor,
    this.location,
    this.policy,
    this.elementPolicy,
    this.media,
    this.network,
    this.purposeOfUse
    });

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) => _$AuditEvent_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Network {

	static Future<AuditEvent_Network> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String address,
		Element elementAddress,
		String type,
		Element elementType}) async {
	AuditEvent_Network newAuditEvent_Network = new AuditEvent_Network(
			id: await newId('AuditEvent_Network'),
			extension: extension,
			modifierExtension: modifierExtension,
			address: address,
			elementAddress: elementAddress,
			type: type,
			elementType: elementType);
	var auditEvent_NetworkBox = await Hive.openBox<AuditEvent_Network>('AuditEvent_NetworkBox');
	auditEvent_NetworkBox.put(newAuditEvent_Network.id, newAuditEvent_Network);
	return newAuditEvent_Network;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String address;
  Element elementAddress;
  String type; // <code> enum: 1/2/3/4/5;
  Element elementType;

AuditEvent_Network(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.address,
    this.elementAddress,
    this.type,
    this.elementType
    });

  factory AuditEvent_Network.fromJson(Map<String, dynamic> json) => _$AuditEvent_NetworkFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_NetworkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Source {

	static Future<AuditEvent_Source> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String site,
		Element elementSite,
		Reference observer,
		List<Coding> type}) async {
	AuditEvent_Source newAuditEvent_Source = new AuditEvent_Source(
			id: await newId('AuditEvent_Source'),
			extension: extension,
			modifierExtension: modifierExtension,
			site: site,
			elementSite: elementSite,
			observer: observer,
			type: type);
	var auditEvent_SourceBox = await Hive.openBox<AuditEvent_Source>('AuditEvent_SourceBox');
	auditEvent_SourceBox.put(newAuditEvent_Source.id, newAuditEvent_Source);
	return newAuditEvent_Source;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String site;
  Element elementSite;
  Reference observer;
  List<Coding> type;

AuditEvent_Source(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.site,
    this.elementSite,
    @required this.observer,
    this.type
    });

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) => _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Entity {

	static Future<AuditEvent_Entity> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference what,
		Coding type,
		Coding role,
		Coding lifecycle,
		List<Coding> securityLabel,
		String name,
		Element elementName,
		String description,
		Element elementDescription,
		String query,
		Element elementQuery,
		List<AuditEvent_Detail> detail}) async {
	AuditEvent_Entity newAuditEvent_Entity = new AuditEvent_Entity(
			id: await newId('AuditEvent_Entity'),
			extension: extension,
			modifierExtension: modifierExtension,
			what: what,
			type: type,
			role: role,
			lifecycle: lifecycle,
			securityLabel: securityLabel,
			name: name,
			elementName: elementName,
			description: description,
			elementDescription: elementDescription,
			query: query,
			elementQuery: elementQuery,
			detail: detail);
	var auditEvent_EntityBox = await Hive.openBox<AuditEvent_Entity>('AuditEvent_EntityBox');
	auditEvent_EntityBox.put(newAuditEvent_Entity.id, newAuditEvent_Entity);
	return newAuditEvent_Entity;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference what;
  Coding type;
  Coding role;
  Coding lifecycle;
  List<Coding> securityLabel;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  String query;
  Element elementQuery;
  List<AuditEvent_Detail> detail;

AuditEvent_Entity(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.query,
    this.elementQuery,
    this.detail
    });

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) => _$AuditEvent_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Detail {

	static Future<AuditEvent_Detail> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String type,
		Element elementType,
		String valueString,
		Element elementValueString,
		String valueBase64Binary,
		Element elementValueBase64Binary}) async {
	AuditEvent_Detail newAuditEvent_Detail = new AuditEvent_Detail(
			id: await newId('AuditEvent_Detail'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			elementType: elementType,
			valueString: valueString,
			elementValueString: elementValueString,
			valueBase64Binary: valueBase64Binary,
			elementValueBase64Binary: elementValueBase64Binary);
	var auditEvent_DetailBox = await Hive.openBox<AuditEvent_Detail>('AuditEvent_DetailBox');
	auditEvent_DetailBox.put(newAuditEvent_Detail.id, newAuditEvent_Detail);
	return newAuditEvent_Detail;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
  Element elementValueBase64Binary;

AuditEvent_Detail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.valueString,
    this.elementValueString,
    this.valueBase64Binary,
    this.elementValueBase64Binary
    });

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) => _$AuditEvent_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_DetailToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuditEventAdapter extends TypeAdapter<AuditEvent> {
  @override
  final typeId = 62;

  @override
  AuditEvent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent(
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
      type: fields[11] as Coding,
      subtype: (fields[12] as List)?.cast<Coding>(),
      action: fields[13] as String,
      elementAction: fields[14] as Element,
      period: fields[15] as Period,
      recorded: fields[16] as DateTime,
      elementRecorded: fields[17] as Element,
      outcome: fields[18] as String,
      elementOutcome: fields[19] as Element,
      outcomeDesc: fields[20] as String,
      elementOutcomeDesc: fields[21] as Element,
      purposeOfEvent: (fields[22] as List)?.cast<CodeableConcept>(),
      agent: (fields[23] as List)?.cast<AuditEvent_Agent>(),
      source: fields[24] as AuditEvent_Source,
      entity: (fields[25] as List)?.cast<AuditEvent_Entity>(),
    );
  }

  @override
  void write(BinaryWriter writer, AuditEvent obj) {
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
      ..write(obj.type)
      ..writeByte(12)
      ..write(obj.subtype)
      ..writeByte(13)
      ..write(obj.action)
      ..writeByte(14)
      ..write(obj.elementAction)
      ..writeByte(15)
      ..write(obj.period)
      ..writeByte(16)
      ..write(obj.recorded)
      ..writeByte(17)
      ..write(obj.elementRecorded)
      ..writeByte(18)
      ..write(obj.outcome)
      ..writeByte(19)
      ..write(obj.elementOutcome)
      ..writeByte(20)
      ..write(obj.outcomeDesc)
      ..writeByte(21)
      ..write(obj.elementOutcomeDesc)
      ..writeByte(22)
      ..write(obj.purposeOfEvent)
      ..writeByte(23)
      ..write(obj.agent)
      ..writeByte(24)
      ..write(obj.source)
      ..writeByte(25)
      ..write(obj.entity);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) {
  return AuditEvent(
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
    type: json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    subtype: (json['subtype'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: json['action'] as String,
    elementAction: json['elementAction'] == null
        ? null
        : Element.fromJson(json['elementAction'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    recorded: json['recorded'] == null
        ? null
        : DateTime.parse(json['recorded'] as String),
    elementRecorded: json['elementRecorded'] == null
        ? null
        : Element.fromJson(json['elementRecorded'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    outcomeDesc: json['outcomeDesc'] as String,
    elementOutcomeDesc: json['elementOutcomeDesc'] == null
        ? null
        : Element.fromJson(json['elementOutcomeDesc'] as Map<String, dynamic>),
    purposeOfEvent: (json['purposeOfEvent'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    agent: (json['agent'] as List)
        ?.map((e) => e == null
            ? null
            : AuditEvent_Agent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] == null
        ? null
        : AuditEvent_Source.fromJson(json['source'] as Map<String, dynamic>),
    entity: (json['entity'] as List)
        ?.map((e) => e == null
            ? null
            : AuditEvent_Entity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AuditEventToJson(AuditEvent instance) =>
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
      'type': instance.type?.toJson(),
      'subtype': instance.subtype?.map((e) => e?.toJson())?.toList(),
      'action': instance.action,
      'elementAction': instance.elementAction?.toJson(),
      'period': instance.period?.toJson(),
      'recorded': instance.recorded?.toIso8601String(),
      'elementRecorded': instance.elementRecorded?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'outcomeDesc': instance.outcomeDesc,
      'elementOutcomeDesc': instance.elementOutcomeDesc?.toJson(),
      'purposeOfEvent':
          instance.purposeOfEvent?.map((e) => e?.toJson())?.toList(),
      'agent': instance.agent?.map((e) => e?.toJson())?.toList(),
      'source': instance.source?.toJson(),
      'entity': instance.entity?.map((e) => e?.toJson())?.toList(),
    };

AuditEvent_Agent _$AuditEvent_AgentFromJson(Map<String, dynamic> json) {
  return AuditEvent_Agent(
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
    altId: json['altId'] as String,
    elementAltId: json['elementAltId'] == null
        ? null
        : Element.fromJson(json['elementAltId'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    requestor: json['requestor'] as bool,
    elementRequestor: json['elementRequestor'] == null
        ? null
        : Element.fromJson(json['elementRequestor'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    policy: (json['policy'] as List)?.map((e) => e as String)?.toList(),
    elementPolicy: (json['elementPolicy'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    media: json['media'] == null
        ? null
        : Coding.fromJson(json['media'] as Map<String, dynamic>),
    network: json['network'] == null
        ? null
        : AuditEvent_Network.fromJson(json['network'] as Map<String, dynamic>),
    purposeOfUse: (json['purposeOfUse'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AuditEvent_AgentToJson(AuditEvent_Agent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'role': instance.role?.map((e) => e?.toJson())?.toList(),
      'who': instance.who?.toJson(),
      'altId': instance.altId,
      'elementAltId': instance.elementAltId?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'requestor': instance.requestor,
      'elementRequestor': instance.elementRequestor?.toJson(),
      'location': instance.location?.toJson(),
      'policy': instance.policy,
      'elementPolicy':
          instance.elementPolicy?.map((e) => e?.toJson())?.toList(),
      'media': instance.media?.toJson(),
      'network': instance.network?.toJson(),
      'purposeOfUse': instance.purposeOfUse?.map((e) => e?.toJson())?.toList(),
    };

AuditEvent_Network _$AuditEvent_NetworkFromJson(Map<String, dynamic> json) {
  return AuditEvent_Network(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] as String,
    elementAddress: json['elementAddress'] == null
        ? null
        : Element.fromJson(json['elementAddress'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AuditEvent_NetworkToJson(AuditEvent_Network instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'address': instance.address,
      'elementAddress': instance.elementAddress?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
    };

AuditEvent_Source _$AuditEvent_SourceFromJson(Map<String, dynamic> json) {
  return AuditEvent_Source(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    site: json['site'] as String,
    elementSite: json['elementSite'] == null
        ? null
        : Element.fromJson(json['elementSite'] as Map<String, dynamic>),
    observer: json['observer'] == null
        ? null
        : Reference.fromJson(json['observer'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AuditEvent_SourceToJson(AuditEvent_Source instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'site': instance.site,
      'elementSite': instance.elementSite?.toJson(),
      'observer': instance.observer?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
    };

AuditEvent_Entity _$AuditEvent_EntityFromJson(Map<String, dynamic> json) {
  return AuditEvent_Entity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    what: json['what'] == null
        ? null
        : Reference.fromJson(json['what'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    role: json['role'] == null
        ? null
        : Coding.fromJson(json['role'] as Map<String, dynamic>),
    lifecycle: json['lifecycle'] == null
        ? null
        : Coding.fromJson(json['lifecycle'] as Map<String, dynamic>),
    securityLabel: (json['securityLabel'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    query: json['query'] as String,
    elementQuery: json['elementQuery'] == null
        ? null
        : Element.fromJson(json['elementQuery'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : AuditEvent_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AuditEvent_EntityToJson(AuditEvent_Entity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'what': instance.what?.toJson(),
      'type': instance.type?.toJson(),
      'role': instance.role?.toJson(),
      'lifecycle': instance.lifecycle?.toJson(),
      'securityLabel':
          instance.securityLabel?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'query': instance.query,
      'elementQuery': instance.elementQuery?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

AuditEvent_Detail _$AuditEvent_DetailFromJson(Map<String, dynamic> json) {
  return AuditEvent_Detail(
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
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AuditEvent_DetailToJson(AuditEvent_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
    };
