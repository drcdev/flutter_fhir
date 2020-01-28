import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/elementDefinition.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'structureDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition {


// This is a StructureDefinition resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// An absolute URI that is used to identify this structure definition when it is
//  referenced in a specification, model, design or an instance; also called its
//  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
//  address at which at which an authoritative instance of this structure
//  definition is (or will be) published. This URL can be the target of a canonical
//  reference. It SHALL remain the same when the structure definition is stored on different servers.
String url;

// Extensions for url
Element _url;

// A formal identifier that is used to identify this structure definition when it
//  is represented in other formats, or referenced in a specification, model,
//  design or an instance.
List<Identifier> identifier;

// The identifier that is used to identify this version of the structure definition
//  when it is referenced in a specification, model, design or instance. This is an
//  arbitrary value managed by the structure definition author and is not expected
//  to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if
//  a managed version is not available. There is also no expectation that versions
//  can be placed in a lexicographical sequence.
String version;

// Extensions for version
Element _version;

// A natural language name identifying the structure definition. This name should
//  be usable as an identifier for the module by machine processing applications
//  such as code generation.
String name;

// Extensions for name
Element _name;

// A short, descriptive, user-friendly title for the structure definition.
String title;

// Extensions for title
Element _title;

// The status of this structure definition. Enables tracking the life-cycle of the
//  content.
String status; // <code> enum: draft/active/retired/unknown;

// Extensions for status
Element _status;

// A Boolean value to indicate that this structure definition is authored for
//  testing purposes (or education/evaluation/marketing) and is not intended to be
//  used for genuine usage.
bool experimental;

// Extensions for experimental
Element _experimental;

// The date  (and optionally time) when the structure definition was published. The
//  date must change when the business version changes and it must change if the
//  status code changes. In addition, it should change when the substantive content
//  of the structure definition changes.
DateTime date;

// Extensions for date
Element _date;

// The name of the organization or individual that published the structure
//  definition.
String publisher;

// Extensions for publisher
Element _publisher;

// Contact details to assist a user in finding and communicating with the
//  publisher.
List<ContactDetail> contact;

// A free text natural language description of the structure definition from a
//  consumer's perspective.
String description;

// Extensions for description
Element _description;

// The content was developed with a focus and intent of supporting the contexts
//  that are listed. These contexts may be general categories (gender, age, ...) or
//  may be references to specific programs (insurance plans, studies, ...) and may
//  be used to assist with indexing and searching for appropriate structure
//  definition instances.
List<UsageContext> useContext;

// A legal or geographic region in which the structure definition is intended to be
//  used.
List<CodeableConcept> jurisdiction;

// Explanation of why this structure definition is needed and why it has been
//  designed as it has.
String purpose;

// Extensions for purpose
Element _purpose;

// A copyright statement relating to the structure definition and/or its contents.
//  Copyright statements are generally legal restrictions on the use and publishing
//  of the structure definition.
String copyright;

// Extensions for copyright
Element _copyright;

// A set of key words or terms from external terminologies that may be used to
//  assist with indexing and searching of templates nby describing the use of this
//  structure definition, or the content it describes.
List<Coding> keyword;

// The version of the FHIR specification on which this StructureDefinition is based
//  - this is the formal version of the specification, without the revision number,
//  e.g. [publication].[major].[minor], which is 4.0.1. for this version.
String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;

// Extensions for fhirVersion
Element _fhirVersion;

// An external specification that the content is mapped to.
List<StructureDefinition_Mapping> mapping;

// Defines the kind of structure that this definition is describing.
String kind; // <code> enum: primitive-type/complex-type/resource/logical;

// Extensions for kind
Element _kind;

// Whether structure this definition describes is abstract or not  - that is,
//  whether the structure is not intended to be instantiated. For Resources and
//  Data types, abstract types will never be exchanged  between systems.
bool abstract;

// Extensions for abstract
Element _abstract;

// Identifies the types of resource or data type elements to which the extension
//  can be applied.
List<StructureDefinition_Context> context;

// A set of rules as FHIRPath Invariants about when the extension can be used (e.g.
//  co-occurrence variants for the extension). All the rules must be true.
List<String> contextInvariant;

// Extensions for contextInvariant
List<Element> _contextInvariant;

// The type this structure describes. If the derivation kind is 'specialization'
//  then this is the master definition for a type, and there is always one of these
//  (a data type, an extension, a resource, including abstract ones). Otherwise the
//  structure definition is a constraint on the stated type (and in this case, the
//  type cannot be an abstract type).  References are URLs that are relative to
//  http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
//  http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only allowed
//  in logical models.
String type;

// Extensions for type
Element _type;

// An absolute URI that is the base structure from which this type is derived,
//  either by specialization or constraint.
String baseDefinition;

// How the type relates to the baseDefinition.
String derivation; // <code> enum: specialization/constraint;

// Extensions for derivation
Element _derivation;

// A snapshot view is expressed in a standalone form that can be used and
//  interpreted without considering the base StructureDefinition.
StructureDefinition_Snapshot snapshot;

// A differential view is expressed relative to the base StructureDefinition - a
//  statement of differences that it applies.
StructureDefinition_Differential differential;

StructureDefinition(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this._implicitRules,
    this.language,
    this._language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this._url,
    this.identifier,
    this.version,
    this._version,
    this.name,
    this._name,
    this.title,
    this._title,
    this.status,
    this._status,
    this.experimental,
    this._experimental,
    this.date,
    this._date,
    this.publisher,
    this._publisher,
    this.contact,
    this.description,
    this._description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this._purpose,
    this.copyright,
    this._copyright,
    this.keyword,
    this.fhirVersion,
    this._fhirVersion,
    this.mapping,
    this.kind,
    this._kind,
    this.abstract,
    this._abstract,
    this.context,
    this.contextInvariant,
    this._contextInvariant,
    this.type,
    this._type,
    this.baseDefinition,
    this.derivation,
    this._derivation,
    this.snapshot,
    this.differential
    });

  factory StructureDefinition.fromJson(Map<String, dynamic> json) => _$StructureDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Mapping {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// An Internal id that is used to identify this mapping set when specific mappings
//  are made.
String identity;

// Extensions for identity
Element _identity;

// An absolute URI that identifies the specification that this mapping is expressed
//  to.
String uri;

// Extensions for uri
Element _uri;

// A name for the specification that is being mapped to.
String name;

// Extensions for name
Element _name;

// Comments about this mapping, including version notes, issues, scope limitations,
//  and other important notes for usage.
String comment;

// Extensions for comment
Element _comment;

StructureDefinition_Mapping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this._identity,
    this.uri,
    this._uri,
    this.name,
    this._name,
    this.comment,
    this._comment
    });

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$StructureDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_MappingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Context {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Defines how to interpret the expression that defines what the context of the
//  extension is.
String type; // <code> enum: fhirpath/element/extension;

// Extensions for type
Element _type;

// An expression that defines where an extension can be used in resources.
String expression;

// Extensions for expression
Element _expression;

StructureDefinition_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this._type,
    this.expression,
    this._expression
    });

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) => _$StructureDefinition_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Snapshot {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Captures constraints on each element within the resource.
List<ElementDefinition> element;

StructureDefinition_Snapshot(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.element
    });

  factory StructureDefinition_Snapshot.fromJson(Map<String, dynamic> json) => _$StructureDefinition_SnapshotFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_SnapshotToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Differential {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Captures constraints on each element within the resource.
List<ElementDefinition> element;

StructureDefinition_Differential(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.element
    });

  factory StructureDefinition_Differential.fromJson(Map<String, dynamic> json) => _$StructureDefinition_DifferentialFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_DifferentialToJson(this);
}

