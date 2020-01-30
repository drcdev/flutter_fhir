import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'operationDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition {

//  This is a OperationDefinition resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  Extensions for implicitRules
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
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
List<Extension> modifierExtension;

//  An absolute URI that is used to identify this operation definition
// when it is referenced in a specification, model, design or an instance;
// also called its canonical identifier. This SHOULD be globally unique
// and SHOULD be a literal address at which at which an authoritative
// instance of this operation definition is (or will be) published. This
// URL can be the target of a canonical reference. It SHALL remain the
// same when the operation definition is stored on different servers.
String url;

//  Extensions for url
Element element_url;

//  The identifier that is used to identify this version of the operation
// definition when it is referenced in a specification, model, design or
// instance. This is an arbitrary value managed by the operation
// definition author and is not expected to be globally unique. For
// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
// is not available. There is also no expectation that versions can be
// placed in a lexicographical sequence.
String version;

//  Extensions for version
Element element_version;

//  A natural language name identifying the operation definition. This
// name should be usable as an identifier for the module by machine
// processing applications such as code generation.
String name;

//  Extensions for name
Element element_name;

//  A short, descriptive, user-friendly title for the operation
// definition.
String title;

//  Extensions for title
Element element_title;

//  The status of this operation definition. Enables tracking the
// life-cycle of the content.
String status; // <code> enum: draft/active/retired/unknown;

//  Extensions for status
Element element_status;

//  Whether this is an operation or a named query.
String kind; // <code> enum: operation/query;

//  Extensions for kind
Element element_kind;

//  A Boolean value to indicate that this operation definition is authored
// for testing purposes (or education/evaluation/marketing) and is not
// intended to be used for genuine usage.
bool experimental;

//  Extensions for experimental
Element element_experimental;

//  The date  (and optionally time) when the operation definition was
// published. The date must change when the business version changes and
// it must change if the status code changes. In addition, it should
// change when the substantive content of the operation definition
// changes.
DateTime date;

//  Extensions for date
Element element_date;

//  The name of the organization or individual that published the
// operation definition.
String publisher;

//  Extensions for publisher
Element element_publisher;

//  Contact details to assist a user in finding and communicating with the
// publisher.
List<ContactDetail> contact;

//  A free text natural language description of the operation definition
// from a consumer's perspective.
String description;

//  Extensions for description
Element element_description;

//  The content was developed with a focus and intent of supporting the
// contexts that are listed. These contexts may be general categories
// (gender, age, ...) or may be references to specific programs (insurance
// plans, studies, ...) and may be used to assist with indexing and
// searching for appropriate operation definition instances.
List<UsageContext> useContext;

//  A legal or geographic region in which the operation definition is
// intended to be used.
List<CodeableConcept> jurisdiction;

//  Explanation of why this operation definition is needed and why it has
// been designed as it has.
String purpose;

//  Extensions for purpose
Element element_purpose;

//  Whether the operation affects state. Side effects such as producing
// audit trail entries do not count as 'affecting  state'.
bool affectsState;

//  Extensions for affectsState
Element element_affectsState;

//  The name used to invoke the operation.
String code;

//  Extensions for code
Element element_code;

//  Additional information about how to use this operation or named query.
String comment;

//  Extensions for comment
Element element_comment;

//  Indicates that this operation definition is a constraining profile on
// the base.
String base;

//  The types on which this operation can be executed.
List<String> resource;

//  Extensions for resource
List<Element> element_resource;

//  Indicates whether this operation or named query can be invoked at the
// system level (e.g. without needing to choose a resource type for the
// context).
bool system;

//  Extensions for system
Element element_system;

//  Indicates whether this operation or named query can be invoked at the
// resource type level for any given resource type level (e.g. without
// needing to choose a specific resource id for the context).
bool type;

//  Extensions for type
Element element_type;

//  Indicates whether this operation can be invoked on a particular
// instance of one of the given types.
bool instance;

//  Extensions for instance
Element element_instance;

//  Additional validation information for the in parameters - a single
// profile that covers all the parameters. The profile is a constraint on
// the parameters resource as a whole.
String inputProfile;

//  Additional validation information for the out parameters - a single
// profile that covers all the parameters. The profile is a constraint on
// the parameters resource.
String outputProfile;

//  The parameters for the operation/query.
List<OperationDefinition_Parameter> parameter;

//  Defines an appropriate combination of parameters to use when invoking
// this operation, to help code generators when generating overloaded
// parameter sets for this operation.
List<OperationDefinition_Overload> overload;

OperationDefinition(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.element_url,
    this.version,
    this.element_version,
    this.name,
    this.element_name,
    this.title,
    this.element_title,
    this.status,
    this.element_status,
    this.kind,
    this.element_kind,
    this.experimental,
    this.element_experimental,
    this.date,
    this.element_date,
    this.publisher,
    this.element_publisher,
    this.contact,
    this.description,
    this.element_description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.element_purpose,
    this.affectsState,
    this.element_affectsState,
    this.code,
    this.element_code,
    this.comment,
    this.element_comment,
    this.base,
    this.resource,
    this.element_resource,
    this.system,
    this.element_system,
    this.type,
    this.element_type,
    this.instance,
    this.element_instance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload
    });

  factory OperationDefinition.fromJson(Map<String, dynamic> json) => _$OperationDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Parameter {

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

//  The name of used to identify the parameter.
String name;

//  Extensions for name
Element element_name;

//  Whether this is an input or an output parameter.
String use; // <code> enum: in/out;

//  Extensions for use
Element element_use;

//  The minimum number of times this parameter SHALL appear in the request
// or response.
int min;

//  Extensions for min
Element element_min;

//  The maximum number of times this element is permitted to appear in the
// request or response.
String max;

//  Extensions for max
Element element_max;

//  Describes the meaning or use of this parameter.
String documentation;

//  Extensions for documentation
Element element_documentation;

//  The type for this parameter.
String type;

//  Extensions for type
Element element_type;

//  Used when the type is "Reference" or "canonical", and identifies a
// profile structure or implementation Guide that applies to the target of
// the reference this parameter refers to. If any profiles are specified,
// then the content must conform to at least one of them. The URL can be a
// local reference - to a contained StructureDefinition, or a reference to
// another StructureDefinition or Implementation Guide by a canonical URL.
// When an implementation guide is specified, the target resource SHALL
// conform to at least one profile defined in the implementation guide.
List<String> targetProfile;

//  How the parameter is understood as a search parameter. This is only
// used if the parameter type is 'string'.
String searchType; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;

//  Extensions for searchType
Element element_searchType;

//  Binds to a value set if this parameter is coded (code, Coding,
// CodeableConcept).
OperationDefinition_Binding binding;

//  Identifies other resource parameters within the operation invocation
// that are expected to resolve to this resource.
List<OperationDefinition_ReferencedFrom> referencedFrom;

//  The parts of a nested Parameter.
List<OperationDefinition_Parameter> part;

OperationDefinition_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.element_name,
    this.use,
    this.element_use,
    this.min,
    this.element_min,
    this.max,
    this.element_max,
    this.documentation,
    this.element_documentation,
    this.type,
    this.element_type,
    this.targetProfile,
    this.searchType,
    this.element_searchType,
    this.binding,
    this.referencedFrom,
    this.part
    });

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Binding {

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

//  Indicates the degree of conformance expectations associated with this
// binding - that is, the degree to which the provided value set must be
// adhered to in the instances.
String strength; // <code> enum: required/extensible/preferred/example;

//  Extensions for strength
Element element_strength;

//  Points to the value set or external definition (e.g. implicit value
// set) that identifies the set of codes to be used.
String valueSet;

OperationDefinition_Binding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.element_strength,
    this.valueSet
    });

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) => _$OperationDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_ReferencedFrom {

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

//  The name of the parameter or dot-separated path of parameter names
// pointing to the resource parameter that is expected to contain a
// reference to this resource.
String source;

//  Extensions for source
Element element_source;

//  The id of the element in the referencing resource that is expected to
// resolve to this resource.
String sourceId;

//  Extensions for sourceId
Element element_sourceId;

OperationDefinition_ReferencedFrom(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.element_source,
    this.sourceId,
    this.element_sourceId
    });

  factory OperationDefinition_ReferencedFrom.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ReferencedFromFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ReferencedFromToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Overload {

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

//  Name of parameter to include in overload.
List<String> parameterName;

//  Extensions for parameterName
List<Element> element_parameterName;

//  Comments to go on overload.
String comment;

//  Extensions for comment
Element element_comment;

OperationDefinition_Overload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.parameterName,
    this.element_parameterName,
    this.comment,
    this.element_comment
    });

  factory OperationDefinition_Overload.fromJson(Map<String, dynamic> json) => _$OperationDefinition_OverloadFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_OverloadToJson(this);
}

