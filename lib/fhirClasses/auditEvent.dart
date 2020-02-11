import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 68)
class AuditEvent {

  //  This is a AuditEvent resource
  @HiveField(0)
  final String resourceType= 'AuditEvent';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Identifier for a family of the event.  For example, a menu item,
  // program, rule, policy, function code, application name or URL. It
  // identifies the performed function.
  @HiveField(11)
  Coding type;

  //  Identifier for the category of event.
  @HiveField(12)
  List<Coding> subtype;

  //  Indicator for type of action performed during the event that generated
  // the audit.
  @HiveField(13)
  String action; // <code> enum: C/R/U/D/E;

  //  Extensions for action
  @HiveField(14)
  Element elementAction;

  //  The period during which the activity occurred.
  @HiveField(15)
  Period period;

  //  The time when the event was recorded.
  @HiveField(16)
  DateTime recorded;

  //  Extensions for recorded
  @HiveField(17)
  Element elementRecorded;

  //  Indicates whether the event succeeded or failed.
  @HiveField(18)
  String outcome; // <code> enum: 0/4/8/12;

  //  Extensions for outcome
  @HiveField(19)
  Element elementOutcome;

  //  A free text description of the outcome of the event.
  @HiveField(20)
  String outcomeDesc;

  //  Extensions for outcomeDesc
  @HiveField(21)
  Element elementOutcomeDesc;

  //  The purposeOfUse (reason) that was used during the event being
  // recorded.
  @HiveField(22)
  List<CodeableConcept> purposeOfEvent;

  //  An actor taking an active role in the event or activity that is
  // logged.
  @HiveField(23)
  List<AuditEvent_Agent> agent;

  //  The system that is reporting the event.
  @HiveField(24)
  AuditEvent_Source source;

  //  Specific instances of data or objects that have been accessed.
  @HiveField(25)
  List<AuditEvent_Entity> entity;

AuditEvent(
  this.type,
    this.agent,
    this.source,
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
    this.entity
    });

  factory AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Agent {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Specification of the participation type the user plays when performing
  // the event.
  CodeableConcept type;

  //  The security role that the user was acting under, that come from local
  // codes defined by the access control security system (e.g. RBAC, ABAC)
  // used in the local context.
  List<CodeableConcept> role;

  //  Reference to who this agent is that was involved in the event.
  Reference who;

  //  Alternative agent Identifier. For a human, this should be a user
  // identifier text string from authentication system. This identifier
  // would be one known to a common authentication system (e.g. single
  // sign-on), if available.
  String altId;

  //  Extensions for altId
  Element elementAltId;

  //  Human-meaningful name for the agent.
  String name;

  //  Extensions for name
  Element elementName;

  //  Indicator that the user is or is not the requestor, or initiator, for
  // the event being audited.
  bool requestor;

  //  Extensions for requestor
  Element elementRequestor;

  //  Where the event occurred.
  Reference location;

  //  The policy or plan that authorized the activity being recorded.
  // Typically, a single activity may have multiple applicable policies,
  // such as patient consent, guarantor funding, etc. The policy would also
  // indicate the security token used.
  List<String> policy;

  //  Extensions for policy
  List<Element> elementPolicy;

  //  Type of media involved. Used when the event is about
  // exporting/importing onto media.
  Coding media;

  //  Logical network location for application activity, if the activity has
  // a network location.
  AuditEvent_Network network;

  //  The reason (purpose of use), specific to this agent, that was used
  // during the event being recorded.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  An identifier for the network access point of the user device for the
  // audit event.
  String address;

  //  Extensions for address
  Element elementAddress;

  //  An identifier for the type of network access point that originated the
  // audit event.
  String type; // <code> enum: 1/2/3/4/5;

  //  Extensions for type
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Logical source location within the healthcare enterprise network.  For
  // example, a hospital or other provider location within a multi-entity
  // provider group.
  String site;

  //  Extensions for site
  Element elementSite;

  //  Identifier of the source where the event was detected.
  Reference observer;

  //  Code specifying the type of source where event originated.
  List<Coding> type;

AuditEvent_Source(
  this.observer,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.site,
    this.elementSite,
    this.type
    });

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) => _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuditEvent_Entity {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Identifies a specific instance of the entity. The reference should be
  // version specific.
  Reference what;

  //  The type of the object that was involved in this audit event.
  Coding type;

  //  Code representing the role the entity played in the event being
  // audited.
  Coding role;

  //  Identifier for the data life-cycle stage for the entity.
  Coding lifecycle;

  //  Security labels for the identified entity.
  List<Coding> securityLabel;

  //  A name of the entity in the audit event.
  String name;

  //  Extensions for name
  Element elementName;

  //  Text that describes the entity in more detail.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The query parameters for a query-type entities.
  String query;

  //  Extensions for query
  Element elementQuery;

  //  Tagged value pairs for conveying additional information about the
  // entity.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The type of extra detail provided in the value.
  String type;

  //  Extensions for type
  Element elementType;

  //  The  value of the extra detail.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  The  value of the extra detail.
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
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
  final typeId = 68;

  @override
  AuditEvent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuditEvent(
      fields[11] as Coding,
      (fields[23] as List)?.cast<AuditEvent_Agent>(),
      fields[24] as AuditEvent_Source,
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
    json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    (json['agent'] as List)
        ?.map((e) => e == null
            ? null
            : AuditEvent_Agent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['source'] == null
        ? null
        : AuditEvent_Source.fromJson(json['source'] as Map<String, dynamic>),
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
    json['observer'] == null
        ? null
        : Reference.fromJson(json['observer'] as Map<String, dynamic>),
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
