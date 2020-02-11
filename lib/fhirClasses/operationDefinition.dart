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
@HiveType(typeId: 458)
class OperationDefinition {

  //  This is a OperationDefinition resource
  @HiveField(0)
  final String resourceType= 'OperationDefinition';

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

  //  An absolute URI that is used to identify this operation definition
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this operation definition is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the operation definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the operation
  // definition when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the operation
  // definition author and is not expected to be globally unique. For
  // example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  // is not available. There is also no expectation that versions can be
  // placed in a lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the operation definition. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  A short, descriptive, user-friendly title for the operation
  // definition.
  @HiveField(17)
  String title;

  //  Extensions for title
  @HiveField(18)
  Element elementTitle;

  //  The status of this operation definition. Enables tracking the
  // life-cycle of the content.
  @HiveField(19)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(20)
  Element elementStatus;

  //  Whether this is an operation or a named query.
  @HiveField(21)
  String kind; // <code> enum: operation/query;

  //  Extensions for kind
  @HiveField(22)
  Element elementKind;

  //  A Boolean value to indicate that this operation definition is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(23)
  bool experimental;

  //  Extensions for experimental
  @HiveField(24)
  Element elementExperimental;

  //  The date  (and optionally time) when the operation definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the operation definition
  // changes.
  @HiveField(25)
  DateTime date;

  //  Extensions for date
  @HiveField(26)
  Element elementDate;

  //  The name of the organization or individual that published the
  // operation definition.
  @HiveField(27)
  String publisher;

  //  Extensions for publisher
  @HiveField(28)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(29)
  List<ContactDetail> contact;

  //  A free text natural language description of the operation definition
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
  // searching for appropriate operation definition instances.
  @HiveField(32)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the operation definition is
  // intended to be used.
  @HiveField(33)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this operation definition is needed and why it has
  // been designed as it has.
  @HiveField(34)
  String purpose;

  //  Extensions for purpose
  @HiveField(35)
  Element elementPurpose;

  //  Whether the operation affects state. Side effects such as producing
  // audit trail entries do not count as 'affecting  state'.
  @HiveField(36)
  bool affectsState;

  //  Extensions for affectsState
  @HiveField(37)
  Element elementAffectsState;

  //  The name used to invoke the operation.
  @HiveField(38)
  String code;

  //  Extensions for code
  @HiveField(39)
  Element elementCode;

  //  Additional information about how to use this operation or named query.
  @HiveField(40)
  String comment;

  //  Extensions for comment
  @HiveField(41)
  Element elementComment;

  //  Indicates that this operation definition is a constraining profile on
  // the base.
  @HiveField(42)
  String base;

  //  The types on which this operation can be executed.
  @HiveField(43)
  List<String> resource;

  //  Extensions for resource
  @HiveField(44)
  List<Element> elementResource;

  //  Indicates whether this operation or named query can be invoked at the
  // system level (e.g. without needing to choose a resource type for the
  // context).
  @HiveField(45)
  bool system;

  //  Extensions for system
  @HiveField(46)
  Element elementSystem;

  //  Indicates whether this operation or named query can be invoked at the
  // resource type level for any given resource type level (e.g. without
  // needing to choose a specific resource id for the context).
  @HiveField(47)
  bool type;

  //  Extensions for type
  @HiveField(48)
  Element elementType;

  //  Indicates whether this operation can be invoked on a particular
  // instance of one of the given types.
  @HiveField(49)
  bool instance;

  //  Extensions for instance
  @HiveField(50)
  Element elementInstance;

  //  Additional validation information for the in parameters - a single
  // profile that covers all the parameters. The profile is a constraint on
  // the parameters resource as a whole.
  @HiveField(51)
  String inputProfile;

  //  Additional validation information for the out parameters - a single
  // profile that covers all the parameters. The profile is a constraint on
  // the parameters resource.
  @HiveField(52)
  String outputProfile;

  //  The parameters for the operation/query.
  @HiveField(53)
  List<OperationDefinition_Parameter> parameter;

  //  Defines an appropriate combination of parameters to use when invoking
  // this operation, to help code generators when generating overloaded
  // parameter sets for this operation.
  @HiveField(54)
  List<OperationDefinition_Overload> overload;

OperationDefinition(
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
    this.title,
    this.elementTitle,
    this.status,
    this.elementStatus,
    this.kind,
    this.elementKind,
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
    this.affectsState,
    this.elementAffectsState,
    this.code,
    this.elementCode,
    this.comment,
    this.elementComment,
    this.base,
    this.resource,
    this.elementResource,
    this.system,
    this.elementSystem,
    this.type,
    this.elementType,
    this.instance,
    this.elementInstance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload
    });

  factory OperationDefinition.fromJson(Map<String, dynamic> json) => _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 459)
class OperationDefinition_Parameter {

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

  //  The name of used to identify the parameter.
  @HiveField(3)
  String name;

  //  Extensions for name
  @HiveField(4)
  Element elementName;

  //  Whether this is an input or an output parameter.
  @HiveField(5)
  String use; // <code> enum: in/out;

  //  Extensions for use
  @HiveField(6)
  Element elementUse;

  //  The minimum number of times this parameter SHALL appear in the request
  // or response.
  @HiveField(7)
  int min;

  //  Extensions for min
  @HiveField(8)
  Element elementMin;

  //  The maximum number of times this element is permitted to appear in the
  // request or response.
  @HiveField(9)
  String max;

  //  Extensions for max
  @HiveField(10)
  Element elementMax;

  //  Describes the meaning or use of this parameter.
  @HiveField(11)
  String documentation;

  //  Extensions for documentation
  @HiveField(12)
  Element elementDocumentation;

  //  The type for this parameter.
  @HiveField(13)
  String type;

  //  Extensions for type
  @HiveField(14)
  Element elementType;

  //  Used when the type is "Reference" or "canonical", and identifies a
  // profile structure or implementation Guide that applies to the target of
  // the reference this parameter refers to. If any profiles are specified,
  // then the content must conform to at least one of them. The URL can be a
  // local reference - to a contained StructureDefinition, or a reference to
  // another StructureDefinition or Implementation Guide by a canonical URL.
  // When an implementation guide is specified, the target resource SHALL
  // conform to at least one profile defined in the implementation guide.
  @HiveField(15)
  List<String> targetProfile;

  //  How the parameter is understood as a search parameter. This is only
  // used if the parameter type is 'string'.
  @HiveField(16)
  String searchType; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;

  //  Extensions for searchType
  @HiveField(17)
  Element elementSearchType;

  //  Binds to a value set if this parameter is coded (code, Coding,
  // CodeableConcept).
  @HiveField(18)
  OperationDefinition_Binding binding;

  //  Identifies other resource parameters within the operation invocation
  // that are expected to resolve to this resource.
  @HiveField(19)
  List<OperationDefinition_ReferencedFrom> referencedFrom;

  //  The parts of a nested Parameter.
  @HiveField(20)
  List<OperationDefinition_Parameter> part;

OperationDefinition_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.use,
    this.elementUse,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.documentation,
    this.elementDocumentation,
    this.type,
    this.elementType,
    this.targetProfile,
    this.searchType,
    this.elementSearchType,
    this.binding,
    this.referencedFrom,
    this.part
    });

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 460)
class OperationDefinition_Binding {

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

  //  Indicates the degree of conformance expectations associated with this
  // binding - that is, the degree to which the provided value set must be
  // adhered to in the instances.
  @HiveField(3)
  String strength; // <code> enum: required/extensible/preferred/example;

  //  Extensions for strength
  @HiveField(4)
  Element elementStrength;

  //  Points to the value set or external definition (e.g. implicit value
  // set) that identifies the set of codes to be used.
  @HiveField(5)
  String valueSet;

OperationDefinition_Binding(
  this.valueSet,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.elementStrength
    });

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) => _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 461)
class OperationDefinition_ReferencedFrom {

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

  //  The name of the parameter or dot-separated path of parameter names
  // pointing to the resource parameter that is expected to contain a
  // reference to this resource.
  @HiveField(3)
  String source;

  //  Extensions for source
  @HiveField(4)
  Element elementSource;

  //  The id of the element in the referencing resource that is expected to
  // resolve to this resource.
  @HiveField(5)
  String sourceId;

  //  Extensions for sourceId
  @HiveField(6)
  Element elementSourceId;

OperationDefinition_ReferencedFrom(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource,
    this.sourceId,
    this.elementSourceId
    });

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ReferencedFromToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 462)
class OperationDefinition_Overload {

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

  //  Name of parameter to include in overload.
  @HiveField(3)
  List<String> parameterName;

  //  Extensions for parameterName
  @HiveField(4)
  List<Element> elementParameterName;

  //  Comments to go on overload.
  @HiveField(5)
  String comment;

  //  Extensions for comment
  @HiveField(6)
  Element elementComment;

OperationDefinition_Overload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.parameterName,
    this.elementParameterName,
    this.comment,
    this.elementComment
    });

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) => _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_OverloadToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OperationDefinitionAdapter extends TypeAdapter<OperationDefinition> {
  @override
  final typeId = 458;

  @override
  OperationDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationDefinition(
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
      title: fields[17] as String,
      elementTitle: fields[18] as Element,
      status: fields[19] as String,
      elementStatus: fields[20] as Element,
      kind: fields[21] as String,
      elementKind: fields[22] as Element,
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
      affectsState: fields[36] as bool,
      elementAffectsState: fields[37] as Element,
      code: fields[38] as String,
      elementCode: fields[39] as Element,
      comment: fields[40] as String,
      elementComment: fields[41] as Element,
      base: fields[42] as String,
      resource: (fields[43] as List)?.cast<String>(),
      elementResource: (fields[44] as List)?.cast<Element>(),
      system: fields[45] as bool,
      elementSystem: fields[46] as Element,
      type: fields[47] as bool,
      elementType: fields[48] as Element,
      instance: fields[49] as bool,
      elementInstance: fields[50] as Element,
      inputProfile: fields[51] as String,
      outputProfile: fields[52] as String,
      parameter: (fields[53] as List)?.cast<OperationDefinition_Parameter>(),
      overload: (fields[54] as List)?.cast<OperationDefinition_Overload>(),
    );
  }

  @override
  void write(BinaryWriter writer, OperationDefinition obj) {
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
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.title)
      ..writeByte(18)
      ..write(obj.elementTitle)
      ..writeByte(19)
      ..write(obj.status)
      ..writeByte(20)
      ..write(obj.elementStatus)
      ..writeByte(21)
      ..write(obj.kind)
      ..writeByte(22)
      ..write(obj.elementKind)
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
      ..write(obj.affectsState)
      ..writeByte(37)
      ..write(obj.elementAffectsState)
      ..writeByte(38)
      ..write(obj.code)
      ..writeByte(39)
      ..write(obj.elementCode)
      ..writeByte(40)
      ..write(obj.comment)
      ..writeByte(41)
      ..write(obj.elementComment)
      ..writeByte(42)
      ..write(obj.base)
      ..writeByte(43)
      ..write(obj.resource)
      ..writeByte(44)
      ..write(obj.elementResource)
      ..writeByte(45)
      ..write(obj.system)
      ..writeByte(46)
      ..write(obj.elementSystem)
      ..writeByte(47)
      ..write(obj.type)
      ..writeByte(48)
      ..write(obj.elementType)
      ..writeByte(49)
      ..write(obj.instance)
      ..writeByte(50)
      ..write(obj.elementInstance)
      ..writeByte(51)
      ..write(obj.inputProfile)
      ..writeByte(52)
      ..write(obj.outputProfile)
      ..writeByte(53)
      ..write(obj.parameter)
      ..writeByte(54)
      ..write(obj.overload);
  }
}

class OperationDefinition_ParameterAdapter
    extends TypeAdapter<OperationDefinition_Parameter> {
  @override
  final typeId = 459;

  @override
  OperationDefinition_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationDefinition_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      use: fields[5] as String,
      elementUse: fields[6] as Element,
      min: fields[7] as int,
      elementMin: fields[8] as Element,
      max: fields[9] as String,
      elementMax: fields[10] as Element,
      documentation: fields[11] as String,
      elementDocumentation: fields[12] as Element,
      type: fields[13] as String,
      elementType: fields[14] as Element,
      targetProfile: (fields[15] as List)?.cast<String>(),
      searchType: fields[16] as String,
      elementSearchType: fields[17] as Element,
      binding: fields[18] as OperationDefinition_Binding,
      referencedFrom:
          (fields[19] as List)?.cast<OperationDefinition_ReferencedFrom>(),
      part: (fields[20] as List)?.cast<OperationDefinition_Parameter>(),
    );
  }

  @override
  void write(BinaryWriter writer, OperationDefinition_Parameter obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.use)
      ..writeByte(6)
      ..write(obj.elementUse)
      ..writeByte(7)
      ..write(obj.min)
      ..writeByte(8)
      ..write(obj.elementMin)
      ..writeByte(9)
      ..write(obj.max)
      ..writeByte(10)
      ..write(obj.elementMax)
      ..writeByte(11)
      ..write(obj.documentation)
      ..writeByte(12)
      ..write(obj.elementDocumentation)
      ..writeByte(13)
      ..write(obj.type)
      ..writeByte(14)
      ..write(obj.elementType)
      ..writeByte(15)
      ..write(obj.targetProfile)
      ..writeByte(16)
      ..write(obj.searchType)
      ..writeByte(17)
      ..write(obj.elementSearchType)
      ..writeByte(18)
      ..write(obj.binding)
      ..writeByte(19)
      ..write(obj.referencedFrom)
      ..writeByte(20)
      ..write(obj.part);
  }
}

class OperationDefinition_BindingAdapter
    extends TypeAdapter<OperationDefinition_Binding> {
  @override
  final typeId = 460;

  @override
  OperationDefinition_Binding read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationDefinition_Binding(
      fields[5] as String,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      strength: fields[3] as String,
      elementStrength: fields[4] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, OperationDefinition_Binding obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.strength)
      ..writeByte(4)
      ..write(obj.elementStrength)
      ..writeByte(5)
      ..write(obj.valueSet);
  }
}

class OperationDefinition_ReferencedFromAdapter
    extends TypeAdapter<OperationDefinition_ReferencedFrom> {
  @override
  final typeId = 461;

  @override
  OperationDefinition_ReferencedFrom read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationDefinition_ReferencedFrom(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      source: fields[3] as String,
      elementSource: fields[4] as Element,
      sourceId: fields[5] as String,
      elementSourceId: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, OperationDefinition_ReferencedFrom obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.source)
      ..writeByte(4)
      ..write(obj.elementSource)
      ..writeByte(5)
      ..write(obj.sourceId)
      ..writeByte(6)
      ..write(obj.elementSourceId);
  }
}

class OperationDefinition_OverloadAdapter
    extends TypeAdapter<OperationDefinition_Overload> {
  @override
  final typeId = 462;

  @override
  OperationDefinition_Overload read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationDefinition_Overload(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      parameterName: (fields[3] as List)?.cast<String>(),
      elementParameterName: (fields[4] as List)?.cast<Element>(),
      comment: fields[5] as String,
      elementComment: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, OperationDefinition_Overload obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.parameterName)
      ..writeByte(4)
      ..write(obj.elementParameterName)
      ..writeByte(5)
      ..write(obj.comment)
      ..writeByte(6)
      ..write(obj.elementComment);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationDefinition _$OperationDefinitionFromJson(Map<String, dynamic> json) {
  return OperationDefinition(
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
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
    affectsState: json['affectsState'] as bool,
    elementAffectsState: json['elementAffectsState'] == null
        ? null
        : Element.fromJson(json['elementAffectsState'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    base: json['base'] as String,
    resource: (json['resource'] as List)?.map((e) => e as String)?.toList(),
    elementResource: (json['elementResource'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as bool,
    elementSystem: json['elementSystem'] == null
        ? null
        : Element.fromJson(json['elementSystem'] as Map<String, dynamic>),
    type: json['type'] as bool,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    instance: json['instance'] as bool,
    elementInstance: json['elementInstance'] == null
        ? null
        : Element.fromJson(json['elementInstance'] as Map<String, dynamic>),
    inputProfile: json['inputProfile'] as String,
    outputProfile: json['outputProfile'] as String,
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    overload: (json['overload'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Overload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationDefinitionToJson(
        OperationDefinition instance) =>
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
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
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
      'affectsState': instance.affectsState,
      'elementAffectsState': instance.elementAffectsState?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'base': instance.base,
      'resource': instance.resource,
      'elementResource':
          instance.elementResource?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'elementSystem': instance.elementSystem?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'instance': instance.instance,
      'elementInstance': instance.elementInstance?.toJson(),
      'inputProfile': instance.inputProfile,
      'outputProfile': instance.outputProfile,
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'overload': instance.overload?.map((e) => e?.toJson())?.toList(),
    };

OperationDefinition_Parameter _$OperationDefinition_ParameterFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Parameter(
    id: json['id'] as String,
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
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    searchType: json['searchType'] as String,
    elementSearchType: json['elementSearchType'] == null
        ? null
        : Element.fromJson(json['elementSearchType'] as Map<String, dynamic>),
    binding: json['binding'] == null
        ? null
        : OperationDefinition_Binding.fromJson(
            json['binding'] as Map<String, dynamic>),
    referencedFrom: (json['referencedFrom'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_ReferencedFrom.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    part: (json['part'] as List)
        ?.map((e) => e == null
            ? null
            : OperationDefinition_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationDefinition_ParameterToJson(
        OperationDefinition_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'targetProfile': instance.targetProfile,
      'searchType': instance.searchType,
      'elementSearchType': instance.elementSearchType?.toJson(),
      'binding': instance.binding?.toJson(),
      'referencedFrom':
          instance.referencedFrom?.map((e) => e?.toJson())?.toList(),
      'part': instance.part?.map((e) => e?.toJson())?.toList(),
    };

OperationDefinition_Binding _$OperationDefinition_BindingFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Binding(
    json['valueSet'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: json['strength'] as String,
    elementStrength: json['elementStrength'] == null
        ? null
        : Element.fromJson(json['elementStrength'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_BindingToJson(
        OperationDefinition_Binding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'strength': instance.strength,
      'elementStrength': instance.elementStrength?.toJson(),
      'valueSet': instance.valueSet,
    };

OperationDefinition_ReferencedFrom _$OperationDefinition_ReferencedFromFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_ReferencedFrom(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    sourceId: json['sourceId'] as String,
    elementSourceId: json['elementSourceId'] == null
        ? null
        : Element.fromJson(json['elementSourceId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_ReferencedFromToJson(
        OperationDefinition_ReferencedFrom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'sourceId': instance.sourceId,
      'elementSourceId': instance.elementSourceId?.toJson(),
    };

OperationDefinition_Overload _$OperationDefinition_OverloadFromJson(
    Map<String, dynamic> json) {
  return OperationDefinition_Overload(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parameterName:
        (json['parameterName'] as List)?.map((e) => e as String)?.toList(),
    elementParameterName: (json['elementParameterName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OperationDefinition_OverloadToJson(
        OperationDefinition_Overload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'parameterName': instance.parameterName,
      'elementParameterName':
          instance.elementParameterName?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };
