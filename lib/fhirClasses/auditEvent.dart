import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class AuditEvent {
  static Future<AuditEvent> newInstance({
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
    List<AuditEvent_Entity> entity,
  }) async {
    var fhirDb = new DatabaseHelper();
    AuditEvent newAuditEvent = new AuditEvent(
      resourceType: 'AuditEvent',
      id: id ?? await fhirDb.newResourceId('AuditEvent'),
      meta: meta ?? await Meta.newInstance(),
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
      entity: entity,
    );
    newAuditEvent.meta.createdAt = DateTime.now();
    newAuditEvent.meta.lastUpdated = newAuditEvent.meta.createdAt;
    int saved = await fhirDb.saveResource(newAuditEvent);
    return newAuditEvent;
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
  String resourceType = 'AuditEvent';
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
  String action;
  @HiveField(14)
  Element elementAction;
  @HiveField(15)
  Period period;
  @HiveField(16)
  DateTime recorded;
  @HiveField(17)
  Element elementRecorded;
  @HiveField(18)
  String outcome;
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

  AuditEvent({
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
    this.entity,
  });

  factory AuditEvent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEventToJson(this);
}

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
    List<CodeableConcept> purposeOfUse,
  }) async {
    var fhirDb = new DatabaseHelper();
    AuditEvent_Agent newAuditEvent_Agent = new AuditEvent_Agent(
      id: id,
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
      purposeOfUse: purposeOfUse,
    );
    return newAuditEvent_Agent;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  List<CodeableConcept> role;
  @HiveField(5)
  Reference who;
  @HiveField(6)
  String altId;
  @HiveField(7)
  Element elementAltId;
  @HiveField(8)
  String name;
  @HiveField(9)
  Element elementName;
  @HiveField(10)
  bool requestor;
  @HiveField(11)
  Element elementRequestor;
  @HiveField(12)
  Reference location;
  @HiveField(13)
  List<String> policy;
  @HiveField(14)
  List<Element> elementPolicy;
  @HiveField(15)
  Coding media;
  @HiveField(16)
  AuditEvent_Network network;
  @HiveField(17)
  List<CodeableConcept> purposeOfUse;

  AuditEvent_Agent({
    this.id,
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
    this.purposeOfUse,
  });

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_AgentToJson(this);
}

class AuditEvent_Network {
  static Future<AuditEvent_Network> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String address,
    Element elementAddress,
    String type,
    Element elementType,
  }) async {
    var fhirDb = new DatabaseHelper();
    AuditEvent_Network newAuditEvent_Network = new AuditEvent_Network(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      address: address,
      elementAddress: elementAddress,
      type: type,
      elementType: elementType,
    );
    return newAuditEvent_Network;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String address;
  @HiveField(4)
  Element elementAddress;
  @HiveField(5)
  String type;
  @HiveField(6)
  Element elementType;

  AuditEvent_Network({
    this.id,
    this.extension,
    this.modifierExtension,
    this.address,
    this.elementAddress,
    this.type,
    this.elementType,
  });

  factory AuditEvent_Network.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_NetworkFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_NetworkToJson(this);
}

class AuditEvent_Source {
  static Future<AuditEvent_Source> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String site,
    Element elementSite,
    Reference observer,
    List<Coding> type,
  }) async {
    var fhirDb = new DatabaseHelper();
    AuditEvent_Source newAuditEvent_Source = new AuditEvent_Source(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      site: site,
      elementSite: elementSite,
      observer: observer,
      type: type,
    );
    return newAuditEvent_Source;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String site;
  @HiveField(4)
  Element elementSite;
  @HiveField(5)
  Reference observer;
  @HiveField(6)
  List<Coding> type;

  AuditEvent_Source({
    this.id,
    this.extension,
    this.modifierExtension,
    this.site,
    this.elementSite,
    @required this.observer,
    this.type,
  });

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_SourceToJson(this);
}

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
    List<AuditEvent_Detail> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    AuditEvent_Entity newAuditEvent_Entity = new AuditEvent_Entity(
      id: id,
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
      detail: detail,
    );
    return newAuditEvent_Entity;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference what;
  @HiveField(4)
  Coding type;
  @HiveField(5)
  Coding role;
  @HiveField(6)
  Coding lifecycle;
  @HiveField(7)
  List<Coding> securityLabel;
  @HiveField(8)
  String name;
  @HiveField(9)
  Element elementName;
  @HiveField(10)
  String description;
  @HiveField(11)
  Element elementDescription;
  @HiveField(12)
  String query;
  @HiveField(13)
  Element elementQuery;
  @HiveField(14)
  List<AuditEvent_Detail> detail;

  AuditEvent_Entity({
    this.id,
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
    this.detail,
  });

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_EntityToJson(this);
}

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
    Element elementValueBase64Binary,
  }) async {
    var fhirDb = new DatabaseHelper();
    AuditEvent_Detail newAuditEvent_Detail = new AuditEvent_Detail(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      valueString: valueString,
      elementValueString: elementValueString,
      valueBase64Binary: valueBase64Binary,
      elementValueBase64Binary: elementValueBase64Binary,
    );
    return newAuditEvent_Detail;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String type;
  @HiveField(4)
  Element elementType;
  @HiveField(5)
  String valueString;
  @HiveField(6)
  Element elementValueString;
  @HiveField(7)
  String valueBase64Binary;
  @HiveField(8)
  Element elementValueBase64Binary;

  AuditEvent_Detail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.valueString,
    this.elementValueString,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
  });

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_DetailToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) {
  return AuditEvent(
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

Map<String, dynamic> _$AuditEventToJson(AuditEvent instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subtype', instance.subtype?.map((e) => e?.toJson())?.toList());
  writeNotNull('action', instance.action);
  writeNotNull('elementAction', instance.elementAction?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('recorded', instance.recorded?.toIso8601String());
  writeNotNull('elementRecorded', instance.elementRecorded?.toJson());
  writeNotNull('outcome', instance.outcome);
  writeNotNull('elementOutcome', instance.elementOutcome?.toJson());
  writeNotNull('outcomeDesc', instance.outcomeDesc);
  writeNotNull('elementOutcomeDesc', instance.elementOutcomeDesc?.toJson());
  writeNotNull('purposeOfEvent',
      instance.purposeOfEvent?.map((e) => e?.toJson())?.toList());
  writeNotNull('agent', instance.agent?.map((e) => e?.toJson())?.toList());
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('entity', instance.entity?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$AuditEvent_AgentToJson(AuditEvent_Agent instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('role', instance.role?.map((e) => e?.toJson())?.toList());
  writeNotNull('who', instance.who?.toJson());
  writeNotNull('altId', instance.altId);
  writeNotNull('elementAltId', instance.elementAltId?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('requestor', instance.requestor);
  writeNotNull('elementRequestor', instance.elementRequestor?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('policy', instance.policy);
  writeNotNull('elementPolicy',
      instance.elementPolicy?.map((e) => e?.toJson())?.toList());
  writeNotNull('media', instance.media?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull(
      'purposeOfUse', instance.purposeOfUse?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$AuditEvent_NetworkToJson(AuditEvent_Network instance) {
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
  writeNotNull('address', instance.address);
  writeNotNull('elementAddress', instance.elementAddress?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  return val;
}

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

Map<String, dynamic> _$AuditEvent_SourceToJson(AuditEvent_Source instance) {
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
  writeNotNull('site', instance.site);
  writeNotNull('elementSite', instance.elementSite?.toJson());
  writeNotNull('observer', instance.observer?.toJson());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$AuditEvent_EntityToJson(AuditEvent_Entity instance) {
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
  writeNotNull('what', instance.what?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('lifecycle', instance.lifecycle?.toJson());
  writeNotNull('securityLabel',
      instance.securityLabel?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('query', instance.query);
  writeNotNull('elementQuery', instance.elementQuery?.toJson());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$AuditEvent_DetailToJson(AuditEvent_Detail instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueBase64Binary', instance.valueBase64Binary);
  writeNotNull(
      'elementValueBase64Binary', instance.elementValueBase64Binary?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuditEventAdapter extends TypeAdapter<AuditEvent> {
  @override
  AuditEvent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent(
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

class AuditEvent_AgentAdapter extends TypeAdapter<AuditEvent_Agent> {
  @override
  AuditEvent_Agent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent_Agent(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      role: (fields[4] as List)?.cast<CodeableConcept>(),
      who: fields[5] as Reference,
      altId: fields[6] as String,
      elementAltId: fields[7] as Element,
      name: fields[8] as String,
      elementName: fields[9] as Element,
      requestor: fields[10] as bool,
      elementRequestor: fields[11] as Element,
      location: fields[12] as Reference,
      policy: (fields[13] as List)?.cast<String>(),
      elementPolicy: (fields[14] as List)?.cast<Element>(),
      media: fields[15] as Coding,
      network: fields[16] as AuditEvent_Network,
      purposeOfUse: (fields[17] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, AuditEvent_Agent obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.role)
      ..writeByte(5)
      ..write(obj.who)
      ..writeByte(6)
      ..write(obj.altId)
      ..writeByte(7)
      ..write(obj.elementAltId)
      ..writeByte(8)
      ..write(obj.name)
      ..writeByte(9)
      ..write(obj.elementName)
      ..writeByte(10)
      ..write(obj.requestor)
      ..writeByte(11)
      ..write(obj.elementRequestor)
      ..writeByte(12)
      ..write(obj.location)
      ..writeByte(13)
      ..write(obj.policy)
      ..writeByte(14)
      ..write(obj.elementPolicy)
      ..writeByte(15)
      ..write(obj.media)
      ..writeByte(16)
      ..write(obj.network)
      ..writeByte(17)
      ..write(obj.purposeOfUse);
  }
}

class AuditEvent_NetworkAdapter extends TypeAdapter<AuditEvent_Network> {
  @override
  AuditEvent_Network read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent_Network(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      address: fields[3] as String,
      elementAddress: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, AuditEvent_Network obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.elementAddress)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType);
  }
}

class AuditEvent_SourceAdapter extends TypeAdapter<AuditEvent_Source> {
  @override
  AuditEvent_Source read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent_Source(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      site: fields[3] as String,
      elementSite: fields[4] as Element,
      observer: fields[5] as Reference,
      type: (fields[6] as List)?.cast<Coding>(),
    );
  }

  @override
  void write(BinaryWriter writer, AuditEvent_Source obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.site)
      ..writeByte(4)
      ..write(obj.elementSite)
      ..writeByte(5)
      ..write(obj.observer)
      ..writeByte(6)
      ..write(obj.type);
  }
}

class AuditEvent_EntityAdapter extends TypeAdapter<AuditEvent_Entity> {
  @override
  AuditEvent_Entity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent_Entity(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      what: fields[3] as Reference,
      type: fields[4] as Coding,
      role: fields[5] as Coding,
      lifecycle: fields[6] as Coding,
      securityLabel: (fields[7] as List)?.cast<Coding>(),
      name: fields[8] as String,
      elementName: fields[9] as Element,
      description: fields[10] as String,
      elementDescription: fields[11] as Element,
      query: fields[12] as String,
      elementQuery: fields[13] as Element,
      detail: (fields[14] as List)?.cast<AuditEvent_Detail>(),
    );
  }

  @override
  void write(BinaryWriter writer, AuditEvent_Entity obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.what)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.role)
      ..writeByte(6)
      ..write(obj.lifecycle)
      ..writeByte(7)
      ..write(obj.securityLabel)
      ..writeByte(8)
      ..write(obj.name)
      ..writeByte(9)
      ..write(obj.elementName)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.elementDescription)
      ..writeByte(12)
      ..write(obj.query)
      ..writeByte(13)
      ..write(obj.elementQuery)
      ..writeByte(14)
      ..write(obj.detail);
  }
}

class AuditEvent_DetailAdapter extends TypeAdapter<AuditEvent_Detail> {
  @override
  AuditEvent_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent_Detail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      valueString: fields[5] as String,
      elementValueString: fields[6] as Element,
      valueBase64Binary: fields[7] as String,
      elementValueBase64Binary: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, AuditEvent_Detail obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.valueString)
      ..writeByte(6)
      ..write(obj.elementValueString)
      ..writeByte(7)
      ..write(obj.valueBase64Binary)
      ..writeByte(8)
      ..write(obj.elementValueBase64Binary);
  }
}
