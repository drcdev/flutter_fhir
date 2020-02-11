import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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

  //  This is a Provenance resource
  @HiveField(0)
  final String resourceType= 'Provenance';

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

  //  The Reference(s) that were generated or updated by  the activity
  // described in this resource. A provenance can point to more than one
  // target if multiple resources were created/updated by the same activity.
  @HiveField(11)
  List<Reference> target;

  //  The period during which the activity occurred.
  @HiveField(12)
  Period occurredPeriod;

  //  The period during which the activity occurred.
  @HiveField(13)
  String occurredDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurredDateTime
  @HiveField(14)
  Element elementOccurredDateTime;

  //  The instant of time at which the activity was recorded.
  @HiveField(15)
  DateTime recorded;

  //  Extensions for recorded
  @HiveField(16)
  Element elementRecorded;

  //  Policy or plan the activity was defined by. Typically, a single
  // activity may have multiple applicable policy documents, such as patient
  // consent, guarantor funding, etc.
  @HiveField(17)
  List<String> policy;

  //  Extensions for policy
  @HiveField(18)
  List<Element> elementPolicy;

  //  Where the activity occurred, if relevant.
  @HiveField(19)
  Reference location;

  //  The reason that the activity was taking place.
  @HiveField(20)
  List<CodeableConcept> reason;

  //  An activity is something that occurs over a period of time and acts
  // upon or with entities; it may include consuming, processing,
  // transforming, modifying, relocating, using, or generating entities.
  @HiveField(21)
  CodeableConcept activity;

  //  An actor taking a role in an activity  for which it can be assigned
  // some degree of responsibility for the activity taking place.
  @HiveField(22)
  List<Provenance_Agent> agent;

  //  An entity used in this activity.
  @HiveField(23)
  List<Provenance_Entity> entity;

  //  A digital signature on the target Reference(s). The signer should
  // match a Provenance.agent. The purpose of the signature is indicated.
  @HiveField(24)
  List<Signature> signature;

Provenance(
  this.target,
    this.agent,
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
    this.entity,
    this.signature
    });

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() => _$ProvenanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Agent {

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

  //  The participation the agent had with respect to the activity.
  CodeableConcept type;

  //  The function of the agent with respect to the activity. The security
  // role enabling the agent with respect to the activity.
  List<CodeableConcept> role;

  //  The individual, device or organization that participated in the event.
  Reference who;

  //  The individual, device, or organization for whom the change was made.
  Reference onBehalfOf;

Provenance_Agent(
  this.who,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.role,
    this.onBehalfOf
    });

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Entity {

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

  //  How the entity was used during the activity.
  String role; // <code> enum: derivation/revision/quotation/source/removal;

  //  Extensions for role
  Element elementRole;

  //  Identity of the  Entity used. May be a logical or physical uri and
  // maybe absolute or relative.
  Reference what;

  //  The entity is attributed to an agent to express the agent's
  // responsibility for that entity, possibly along with other agents. This
  // description can be understood as shorthand for saying that the agent
  // was responsible for the activity which generated the entity.
  List<Provenance_Agent> agent;

Provenance_Entity(
  this.what,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.elementRole,
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
      (fields[11] as List)?.cast<Reference>(),
      (fields[22] as List)?.cast<Provenance_Agent>(),
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
    (json['target'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['agent'] as List)
        ?.map((e) => e == null
            ? null
            : Provenance_Agent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    json['who'] == null
        ? null
        : Reference.fromJson(json['who'] as Map<String, dynamic>),
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
    json['what'] == null
        ? null
        : Reference.fromJson(json['what'] as Map<String, dynamic>),
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
