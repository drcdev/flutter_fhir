import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';


@JsonSerializable(explicitToJson: true)
class Provenance{

	static Future<Provenance> newInstance(
	{	String resourceType,
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
	List<Signature> signature,
}) async {
var fhirDb = new DatabaseHelper();
Provenance newProvenance = new Provenance(
	resourceType: 'Provenance',
	id: id ?? await fhirDb.newResourceId('Provenance'),
	meta: meta ?? await Meta.newInstance(),
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
	signature: signature,
);
	newProvenance.meta.createdAt = DateTime.now();
	newProvenance.meta.lastUpdated = newProvenance.meta.createdAt;
	int saved = await fhirDb.saveResource(newProvenance);
	 return newProvenance;
}

save() async {
		this.meta.lastUpdated = DateTime.now();
		var fhirDb = new DatabaseHelper();
		int saved = await fhirDb.saveResource(this);
}

	String resourceType= 'Provenance';
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
	List<Reference> target;
	Period occurredPeriod;
	String occurredDateTime;
	Element elementOccurredDateTime;
	DateTime recorded;
	Element elementRecorded;
	List<String> policy;
	List<Element> elementPolicy;
	Reference location;
	List<CodeableConcept> reason;
	CodeableConcept activity;
	List<Provenance_Agent> agent;
	List<Provenance_Entity> entity;
	List<Signature> signature;

Provenance(
	{@required this.resourceType,
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
this.signature,
});

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() => _$ProvenanceToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Provenance_Agent{

	static Future<Provenance_Agent> newInstance(
	{	String id,
	List<Extension> extension,
	List<Extension> modifierExtension,
	CodeableConcept type,
	List<CodeableConcept> role,
	Reference who,
	Reference onBehalfOf,
}) async {
var fhirDb = new DatabaseHelper();
Provenance_Agent newProvenance_Agent = new Provenance_Agent(
	id: id ?? await fhirDb.newResourceId('Provenance_Agent'),
	extension: extension,
	modifierExtension: modifierExtension,
	type: type,
	role: role,
	who: who,
	onBehalfOf: onBehalfOf,
);
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
this.onBehalfOf,
});

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_AgentToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Provenance_Entity{

	static Future<Provenance_Entity> newInstance(
	{	String id,
	List<Extension> extension,
	List<Extension> modifierExtension,
	String role,
	Element elementRole,
	Reference what,
	List<Provenance_Agent> agent,
}) async {
var fhirDb = new DatabaseHelper();
Provenance_Entity newProvenance_Entity = new Provenance_Entity(
	id: id ?? await fhirDb.newResourceId('Provenance_Entity'),
	extension: extension,
	modifierExtension: modifierExtension,
	role: role,
	elementRole: elementRole,
	what: what,
	agent: agent,
);
	return newProvenance_Entity;
}

	String id;
	List<Extension> extension;
	List<Extension> modifierExtension;
	String role;
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
this.agent,
});

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) => _$Provenance_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_EntityToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Provenance _$ProvenanceFromJson(Map<String, dynamic> json) {
  return Provenance(
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
      'resourceType': instance.resourceType,
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
