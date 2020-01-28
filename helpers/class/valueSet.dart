import 'package:json_annotation/json_annotation.dart';

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

part 'valueSet.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet {


// This is a ValueSet resource
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

// An absolute URI that is used to identify this value set when it is referenced in
//  a specification, model, design or an instance; also called its canonical
//  identifier. This SHOULD be globally unique and SHOULD be a literal address at
//  which at which an authoritative instance of this value set is (or will be)
//  published. This URL can be the target of a canonical reference. It SHALL remain
//  the same when the value set is stored on different servers.
String url;

// Extensions for url
Element _url;

// A formal identifier that is used to identify this value set when it is
//  represented in other formats, or referenced in a specification, model, design
//  or an instance.
List<Identifier> identifier;

// The identifier that is used to identify this version of the value set when it is
//  referenced in a specification, model, design or instance. This is an arbitrary
//  value managed by the value set author and is not expected to be globally
//  unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed
//  version is not available. There is also no expectation that versions can be
//  placed in a lexicographical sequence.
String version;

// Extensions for version
Element _version;

// A natural language name identifying the value set. This name should be usable as
//  an identifier for the module by machine processing applications such as code
//  generation.
String name;

// Extensions for name
Element _name;

// A short, descriptive, user-friendly title for the value set.
String title;

// Extensions for title
Element _title;

// The status of this value set. Enables tracking the life-cycle of the content.
//  The status of the value set applies to the value set definition
//  (ValueSet.compose) and the associated ValueSet metadata. Expansions do not have a state.
String status; // <code> enum: draft/active/retired/unknown;

// Extensions for status
Element _status;

// A Boolean value to indicate that this value set is authored for testing purposes
//  (or education/evaluation/marketing) and is not intended to be used for genuine
//  usage.
bool experimental;

// Extensions for experimental
Element _experimental;

// The date (and optionally time) when the value set was created or revised (e.g.
//  the 'content logical definition').
DateTime date;

// Extensions for date
Element _date;

// The name of the organization or individual that published the value set.
String publisher;

// Extensions for publisher
Element _publisher;

// Contact details to assist a user in finding and communicating with the
//  publisher.
List<ContactDetail> contact;

// A free text natural language description of the value set from a consumer's
//  perspective. The textual description specifies the span of meanings for
//  concepts to be included within the Value Set Expansion, and also may specify
//  the intended use and limitations of the Value Set.
String description;

// Extensions for description
Element _description;

// The content was developed with a focus and intent of supporting the contexts
//  that are listed. These contexts may be general categories (gender, age, ...) or
//  may be references to specific programs (insurance plans, studies, ...) and may
//  be used to assist with indexing and searching for appropriate value set instances.
List<UsageContext> useContext;

// A legal or geographic region in which the value set is intended to be used.
List<CodeableConcept> jurisdiction;

// If this is set to 'true', then no new versions of the content logical definition
//  can be created.  Note: Other metadata might still change.
bool immutable;

// Extensions for immutable
Element _immutable;

// Explanation of why this value set is needed and why it has been designed as it
//  has.
String purpose;

// Extensions for purpose
Element _purpose;

// A copyright statement relating to the value set and/or its contents. Copyright
//  statements are generally legal restrictions on the use and publishing of the
//  value set.
String copyright;

// Extensions for copyright
Element _copyright;

// A set of criteria that define the contents of the value set by including or
//  excluding codes selected from the specified code system(s) that the value set
//  draws from. This is also known as the Content Logical Definition (CLD).
ValueSet_Compose compose;

// A value set can also be "expanded", where the value set is turned into a simple
//  collection of enumerated codes. This element holds the expansion, if it has
//  been performed.
ValueSet_Expansion expansion;

ValueSet(
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
    this.immutable,
    this._immutable,
    this.purpose,
    this._purpose,
    this.copyright,
    this._copyright,
    this.compose,
    this.expansion
    });

  factory ValueSet.fromJson(Map<String, dynamic> json) => _$ValueSetFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Compose {


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

// The Locked Date is  the effective date that is used to determine the version of
//  all referenced Code Systems and Value Set Definitions included in the compose
//  that are not already tied to a specific version.
String lockedDate;

// Extensions for lockedDate
Element _lockedDate;

// Whether inactive codes - codes that are not approved for current use - are in
//  the value set. If inactive = true, inactive codes are to be included in the
//  expansion, if inactive = false, the inactive codes will not be included in the
//  expansion. If absent, the behavior is determined by the implementation, or by
//  the applicable $expand parameters (but generally, inactive codes would be
//  expected to be included).
bool inactive;

// Extensions for inactive
Element _inactive;

// Include one or more codes from a code system or other value set(s).
List<ValueSet_Include> include;

// Exclude one or more codes from the value set based on code system filters and/or
//  other value sets.
List<ValueSet_Include> exclude;

ValueSet_Compose(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.lockedDate,
    this._lockedDate,
    this.inactive,
    this._inactive,
    this.include,
    this.exclude
    });

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) => _$ValueSet_ComposeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ComposeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Include {


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

// An absolute URI which is the code system from which the selected codes come
//  from.
String system;

// Extensions for system
Element _system;

// The version of the code system that the codes are selected from, or the special
//  version '*' for all versions.
String version;

// Extensions for version
Element _version;

// Specifies a concept to be included or excluded.
List<ValueSet_Concept> concept;

// Select concepts by specify a matching criterion based on the properties
//  (including relationships) defined by the system, or on filters defined by the
//  system. If multiple filters are specified, they SHALL all be true.
List<ValueSet_Filter> filter;

// Selects the concepts found in this value set (based on its value set
//  definition). This is an absolute URI that is a reference to ValueSet.url.  If
//  multiple value sets are specified this includes the union of the contents of
//  all of the referenced value sets.
List<String> valueSet;

ValueSet_Include(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this._system,
    this.version,
    this._version,
    this.concept,
    this.filter,
    this.valueSet
    });

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) => _$ValueSet_IncludeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_IncludeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Concept {


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

// Specifies a code for the concept to be included or excluded.
String code;

// Extensions for code
Element _code;

// The text to display to the user for this concept in the context of this
//  valueset. If no display is provided, then applications using the value set use
//  the display specified for the code by the system.
String display;

// Extensions for display
Element _display;

// Additional representations for this concept when used in this value set - other
//  languages, aliases, specialized purposes, used for particular purposes, etc.
List<ValueSet_Designation> designation;

ValueSet_Concept(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this._code,
    this.display,
    this._display,
    this.designation
    });

  factory ValueSet_Concept.fromJson(Map<String, dynamic> json) => _$ValueSet_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ConceptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Designation {


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

// The language this designation is defined for.
String language;

// Extensions for language
Element _language;

// A code that represents types of uses of designations.
Coding use;

// The text value for this designation.
String value;

// Extensions for value
Element _value;

ValueSet_Designation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this._language,
    this.use,
    this.value,
    this._value
    });

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) => _$ValueSet_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Filter {


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

// A code that identifies a property or a filter defined in the code system.
String property;

// Extensions for property
Element _property;

// The kind of operation to perform as a part of the filter criteria.
String op; // <code> enum: =/is-a/descendent-of/is-not-a/regex/in/not-in/generalizes/exists;

// Extensions for op
Element _op;

// The match value may be either a code defined by the system, or a string value,
//  which is a regex match on the literal string of the property value  (if the
//  filter represents a property defined in CodeSystem) or of the system filter
//  value (if the filter represents a filter defined in CodeSystem) when the
//  operation is 'regex', or one of the values (true and false), when the operation is 'exists'.
String value;

// Extensions for value
Element _value;

ValueSet_Filter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this._property,
    this.op,
    this._op,
    this.value,
    this._value
    });

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) => _$ValueSet_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Expansion {


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

// An identifier that uniquely identifies this expansion of the valueset, based on
//  a unique combination of the provided parameters, the system default parameters,
//  and the underlying system code system versions etc. Systems may re-use the same
//  identifier as long as those factors remain the same, and the expansion is the
//  same, but are not required to do so. This is a business identifier.
String identifier;

// Extensions for identifier
Element _identifier;

// The time at which the expansion was produced by the expanding system.
DateTime timestamp;

// Extensions for timestamp
Element _timestamp;

// The total number of concepts in the expansion. If the number of concept nodes in
//  this resource is less than the stated number, then the server can return more
//  using the offset parameter.
int total;

// Extensions for total
Element _total;

// If paging is being used, the offset at which this resource starts.  I.e. this
//  resource is a partial view into the expansion. If paging is not being used,
//  this element SHALL NOT be present.
int offset;

// Extensions for offset
Element _offset;

// A parameter that controlled the expansion process. These parameters may be used
//  by users of expanded value sets to check whether the expansion is suitable for
//  a particular purpose, or to pick the correct expansion.
List<ValueSet_Parameter> parameter;

// The codes that are contained in the value set expansion.
List<ValueSet_Contains> contains;

ValueSet_Expansion(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this._identifier,
    this.timestamp,
    this._timestamp,
    this.total,
    this._total,
    this.offset,
    this._offset,
    this.parameter,
    this.contains
    });

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) => _$ValueSet_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Parameter {


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

// Name of the input parameter to the $expand operation; may be a server-assigned
//  name for additional default or other server-supplied parameters used to control
//  the expansion process.
String name;

// Extensions for name
Element _name;

// The value of the parameter.
String valueString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for valueString
Element _valueString;

// The value of the parameter.
bool valueBoolean; //  pattern: ^true|false$

// Extensions for valueBoolean
Element _valueBoolean;

// The value of the parameter.
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for valueInteger
Element _valueInteger;

// The value of the parameter.
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for valueDecimal
Element _valueDecimal;

// The value of the parameter.
String valueUri; //  pattern: ^\S*$

// Extensions for valueUri
Element _valueUri;

// The value of the parameter.
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

// Extensions for valueCode
Element _valueCode;

// The value of the parameter.
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for valueDateTime
Element _valueDateTime;

ValueSet_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this._name,
    this.valueString,
    this._valueString,
    this.valueBoolean,
    this._valueBoolean,
    this.valueInteger,
    this._valueInteger,
    this.valueDecimal,
    this._valueDecimal,
    this.valueUri,
    this._valueUri,
    this.valueCode,
    this._valueCode,
    this.valueDateTime,
    this._valueDateTime
    });

  factory ValueSet_Parameter.fromJson(Map<String, dynamic> json) => _$ValueSet_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Contains {


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

// An absolute URI which is the code system in which the code for this item in the
//  expansion is defined.
String system;

// Extensions for system
Element _system;

// If true, this entry is included in the expansion for navigational purposes, and
//  the user cannot select the code directly as a proper value.
bool abstract;

// Extensions for abstract
Element _abstract;

// If the concept is inactive in the code system that defines it. Inactive codes
//  are those that are no longer to be used, but are maintained by the code system
//  for understanding legacy data. It might not be known or specified whether an
//  concept is inactive (and it may depend on the context of use).
bool inactive;

// Extensions for inactive
Element _inactive;

// The version of the code system from this code was taken. Note that a
//  well-maintained code system does not need the version reported, because the
//  meaning of codes is consistent across versions. However this cannot
//  consistently be assured, and when the meaning is not guaranteed to be
//  consistent, the version SHOULD be exchanged.
String version;

// Extensions for version
Element _version;

// The code for this item in the expansion hierarchy. If this code is missing the
//  entry in the hierarchy is a place holder (abstract) and does not represent a
//  valid code in the value set.
String code;

// Extensions for code
Element _code;

// The recommended display for this item in the expansion.
String display;

// Extensions for display
Element _display;

// Additional representations for this item - other languages, aliases, specialized
//  purposes, used for particular purposes, etc. These are relevant when the
//  conditions of the expansion do not fix to a single correct representation.
List<ValueSet_Designation> designation;

// Other codes and entries contained under this entry in the hierarchy.
List<ValueSet_Contains> contains;

ValueSet_Contains(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.system,
    this._system,
    this.abstract,
    this._abstract,
    this.inactive,
    this._inactive,
    this.version,
    this._version,
    this.code,
    this._code,
    this.display,
    this._display,
    this.designation,
    this.contains
    });

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) => _$ValueSet_ContainsFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ContainsToJson(this);
}

