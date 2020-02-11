import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 427)
class MessageDefinition {

  //  This is a MessageDefinition resource
  @HiveField(0)
  final String resourceType= 'MessageDefinition';

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

  //  The business identifier that is used to reference the
  // MessageDefinition and *is* expected to be consistent from server to
  // server.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this message definition
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the message
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the message definition
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the message definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the message definition.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  A MessageDefinition that is superseded by this definition.
  @HiveField(20)
  List<String> replaces;

  //  The status of this message definition. Enables tracking the life-cycle
  // of the content.
  @HiveField(21)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(22)
  Element elementStatus;

  //  A Boolean value to indicate that this message definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(23)
  bool experimental;

  //  Extensions for experimental
  @HiveField(24)
  Element elementExperimental;

  //  The date  (and optionally time) when the message definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the message definition changes.
  @HiveField(25)
  DateTime date;

  //  Extensions for date
  @HiveField(26)
  Element elementDate;

  //  The name of the organization or individual that published the message
  // definition.
  @HiveField(27)
  String publisher;

  //  Extensions for publisher
  @HiveField(28)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(29)
  List<ContactDetail> contact;

  //  A free text natural language description of the message definition
  // from a consumer's perspective.
  @HiveField(30)
  String description;

  //  Extensions for description
  @HiveField(31)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate message definition instances.
  @HiveField(32)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the message definition is
  // intended to be used.
  @HiveField(33)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this message definition is needed and why it has
  // been designed as it has.
  @HiveField(34)
  String purpose;

  //  Extensions for purpose
  @HiveField(35)
  Element elementPurpose;

  //  A copyright statement relating to the message definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the message definition.
  @HiveField(36)
  String copyright;

  //  Extensions for copyright
  @HiveField(37)
  Element elementCopyright;

  //  The MessageDefinition that is the basis for the contents of this
  // resource.
  @HiveField(38)
  String base;

  //  Identifies a protocol or workflow that this MessageDefinition
  // represents a step in.
  @HiveField(39)
  List<String> parent;

  //  Event code or link to the EventDefinition.
  @HiveField(40)
  Coding eventCoding;

  //  Event code or link to the EventDefinition.
  @HiveField(41)
  String eventUri; //  pattern: ^\S*$

  //  Extensions for eventUri
  @HiveField(42)
  Element elementEventUri;

  //  The impact of the content of the message.
  @HiveField(43)
  String category; // <code> enum: consequence/currency/notification;

  //  Extensions for category
  @HiveField(44)
  Element elementCategory;

  //  Identifies the resource (or resources) that are being addressed by the
  // event.  For example, the Encounter for an admit message or two Account
  // records for a merge.
  @HiveField(45)
  List<MessageDefinition_Focus> focus;

  //  Declare at a message definition level whether a response is required
  // or only upon error or success, or never.
  @HiveField(46)
  String responseRequired; // <code> enum: always/on-error/never/on-success;

  //  Extensions for responseRequired
  @HiveField(47)
  Element elementResponseRequired;

  //  Indicates what types of messages may be sent as an application-level
  // response to this message.
  @HiveField(48)
  List<MessageDefinition_AllowedResponse> allowedResponse;

  //  Canonical reference to a GraphDefinition. If a URL is provided, it is
  // the canonical reference to a [[[GraphDefinition]]] that it controls
  // what resources are to be added to the bundle when building the
  // document. The GraphDefinition can also specify profiles that apply to
  // the various resources.
  @HiveField(49)
  List<String> graph;

MessageDefinition(
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.replaces,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.elementEventUri,
    this.category,
    this.elementCategory,
    this.focus,
    this.responseRequired,
    this.elementResponseRequired,
    this.allowedResponse,
    this.graph
    });

  factory MessageDefinition.fromJson(Map<String, dynamic> json) => _$MessageDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_Focus {

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

  //  The kind of resource that must be the focus for this message.
  String code;

  //  Extensions for code
  Element elementCode;

  //  A profile that reflects constraints for the focal resource (and
  // potentially for related resources).
  String profile;

  //  Identifies the minimum number of resources of this type that must be
  // pointed to by a message in order for it to be valid against this
  // MessageDefinition.
  int min;

  //  Extensions for min
  Element elementMin;

  //  Identifies the maximum number of resources of this type that must be
  // pointed to by a message in order for it to be valid against this
  // MessageDefinition.
  String max;

  //  Extensions for max
  Element elementMax;

MessageDefinition_Focus(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.profile,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax
    });

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) => _$MessageDefinition_FocusFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_FocusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageDefinition_AllowedResponse {

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

  //  A reference to the message definition that must be adhered to by this
  // supported response.
  String message;

  //  Provides a description of the circumstances in which this response
  // should be used (as opposed to one of the alternative responses).
  String situation;

  //  Extensions for situation
  Element elementSituation;

MessageDefinition_AllowedResponse(
  this.message,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.situation,
    this.elementSituation
    });

  factory MessageDefinition_AllowedResponse.fromJson(Map<String, dynamic> json) => _$MessageDefinition_AllowedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_AllowedResponseToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageDefinitionAdapter extends TypeAdapter<MessageDefinition> {
  @override
  final typeId = 427;

  @override
  MessageDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageDefinition(
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      replaces: (fields[20] as List)?.cast<String>(),
      status: fields[21] as String,
      elementStatus: fields[22] as Element,
      experimental: fields[23] as bool,
      elementExperimental: fields[24] as Element,
      date: fields[25] as DateTime,
      elementDate: fields[26] as Element,
      publisher: fields[27] as String,
      elementPublisher: fields[28] as Element,
      contact: (fields[29] as List)?.cast<ContactDetail>(),
      description: fields[30] as String,
      elementDescription: fields[31] as Element,
      useContext: (fields[32] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[33] as List)?.cast<CodeableConcept>(),
      purpose: fields[34] as String,
      elementPurpose: fields[35] as Element,
      copyright: fields[36] as String,
      elementCopyright: fields[37] as Element,
      base: fields[38] as String,
      parent: (fields[39] as List)?.cast<String>(),
      eventCoding: fields[40] as Coding,
      eventUri: fields[41] as String,
      elementEventUri: fields[42] as Element,
      category: fields[43] as String,
      elementCategory: fields[44] as Element,
      focus: (fields[45] as List)?.cast<MessageDefinition_Focus>(),
      responseRequired: fields[46] as String,
      elementResponseRequired: fields[47] as Element,
      allowedResponse:
          (fields[48] as List)?.cast<MessageDefinition_AllowedResponse>(),
      graph: (fields[49] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MessageDefinition obj) {
    writer
      ..writeByte(50)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.replaces)
      ..writeByte(21)
      ..write(obj.status)
      ..writeByte(22)
      ..write(obj.elementStatus)
      ..writeByte(23)
      ..write(obj.experimental)
      ..writeByte(24)
      ..write(obj.elementExperimental)
      ..writeByte(25)
      ..write(obj.date)
      ..writeByte(26)
      ..write(obj.elementDate)
      ..writeByte(27)
      ..write(obj.publisher)
      ..writeByte(28)
      ..write(obj.elementPublisher)
      ..writeByte(29)
      ..write(obj.contact)
      ..writeByte(30)
      ..write(obj.description)
      ..writeByte(31)
      ..write(obj.elementDescription)
      ..writeByte(32)
      ..write(obj.useContext)
      ..writeByte(33)
      ..write(obj.jurisdiction)
      ..writeByte(34)
      ..write(obj.purpose)
      ..writeByte(35)
      ..write(obj.elementPurpose)
      ..writeByte(36)
      ..write(obj.copyright)
      ..writeByte(37)
      ..write(obj.elementCopyright)
      ..writeByte(38)
      ..write(obj.base)
      ..writeByte(39)
      ..write(obj.parent)
      ..writeByte(40)
      ..write(obj.eventCoding)
      ..writeByte(41)
      ..write(obj.eventUri)
      ..writeByte(42)
      ..write(obj.elementEventUri)
      ..writeByte(43)
      ..write(obj.category)
      ..writeByte(44)
      ..write(obj.elementCategory)
      ..writeByte(45)
      ..write(obj.focus)
      ..writeByte(46)
      ..write(obj.responseRequired)
      ..writeByte(47)
      ..write(obj.elementResponseRequired)
      ..writeByte(48)
      ..write(obj.allowedResponse)
      ..writeByte(49)
      ..write(obj.graph);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDefinition _$MessageDefinitionFromJson(Map<String, dynamic> json) {
  return MessageDefinition(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    replaces: (json['replaces'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    base: json['base'] as String,
    parent: (json['parent'] as List)?.map((e) => e as String)?.toList(),
    eventCoding: json['eventCoding'] == null
        ? null
        : Coding.fromJson(json['eventCoding'] as Map<String, dynamic>),
    eventUri: json['eventUri'] as String,
    elementEventUri: json['elementEventUri'] == null
        ? null
        : Element.fromJson(json['elementEventUri'] as Map<String, dynamic>),
    category: json['category'] as String,
    elementCategory: json['elementCategory'] == null
        ? null
        : Element.fromJson(json['elementCategory'] as Map<String, dynamic>),
    focus: (json['focus'] as List)
        ?.map((e) => e == null
            ? null
            : MessageDefinition_Focus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responseRequired: json['responseRequired'] as String,
    elementResponseRequired: json['elementResponseRequired'] == null
        ? null
        : Element.fromJson(
            json['elementResponseRequired'] as Map<String, dynamic>),
    allowedResponse: (json['allowedResponse'] as List)
        ?.map((e) => e == null
            ? null
            : MessageDefinition_AllowedResponse.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    graph: (json['graph'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MessageDefinitionToJson(MessageDefinition instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'replaces': instance.replaces,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'base': instance.base,
      'parent': instance.parent,
      'eventCoding': instance.eventCoding?.toJson(),
      'eventUri': instance.eventUri,
      'elementEventUri': instance.elementEventUri?.toJson(),
      'category': instance.category,
      'elementCategory': instance.elementCategory?.toJson(),
      'focus': instance.focus?.map((e) => e?.toJson())?.toList(),
      'responseRequired': instance.responseRequired,
      'elementResponseRequired': instance.elementResponseRequired?.toJson(),
      'allowedResponse':
          instance.allowedResponse?.map((e) => e?.toJson())?.toList(),
      'graph': instance.graph,
    };

MessageDefinition_Focus _$MessageDefinition_FocusFromJson(
    Map<String, dynamic> json) {
  return MessageDefinition_Focus(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageDefinition_FocusToJson(
        MessageDefinition_Focus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'profile': instance.profile,
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
    };

MessageDefinition_AllowedResponse _$MessageDefinition_AllowedResponseFromJson(
    Map<String, dynamic> json) {
  return MessageDefinition_AllowedResponse(
    json['message'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    situation: json['situation'] as String,
    elementSituation: json['elementSituation'] == null
        ? null
        : Element.fromJson(json['elementSituation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageDefinition_AllowedResponseToJson(
        MessageDefinition_AllowedResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'message': instance.message,
      'situation': instance.situation,
      'elementSituation': instance.elementSituation?.toJson(),
    };
