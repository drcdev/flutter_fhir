import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 293)
class GraphDefinition {

  //  This is a GraphDefinition resource
  @HiveField(0)
  final String resourceType= 'GraphDefinition';

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

  //  An absolute URI that is used to identify this graph definition when it
  // is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this graph definition is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // graph definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the graph
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the graph definition
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the graph definition. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  The status of this graph definition. Enables tracking the life-cycle
  // of the content.
  @HiveField(17)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(18)
  Element elementStatus;

  //  A Boolean value to indicate that this graph definition is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(19)
  bool experimental;

  //  Extensions for experimental
  @HiveField(20)
  Element elementExperimental;

  //  The date  (and optionally time) when the graph definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the graph definition changes.
  @HiveField(21)
  DateTime date;

  //  Extensions for date
  @HiveField(22)
  Element elementDate;

  //  The name of the organization or individual that published the graph
  // definition.
  @HiveField(23)
  String publisher;

  //  Extensions for publisher
  @HiveField(24)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(25)
  List<ContactDetail> contact;

  //  A free text natural language description of the graph definition from
  // a consumer's perspective.
  @HiveField(26)
  String description;

  //  Extensions for description
  @HiveField(27)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate graph definition instances.
  @HiveField(28)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the graph definition is intended
  // to be used.
  @HiveField(29)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this graph definition is needed and why it has been
  // designed as it has.
  @HiveField(30)
  String purpose;

  //  Extensions for purpose
  @HiveField(31)
  Element elementPurpose;

  //  The type of FHIR resource at which instances of this graph start.
  @HiveField(32)
  String start;

  //  Extensions for start
  @HiveField(33)
  Element elementStart;

  //  The profile that describes the use of the base resource.
  @HiveField(34)
  String profile;

  //  Links this graph makes rules about.
  @HiveField(35)
  List<GraphDefinition_Link> link;

GraphDefinition(
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
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
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
    this.start,
    this.elementStart,
    this.profile,
    this.link
    });

  factory GraphDefinition.fromJson(Map<String, dynamic> json) => _$GraphDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 294)
class GraphDefinition_Link {

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

  //  A FHIR expression that identifies one of FHIR References to other
  // resources.
  @HiveField(3)
  String path;

  //  Extensions for path
  @HiveField(4)
  Element elementPath;

  //  Which slice (if profiled).
  @HiveField(5)
  String sliceName;

  //  Extensions for sliceName
  @HiveField(6)
  Element elementSliceName;

  //  Minimum occurrences for this link.
  @HiveField(7)
  int min;

  //  Extensions for min
  @HiveField(8)
  Element elementMin;

  //  Maximum occurrences for this link.
  @HiveField(9)
  String max;

  //  Extensions for max
  @HiveField(10)
  Element elementMax;

  //  Information about why this link is of interest in this graph
  // definition.
  @HiveField(11)
  String description;

  //  Extensions for description
  @HiveField(12)
  Element elementDescription;

  //  Potential target for the link.
  @HiveField(13)
  List<GraphDefinition_Target> target;

GraphDefinition_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.sliceName,
    this.elementSliceName,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.description,
    this.elementDescription,
    this.target
    });

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) => _$GraphDefinition_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 295)
class GraphDefinition_Target {

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

  //  Type of resource this link refers to.
  @HiveField(3)
  String type;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  A set of parameters to look up.
  @HiveField(5)
  String params;

  //  Extensions for params
  @HiveField(6)
  Element elementParams;

  //  Profile for the target resource.
  @HiveField(7)
  String profile;

  //  Compartment Consistency Rules.
  @HiveField(8)
  List<GraphDefinition_Compartment> compartment;

  //  Additional links from target resource.
  @HiveField(9)
  List<GraphDefinition_Link> link;

GraphDefinition_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.params,
    this.elementParams,
    this.profile,
    this.compartment,
    this.link
    });

  factory GraphDefinition_Target.fromJson(Map<String, dynamic> json) => _$GraphDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 296)
class GraphDefinition_Compartment {

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

  //  Defines how the compartment rule is used - whether it it is used to
  // test whether resources are subject to the rule, or whether it is a rule
  // that must be followed.
  @HiveField(3)
  String use; // <code> enum: condition/requirement;

  //  Extensions for use
  @HiveField(4)
  Element elementUse;

  //  Identifies the compartment.
  @HiveField(5)
  String code;

  //  Extensions for code
  @HiveField(6)
  Element elementCode;

  //  identical | matching | different | no-rule | custom.
  @HiveField(7)
  String rule; // <code> enum: identical/matching/different/custom;

  //  Extensions for rule
  @HiveField(8)
  Element elementRule;

  //  Custom rule, as a FHIRPath expression.
  @HiveField(9)
  String expression;

  //  Extensions for expression
  @HiveField(10)
  Element elementExpression;

  //  Documentation for FHIRPath expression.
  @HiveField(11)
  String description;

  //  Extensions for description
  @HiveField(12)
  Element elementDescription;

GraphDefinition_Compartment(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.use,
    this.elementUse,
    this.code,
    this.elementCode,
    this.rule,
    this.elementRule,
    this.expression,
    this.elementExpression,
    this.description,
    this.elementDescription
    });

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) => _$GraphDefinition_CompartmentFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_CompartmentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GraphDefinitionAdapter extends TypeAdapter<GraphDefinition> {
  @override
  final typeId = 293;

  @override
  GraphDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition(
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
      version: fields[13] as String,
      elementVersion: fields[14] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      experimental: fields[19] as bool,
      elementExperimental: fields[20] as Element,
      date: fields[21] as DateTime,
      elementDate: fields[22] as Element,
      publisher: fields[23] as String,
      elementPublisher: fields[24] as Element,
      contact: (fields[25] as List)?.cast<ContactDetail>(),
      description: fields[26] as String,
      elementDescription: fields[27] as Element,
      useContext: (fields[28] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[29] as List)?.cast<CodeableConcept>(),
      purpose: fields[30] as String,
      elementPurpose: fields[31] as Element,
      start: fields[32] as String,
      elementStart: fields[33] as Element,
      profile: fields[34] as String,
      link: (fields[35] as List)?.cast<GraphDefinition_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition obj) {
    writer
      ..writeByte(36)
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
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.experimental)
      ..writeByte(20)
      ..write(obj.elementExperimental)
      ..writeByte(21)
      ..write(obj.date)
      ..writeByte(22)
      ..write(obj.elementDate)
      ..writeByte(23)
      ..write(obj.publisher)
      ..writeByte(24)
      ..write(obj.elementPublisher)
      ..writeByte(25)
      ..write(obj.contact)
      ..writeByte(26)
      ..write(obj.description)
      ..writeByte(27)
      ..write(obj.elementDescription)
      ..writeByte(28)
      ..write(obj.useContext)
      ..writeByte(29)
      ..write(obj.jurisdiction)
      ..writeByte(30)
      ..write(obj.purpose)
      ..writeByte(31)
      ..write(obj.elementPurpose)
      ..writeByte(32)
      ..write(obj.start)
      ..writeByte(33)
      ..write(obj.elementStart)
      ..writeByte(34)
      ..write(obj.profile)
      ..writeByte(35)
      ..write(obj.link);
  }
}

class GraphDefinition_LinkAdapter extends TypeAdapter<GraphDefinition_Link> {
  @override
  final typeId = 294;

  @override
  GraphDefinition_Link read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition_Link(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      sliceName: fields[5] as String,
      elementSliceName: fields[6] as Element,
      min: fields[7] as int,
      elementMin: fields[8] as Element,
      max: fields[9] as String,
      elementMax: fields[10] as Element,
      description: fields[11] as String,
      elementDescription: fields[12] as Element,
      target: (fields[13] as List)?.cast<GraphDefinition_Target>(),
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition_Link obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.sliceName)
      ..writeByte(6)
      ..write(obj.elementSliceName)
      ..writeByte(7)
      ..write(obj.min)
      ..writeByte(8)
      ..write(obj.elementMin)
      ..writeByte(9)
      ..write(obj.max)
      ..writeByte(10)
      ..write(obj.elementMax)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.elementDescription)
      ..writeByte(13)
      ..write(obj.target);
  }
}

class GraphDefinition_TargetAdapter
    extends TypeAdapter<GraphDefinition_Target> {
  @override
  final typeId = 295;

  @override
  GraphDefinition_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      params: fields[5] as String,
      elementParams: fields[6] as Element,
      profile: fields[7] as String,
      compartment: (fields[8] as List)?.cast<GraphDefinition_Compartment>(),
      link: (fields[9] as List)?.cast<GraphDefinition_Link>(),
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition_Target obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.params)
      ..writeByte(6)
      ..write(obj.elementParams)
      ..writeByte(7)
      ..write(obj.profile)
      ..writeByte(8)
      ..write(obj.compartment)
      ..writeByte(9)
      ..write(obj.link);
  }
}

class GraphDefinition_CompartmentAdapter
    extends TypeAdapter<GraphDefinition_Compartment> {
  @override
  final typeId = 296;

  @override
  GraphDefinition_Compartment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GraphDefinition_Compartment(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      use: fields[3] as String,
      elementUse: fields[4] as Element,
      code: fields[5] as String,
      elementCode: fields[6] as Element,
      rule: fields[7] as String,
      elementRule: fields[8] as Element,
      expression: fields[9] as String,
      elementExpression: fields[10] as Element,
      description: fields[11] as String,
      elementDescription: fields[12] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, GraphDefinition_Compartment obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.use)
      ..writeByte(4)
      ..write(obj.elementUse)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.elementCode)
      ..writeByte(7)
      ..write(obj.rule)
      ..writeByte(8)
      ..write(obj.elementRule)
      ..writeByte(9)
      ..write(obj.expression)
      ..writeByte(10)
      ..write(obj.elementExpression)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.elementDescription);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphDefinition _$GraphDefinitionFromJson(Map<String, dynamic> json) {
  return GraphDefinition(
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
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
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
    start: json['start'] as String,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinitionToJson(GraphDefinition instance) =>
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
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
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
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'profile': instance.profile,
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

GraphDefinition_Link _$GraphDefinition_LinkFromJson(Map<String, dynamic> json) {
  return GraphDefinition_Link(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    sliceName: json['sliceName'] as String,
    elementSliceName: json['elementSliceName'] == null
        ? null
        : Element.fromJson(json['elementSliceName'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinition_LinkToJson(
        GraphDefinition_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'sliceName': instance.sliceName,
      'elementSliceName': instance.elementSliceName?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

GraphDefinition_Target _$GraphDefinition_TargetFromJson(
    Map<String, dynamic> json) {
  return GraphDefinition_Target(
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
    params: json['params'] as String,
    elementParams: json['elementParams'] == null
        ? null
        : Element.fromJson(json['elementParams'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    compartment: (json['compartment'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Compartment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    link: (json['link'] as List)
        ?.map((e) => e == null
            ? null
            : GraphDefinition_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GraphDefinition_TargetToJson(
        GraphDefinition_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'params': instance.params,
      'elementParams': instance.elementParams?.toJson(),
      'profile': instance.profile,
      'compartment': instance.compartment?.map((e) => e?.toJson())?.toList(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
    };

GraphDefinition_Compartment _$GraphDefinition_CompartmentFromJson(
    Map<String, dynamic> json) {
  return GraphDefinition_Compartment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    rule: json['rule'] as String,
    elementRule: json['elementRule'] == null
        ? null
        : Element.fromJson(json['elementRule'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GraphDefinition_CompartmentToJson(
        GraphDefinition_Compartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'rule': instance.rule,
      'elementRule': instance.elementRule?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };
