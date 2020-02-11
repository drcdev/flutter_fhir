import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/elementDefinition.dart';
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
@HiveType(typeId: 183)
class StructureDefinition {

  //  This is a StructureDefinition resource
  @HiveField(0)
  final String resourceType= 'StructureDefinition';

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

  //  An absolute URI that is used to identify this structure definition
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this structure definition is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the structure definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this structure definition
  // when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the structure
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the structure
  // definition author and is not expected to be globally unique. For
  // example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  // is not available. There is also no expectation that versions can be
  // placed in a lexicographical sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the structure definition. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the structure
  // definition.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The status of this structure definition. Enables tracking the
  // life-cycle of the content.
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(21)
  Element elementStatus;

  //  A Boolean value to indicate that this structure definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(22)
  bool experimental;

  //  Extensions for experimental
  @HiveField(23)
  Element elementExperimental;

  //  The date  (and optionally time) when the structure definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the structure definition
  // changes.
  @HiveField(24)
  DateTime date;

  //  Extensions for date
  @HiveField(25)
  Element elementDate;

  //  The name of the organization or individual that published the
  // structure definition.
  @HiveField(26)
  String publisher;

  //  Extensions for publisher
  @HiveField(27)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(28)
  List<ContactDetail> contact;

  //  A free text natural language description of the structure definition
  // from a consumer's perspective.
  @HiveField(29)
  String description;

  //  Extensions for description
  @HiveField(30)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate structure definition instances.
  @HiveField(31)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the structure definition is
  // intended to be used.
  @HiveField(32)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this structure definition is needed and why it has
  // been designed as it has.
  @HiveField(33)
  String purpose;

  //  Extensions for purpose
  @HiveField(34)
  Element elementPurpose;

  //  A copyright statement relating to the structure definition and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the structure definition.
  @HiveField(35)
  String copyright;

  //  Extensions for copyright
  @HiveField(36)
  Element elementCopyright;

  //  A set of key words or terms from external terminologies that may be
  // used to assist with indexing and searching of templates nby describing
  // the use of this structure definition, or the content it describes.
  @HiveField(37)
  List<Coding> keyword;

  //  The version of the FHIR specification on which this
  // StructureDefinition is based - this is the formal version of the
  // specification, without the revision number, e.g.
  // [publication].[major].[minor], which is 4.0.1. for this version.
  @HiveField(38)
  String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;

  //  Extensions for fhirVersion
  @HiveField(39)
  Element elementFhirVersion;

  //  An external specification that the content is mapped to.
  @HiveField(40)
  List<StructureDefinition_Mapping> mapping;

  //  Defines the kind of structure that this definition is describing.
  @HiveField(41)
  String kind; // <code> enum: primitive-type/complex-type/resource/logical;

  //  Extensions for kind
  @HiveField(42)
  Element elementKind;

  //  Whether structure this definition describes is abstract or not  - that
  // is, whether the structure is not intended to be instantiated. For
  // Resources and Data types, abstract types will never be exchanged 
  // between systems.
  @HiveField(43)
  bool abstract;

  //  Extensions for abstract
  @HiveField(44)
  Element elementAbstract;

  //  Identifies the types of resource or data type elements to which the
  // extension can be applied.
  @HiveField(45)
  List<StructureDefinition_Context> context;

  //  A set of rules as FHIRPath Invariants about when the extension can be
  // used (e.g. co-occurrence variants for the extension). All the rules
  // must be true.
  @HiveField(46)
  List<String> contextInvariant;

  //  Extensions for contextInvariant
  @HiveField(47)
  List<Element> elementContextInvariant;

  //  The type this structure describes. If the derivation kind is
  // 'specialization' then this is the master definition for a type, and
  // there is always one of these (a data type, an extension, a resource,
  // including abstract ones). Otherwise the structure definition is a
  // constraint on the stated type (and in this case, the type cannot be an
  // abstract type).  References are URLs that are relative to
  // http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  // http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  // allowed in logical models.
  @HiveField(48)
  String type;

  //  Extensions for type
  @HiveField(49)
  Element elementType;

  //  An absolute URI that is the base structure from which this type is
  // derived, either by specialization or constraint.
  @HiveField(50)
  String baseDefinition;

  //  How the type relates to the baseDefinition.
  @HiveField(51)
  String derivation; // <code> enum: specialization/constraint;

  //  Extensions for derivation
  @HiveField(52)
  Element elementDerivation;

  //  A snapshot view is expressed in a standalone form that can be used and
  // interpreted without considering the base StructureDefinition.
  @HiveField(53)
  StructureDefinition_Snapshot snapshot;

  //  A differential view is expressed relative to the base
  // StructureDefinition - a statement of differences that it applies.
  @HiveField(54)
  StructureDefinition_Differential differential;

StructureDefinition(
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
    this.keyword,
    this.fhirVersion,
    this.elementFhirVersion,
    this.mapping,
    this.kind,
    this.elementKind,
    this.abstract,
    this.elementAbstract,
    this.context,
    this.contextInvariant,
    this.elementContextInvariant,
    this.type,
    this.elementType,
    this.baseDefinition,
    this.derivation,
    this.elementDerivation,
    this.snapshot,
    this.differential
    });

  factory StructureDefinition.fromJson(Map<String, dynamic> json) => _$StructureDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Mapping {

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

  //  An Internal id that is used to identify this mapping set when specific
  // mappings are made.
  String identity;

  //  Extensions for identity
  Element elementIdentity;

  //  An absolute URI that identifies the specification that this mapping is
  // expressed to.
  String uri;

  //  Extensions for uri
  Element elementUri;

  //  A name for the specification that is being mapped to.
  String name;

  //  Extensions for name
  Element elementName;

  //  Comments about this mapping, including version notes, issues, scope
  // limitations, and other important notes for usage.
  String comment;

  //  Extensions for comment
  Element elementComment;

StructureDefinition_Mapping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.elementIdentity,
    this.uri,
    this.elementUri,
    this.name,
    this.elementName,
    this.comment,
    this.elementComment
    });

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$StructureDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_MappingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Context {

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

  //  Defines how to interpret the expression that defines what the context
  // of the extension is.
  String type; // <code> enum: fhirpath/element/extension;

  //  Extensions for type
  Element elementType;

  //  An expression that defines where an extension can be used in
  // resources.
  String expression;

  //  Extensions for expression
  Element elementExpression;

StructureDefinition_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.expression,
    this.elementExpression
    });

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) => _$StructureDefinition_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Snapshot {

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

  //  Captures constraints on each element within the resource.
  List<ElementDefinition> element;

StructureDefinition_Snapshot(
  this.element,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory StructureDefinition_Snapshot.fromJson(Map<String, dynamic> json) => _$StructureDefinition_SnapshotFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_SnapshotToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Differential {

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

  //  Captures constraints on each element within the resource.
  List<ElementDefinition> element;

StructureDefinition_Differential(
  this.element,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory StructureDefinition_Differential.fromJson(Map<String, dynamic> json) => _$StructureDefinition_DifferentialFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_DifferentialToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StructureDefinitionAdapter extends TypeAdapter<StructureDefinition> {
  @override
  final typeId = 183;

  @override
  StructureDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureDefinition(
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
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      experimental: fields[22] as bool,
      elementExperimental: fields[23] as Element,
      date: fields[24] as DateTime,
      elementDate: fields[25] as Element,
      publisher: fields[26] as String,
      elementPublisher: fields[27] as Element,
      contact: (fields[28] as List)?.cast<ContactDetail>(),
      description: fields[29] as String,
      elementDescription: fields[30] as Element,
      useContext: (fields[31] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[32] as List)?.cast<CodeableConcept>(),
      purpose: fields[33] as String,
      elementPurpose: fields[34] as Element,
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      keyword: (fields[37] as List)?.cast<Coding>(),
      fhirVersion: fields[38] as String,
      elementFhirVersion: fields[39] as Element,
      mapping: (fields[40] as List)?.cast<StructureDefinition_Mapping>(),
      kind: fields[41] as String,
      elementKind: fields[42] as Element,
      abstract: fields[43] as bool,
      elementAbstract: fields[44] as Element,
      context: (fields[45] as List)?.cast<StructureDefinition_Context>(),
      contextInvariant: (fields[46] as List)?.cast<String>(),
      elementContextInvariant: (fields[47] as List)?.cast<Element>(),
      type: fields[48] as String,
      elementType: fields[49] as Element,
      baseDefinition: fields[50] as String,
      derivation: fields[51] as String,
      elementDerivation: fields[52] as Element,
      snapshot: fields[53] as StructureDefinition_Snapshot,
      differential: fields[54] as StructureDefinition_Differential,
    );
  }

  @override
  void write(BinaryWriter writer, StructureDefinition obj) {
    writer
      ..writeByte(55)
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
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.experimental)
      ..writeByte(23)
      ..write(obj.elementExperimental)
      ..writeByte(24)
      ..write(obj.date)
      ..writeByte(25)
      ..write(obj.elementDate)
      ..writeByte(26)
      ..write(obj.publisher)
      ..writeByte(27)
      ..write(obj.elementPublisher)
      ..writeByte(28)
      ..write(obj.contact)
      ..writeByte(29)
      ..write(obj.description)
      ..writeByte(30)
      ..write(obj.elementDescription)
      ..writeByte(31)
      ..write(obj.useContext)
      ..writeByte(32)
      ..write(obj.jurisdiction)
      ..writeByte(33)
      ..write(obj.purpose)
      ..writeByte(34)
      ..write(obj.elementPurpose)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.keyword)
      ..writeByte(38)
      ..write(obj.fhirVersion)
      ..writeByte(39)
      ..write(obj.elementFhirVersion)
      ..writeByte(40)
      ..write(obj.mapping)
      ..writeByte(41)
      ..write(obj.kind)
      ..writeByte(42)
      ..write(obj.elementKind)
      ..writeByte(43)
      ..write(obj.abstract)
      ..writeByte(44)
      ..write(obj.elementAbstract)
      ..writeByte(45)
      ..write(obj.context)
      ..writeByte(46)
      ..write(obj.contextInvariant)
      ..writeByte(47)
      ..write(obj.elementContextInvariant)
      ..writeByte(48)
      ..write(obj.type)
      ..writeByte(49)
      ..write(obj.elementType)
      ..writeByte(50)
      ..write(obj.baseDefinition)
      ..writeByte(51)
      ..write(obj.derivation)
      ..writeByte(52)
      ..write(obj.elementDerivation)
      ..writeByte(53)
      ..write(obj.snapshot)
      ..writeByte(54)
      ..write(obj.differential);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructureDefinition _$StructureDefinitionFromJson(Map<String, dynamic> json) {
  return StructureDefinition(
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
    keyword: (json['keyword'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fhirVersion: json['fhirVersion'] as String,
    elementFhirVersion: json['elementFhirVersion'] == null
        ? null
        : Element.fromJson(json['elementFhirVersion'] as Map<String, dynamic>),
    mapping: (json['mapping'] as List)
        ?.map((e) => e == null
            ? null
            : StructureDefinition_Mapping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    abstract: json['abstract'] as bool,
    elementAbstract: json['elementAbstract'] == null
        ? null
        : Element.fromJson(json['elementAbstract'] as Map<String, dynamic>),
    context: (json['context'] as List)
        ?.map((e) => e == null
            ? null
            : StructureDefinition_Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contextInvariant:
        (json['contextInvariant'] as List)?.map((e) => e as String)?.toList(),
    elementContextInvariant: (json['elementContextInvariant'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    baseDefinition: json['baseDefinition'] as String,
    derivation: json['derivation'] as String,
    elementDerivation: json['elementDerivation'] == null
        ? null
        : Element.fromJson(json['elementDerivation'] as Map<String, dynamic>),
    snapshot: json['snapshot'] == null
        ? null
        : StructureDefinition_Snapshot.fromJson(
            json['snapshot'] as Map<String, dynamic>),
    differential: json['differential'] == null
        ? null
        : StructureDefinition_Differential.fromJson(
            json['differential'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureDefinitionToJson(
        StructureDefinition instance) =>
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
      'keyword': instance.keyword?.map((e) => e?.toJson())?.toList(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion': instance.elementFhirVersion?.toJson(),
      'mapping': instance.mapping?.map((e) => e?.toJson())?.toList(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'abstract': instance.abstract,
      'elementAbstract': instance.elementAbstract?.toJson(),
      'context': instance.context?.map((e) => e?.toJson())?.toList(),
      'contextInvariant': instance.contextInvariant,
      'elementContextInvariant':
          instance.elementContextInvariant?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'baseDefinition': instance.baseDefinition,
      'derivation': instance.derivation,
      'elementDerivation': instance.elementDerivation?.toJson(),
      'snapshot': instance.snapshot?.toJson(),
      'differential': instance.differential?.toJson(),
    };

StructureDefinition_Mapping _$StructureDefinition_MappingFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Mapping(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identity: json['identity'] as String,
    elementIdentity: json['elementIdentity'] == null
        ? null
        : Element.fromJson(json['elementIdentity'] as Map<String, dynamic>),
    uri: json['uri'] as String,
    elementUri: json['elementUri'] == null
        ? null
        : Element.fromJson(json['elementUri'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureDefinition_MappingToJson(
        StructureDefinition_Mapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identity': instance.identity,
      'elementIdentity': instance.elementIdentity?.toJson(),
      'uri': instance.uri,
      'elementUri': instance.elementUri?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };

StructureDefinition_Context _$StructureDefinition_ContextFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Context(
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
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureDefinition_ContextToJson(
        StructureDefinition_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
    };

StructureDefinition_Snapshot _$StructureDefinition_SnapshotFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Snapshot(
    (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureDefinition_SnapshotToJson(
        StructureDefinition_Snapshot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'element': instance.element?.map((e) => e?.toJson())?.toList(),
    };

StructureDefinition_Differential _$StructureDefinition_DifferentialFromJson(
    Map<String, dynamic> json) {
  return StructureDefinition_Differential(
    (json['element'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureDefinition_DifferentialToJson(
        StructureDefinition_Differential instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'element': instance.element?.map((e) => e?.toJson())?.toList(),
    };
