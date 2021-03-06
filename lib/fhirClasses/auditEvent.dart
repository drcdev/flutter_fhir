import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

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
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'AuditEvent';
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
  Coding type;
  List<Coding> subtype;
  String action;
  Element elementAction;
  Period period;
  DateTime recorded;
  Element elementRecorded;
  String outcome;
  Element elementOutcome;
  String outcomeDesc;
  Element elementOutcomeDesc;
  List<CodeableConcept> purposeOfEvent;
  List<AuditEvent_Agent> agent;
  AuditEvent_Source source;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String address;
  Element elementAddress;
  String type;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String site;
  Element elementSite;
  Reference observer;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String valueString;
  Element elementValueString;
  String valueBase64Binary;
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
