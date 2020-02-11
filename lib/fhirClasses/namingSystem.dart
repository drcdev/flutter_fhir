import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 443)
class NamingSystem {

  //  This is a NamingSystem resource
  @HiveField(0)
  final String resourceType= 'NamingSystem';

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

  //  A natural language name identifying the naming system. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(11)
  String name;

  //  Extensions for name
  @HiveField(12)
  Element elementName;

  //  The status of this naming system. Enables tracking the life-cycle of
  // the content.
  @HiveField(13)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(14)
  Element elementStatus;

  //  Indicates the purpose for the naming system - what kinds of things
  // does it make unique?
  @HiveField(15)
  String kind; // <code> enum: codesystem/identifier/root;

  //  Extensions for kind
  @HiveField(16)
  Element elementKind;

  //  The date  (and optionally time) when the naming system was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the naming system changes.
  @HiveField(17)
  DateTime date;

  //  Extensions for date
  @HiveField(18)
  Element elementDate;

  //  The name of the organization or individual that published the naming
  // system.
  @HiveField(19)
  String publisher;

  //  Extensions for publisher
  @HiveField(20)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(21)
  List<ContactDetail> contact;

  //  The name of the organization that is responsible for issuing
  // identifiers or codes for this namespace and ensuring their
  // non-collision.
  @HiveField(22)
  String responsible;

  //  Extensions for responsible
  @HiveField(23)
  Element elementResponsible;

  //  Categorizes a naming system for easier search by grouping related
  // naming systems.
  @HiveField(24)
  CodeableConcept type;

  //  A free text natural language description of the naming system from a
  // consumer's perspective. Details about what the namespace identifies
  // including scope, granularity, version labeling, etc.
  @HiveField(25)
  String description;

  //  Extensions for description
  @HiveField(26)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate naming system instances.
  @HiveField(27)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the naming system is intended to
  // be used.
  @HiveField(28)
  List<CodeableConcept> jurisdiction;

  //  Provides guidance on the use of the namespace, including the handling
  // of formatting characters, use of upper vs. lower case, etc.
  @HiveField(29)
  String usage;

  //  Extensions for usage
  @HiveField(30)
  Element elementUsage;

  //  Indicates how the system may be identified when referenced in
  // electronic exchange.
  @HiveField(31)
  List<NamingSystem_UniqueId> uniqueId;

NamingSystem(
  this.uniqueId,
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
    this.elementUsage
    });

  factory NamingSystem.fromJson(Map<String, dynamic> json) => _$NamingSystemFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 444)
class NamingSystem_UniqueId {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Identifies the unique identifier scheme used for this particular
  // identifier.
  @HiveField(3)
  String type; // <code> enum: oid/uuid/uri/other;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  The string that should be sent over the wire to identify the code
  // system or identifier system.
  @HiveField(5)
  String value;

  //  Extensions for value
  @HiveField(6)
  Element elementValue;

  //  Indicates whether this identifier is the "preferred" identifier of
  // this type.
  @HiveField(7)
  bool preferred;

  //  Extensions for preferred
  @HiveField(8)
  Element elementPreferred;

  //  Notes about the past or intended usage of this identifier.
  @HiveField(9)
  String comment;

  //  Extensions for comment
  @HiveField(10)
  Element elementComment;

  //  Identifies the period of time over which this identifier is considered
  // appropriate to refer to the naming system.  Outside of this window, the
  // identifier might be non-deterministic.
  @HiveField(11)
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
  final typeId = 443;

  @override
  NamingSystem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NamingSystem(
      (fields[31] as List)?.cast<NamingSystem_UniqueId>(),
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

class NamingSystem_UniqueIdAdapter extends TypeAdapter<NamingSystem_UniqueId> {
  @override
  final typeId = 444;

  @override
  NamingSystem_UniqueId read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NamingSystem_UniqueId(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      value: fields[5] as String,
      elementValue: fields[6] as Element,
      preferred: fields[7] as bool,
      elementPreferred: fields[8] as Element,
      comment: fields[9] as String,
      elementComment: fields[10] as Element,
      period: fields[11] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, NamingSystem_UniqueId obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.value)
      ..writeByte(6)
      ..write(obj.elementValue)
      ..writeByte(7)
      ..write(obj.preferred)
      ..writeByte(8)
      ..write(obj.elementPreferred)
      ..writeByte(9)
      ..write(obj.comment)
      ..writeByte(10)
      ..write(obj.elementComment)
      ..writeByte(11)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamingSystem _$NamingSystemFromJson(Map<String, dynamic> json) {
  return NamingSystem(
    (json['uniqueId'] as List)
        ?.map((e) => e == null
            ? null
            : NamingSystem_UniqueId.fromJson(e as Map<String, dynamic>))
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
