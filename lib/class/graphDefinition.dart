import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'graphDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphDefinition {

//  This is a GraphDefinition resource
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

//  An absolute URI that is used to identify this graph definition when it
// is referenced in a specification, model, design or an instance; also
// called its canonical identifier. This SHOULD be globally unique and
// SHOULD be a literal address at which at which an authoritative instance
// of this graph definition is (or will be) published. This URL can be the
// target of a canonical reference. It SHALL remain the same when the
// graph definition is stored on different servers.
String url;

//  Extensions for url
Element element_url;

//  The identifier that is used to identify this version of the graph
// definition when it is referenced in a specification, model, design or
// instance. This is an arbitrary value managed by the graph definition
// author and is not expected to be globally unique. For example, it might
// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
// There is also no expectation that versions can be placed in a
// lexicographical sequence.
String version;

//  Extensions for version
Element element_version;

//  A natural language name identifying the graph definition. This name
// should be usable as an identifier for the module by machine processing
// applications such as code generation.
String name;

//  Extensions for name
Element element_name;

//  The status of this graph definition. Enables tracking the life-cycle
// of the content.
String status; // <code> enum: draft/active/retired/unknown;

//  Extensions for status
Element element_status;

//  A Boolean value to indicate that this graph definition is authored for
// testing purposes (or education/evaluation/marketing) and is not
// intended to be used for genuine usage.
bool experimental;

//  Extensions for experimental
Element element_experimental;

//  The date  (and optionally time) when the graph definition was
// published. The date must change when the business version changes and
// it must change if the status code changes. In addition, it should
// change when the substantive content of the graph definition changes.
DateTime date;

//  Extensions for date
Element element_date;

//  The name of the organization or individual that published the graph
// definition.
String publisher;

//  Extensions for publisher
Element element_publisher;

//  Contact details to assist a user in finding and communicating with the
// publisher.
List<ContactDetail> contact;

//  A free text natural language description of the graph definition from
// a consumer's perspective.
String description;

//  Extensions for description
Element element_description;

//  The content was developed with a focus and intent of supporting the
// contexts that are listed. These contexts may be general categories
// (gender, age, ...) or may be references to specific programs (insurance
// plans, studies, ...) and may be used to assist with indexing and
// searching for appropriate graph definition instances.
List<UsageContext> useContext;

//  A legal or geographic region in which the graph definition is intended
// to be used.
List<CodeableConcept> jurisdiction;

//  Explanation of why this graph definition is needed and why it has been
// designed as it has.
String purpose;

//  Extensions for purpose
Element element_purpose;

//  The type of FHIR resource at which instances of this graph start.
String start;

//  Extensions for start
Element element_start;

//  The profile that describes the use of the base resource.
String profile;

//  Links this graph makes rules about.
List<GraphDefinition_Link> link;

GraphDefinition(
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
    this.status,
    this.element_status,
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
    this.start,
    this.element_start,
    this.profile,
    this.link
    });

  factory GraphDefinition.fromJson(Map<String, dynamic> json) => _$GraphDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Link {

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

//  A FHIR expression that identifies one of FHIR References to other
// resources.
String path;

//  Extensions for path
Element element_path;

//  Which slice (if profiled).
String sliceName;

//  Extensions for sliceName
Element element_sliceName;

//  Minimum occurrences for this link.
int min;

//  Extensions for min
Element element_min;

//  Maximum occurrences for this link.
String max;

//  Extensions for max
Element element_max;

//  Information about why this link is of interest in this graph
// definition.
String description;

//  Extensions for description
Element element_description;

//  Potential target for the link.
List<GraphDefinition_Target> target;

GraphDefinition_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.element_path,
    this.sliceName,
    this.element_sliceName,
    this.min,
    this.element_min,
    this.max,
    this.element_max,
    this.description,
    this.element_description,
    this.target
    });

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) => _$GraphDefinition_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Target {

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

//  Type of resource this link refers to.
String type;

//  Extensions for type
Element element_type;

//  A set of parameters to look up.
String params;

//  Extensions for params
Element element_params;

//  Profile for the target resource.
String profile;

//  Compartment Consistency Rules.
List<GraphDefinition_Compartment> compartment;

//  Additional links from target resource.
List<GraphDefinition_Link> link;

GraphDefinition_Target(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.params,
    this.element_params,
    this.profile,
    this.compartment,
    this.link
    });

  factory GraphDefinition_Target.fromJson(Map<String, dynamic> json) => _$GraphDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Compartment {

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

//  Defines how the compartment rule is used - whether it it is used to
// test whether resources are subject to the rule, or whether it is a rule
// that must be followed.
String use; // <code> enum: condition/requirement;

//  Extensions for use
Element element_use;

//  Identifies the compartment.
String code;

//  Extensions for code
Element element_code;

//  identical | matching | different | no-rule | custom.
String rule; // <code> enum: identical/matching/different/custom;

//  Extensions for rule
Element element_rule;

//  Custom rule, as a FHIRPath expression.
String expression;

//  Extensions for expression
Element element_expression;

//  Documentation for FHIRPath expression.
String description;

//  Extensions for description
Element element_description;

GraphDefinition_Compartment(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.use,
    this.element_use,
    this.code,
    this.element_code,
    this.rule,
    this.element_rule,
    this.expression,
    this.element_expression,
    this.description,
    this.element_description
    });

  factory GraphDefinition_Compartment.fromJson(Map<String, dynamic> json) => _$GraphDefinition_CompartmentFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_CompartmentToJson(this);
}

