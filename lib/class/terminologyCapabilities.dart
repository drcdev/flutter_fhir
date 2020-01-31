import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'terminologyCapabilities.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities {

  //  This is a TerminologyCapabilities resource
  final String resourceType= 'TerminologyCapabilities';

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

  //  An absolute URI that is used to identify this terminology capabilities
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this terminology capabilities is (or will be) published.
  // This URL can be the target of a canonical reference. It SHALL remain
  // the same when the terminology capabilities is stored on different
  // servers.
  String url;

  //  Extensions for url
  Element element_url;

  //  The identifier that is used to identify this version of the
  // terminology capabilities when it is referenced in a specification,
  // model, design or instance. This is an arbitrary value managed by the
  // terminology capabilities author and is not expected to be globally
  // unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  // managed version is not available. There is also no expectation that
  // versions can be placed in a lexicographical sequence.
  String version;

  //  Extensions for version
  Element element_version;

  //  A natural language name identifying the terminology capabilities. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  String name;

  //  Extensions for name
  Element element_name;

  //  A short, descriptive, user-friendly title for the terminology
  // capabilities.
  String title;

  //  Extensions for title
  Element element_title;

  //  The status of this terminology capabilities. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element element_status;

  //  A Boolean value to indicate that this terminology capabilities is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element element_experimental;

  //  The date  (and optionally time) when the terminology capabilities was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the terminology capabilities
  // changes.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  The name of the organization or individual that published the
  // terminology capabilities.
  String publisher;

  //  Extensions for publisher
  Element element_publisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the terminology
  // capabilities from a consumer's perspective. Typically, this is used
  // when the capability statement describes a desired rather than an actual
  // solution, for example as a formal expression of requirements as part of
  // an RFP.
  String description;

  //  Extensions for description
  Element element_description;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate terminology capabilities instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the terminology capabilities is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this terminology capabilities is needed and why it
  // has been designed as it has.
  String purpose;

  //  Extensions for purpose
  Element element_purpose;

  //  A copyright statement relating to the terminology capabilities and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the terminology capabilities.
  String copyright;

  //  Extensions for copyright
  Element element_copyright;

  //  The way that this statement is intended to be used, to describe an
  // actual running instance of software, a particular product (kind, not
  // instance of software) or a class of implementation (e.g. a desired
  // purchase).
  String kind;

  //  Extensions for kind
  Element element_kind;

  //  Software that is covered by this terminology capability statement.  It
  // is used when the statement describes the capabilities of a particular
  // software version, independent of an installation.
  TerminologyCapabilities_Software software;

  //  Identifies a specific implementation instance that is described by the
  // terminology capability statement - i.e. a particular installation,
  // rather than the capabilities of a software program.
  TerminologyCapabilities_Implementation implementation;

  //  Whether the server supports lockedDate.
  bool lockedDate;

  //  Extensions for lockedDate
  Element element_lockedDate;

  //  Identifies a code system that is supported by the server. If there is
  // a no code system URL, then this declares the general assumptions a
  // client can make about support for any CodeSystem resource.
  List<TerminologyCapabilities_CodeSystem> codeSystem;

  //  Information about the
  // [ValueSet/$expand](valueset-operation-expand.html) operation.
  TerminologyCapabilities_Expansion expansion;

  //  The degree to which the server supports the code search parameter on
  // ValueSet, if it is supported.
  String codeSearch; // <code> enum: explicit/all;

  //  Extensions for codeSearch
  Element element_codeSearch;

  //  Information about the
  // [ValueSet/$validate-code](valueset-operation-validate-code.html)
  // operation.
  TerminologyCapabilities_ValidateCode validateCode;

  //  Information about the
  // [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  TerminologyCapabilities_Translation translation;

  //  Whether the $closure operation is supported.
  TerminologyCapabilities_Closure closure;

TerminologyCapabilities(
  {this.id,
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
    this.copyright,
    this.element_copyright,
    this.kind,
    this.element_kind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.element_lockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.element_codeSearch,
    this.validateCode,
    this.translation,
    this.closure
    });

  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilitiesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Software {

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

  //  Name the software is known by.
  String name;

  //  Extensions for name
  Element element_name;

  //  The version identifier for the software covered by this statement.
  String version;

  //  Extensions for version
  Element element_version;

TerminologyCapabilities_Software(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.element_name,
    this.version,
    this.element_version
    });

  factory TerminologyCapabilities_Software.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_SoftwareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Implementation {

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

  //  Information about the specific installation that this terminology
  // capability statement relates to.
  String description;

  //  Extensions for description
  Element element_description;

  //  An absolute base URL for the implementation.
  String url;

  //  Extensions for url
  Element element_url;

TerminologyCapabilities_Implementation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.url,
    this.element_url
    });

  factory TerminologyCapabilities_Implementation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ImplementationFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ImplementationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_CodeSystem {

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

  //  URI for the Code System.
  String uri;

  //  For the code system, a list of versions that are supported by the
  // server.
  List<TerminologyCapabilities_Version> version;

  //  True if subsumption is supported for this version of the code system.
  bool subsumption;

  //  Extensions for subsumption
  Element element_subsumption;

TerminologyCapabilities_CodeSystem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    this.element_subsumption
    });

  factory TerminologyCapabilities_CodeSystem.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_CodeSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Version {

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

  //  For version-less code systems, there should be a single version with
  // no identifier.
  String code;

  //  Extensions for code
  Element element_code;

  //  If this is the default version for this code system.
  bool isDefault;

  //  Extensions for isDefault
  Element element_isDefault;

  //  If the compositional grammar defined by the code system is supported.
  bool compositional;

  //  Extensions for compositional
  Element element_compositional;

  //  Language Displays supported.
  List<String> language;

  //  Extensions for language
  List<Element> element_language;

  //  Filter Properties supported.
  List<TerminologyCapabilities_Filter> filter;

  //  Properties supported for $lookup.
  List<String> property;

  //  Extensions for property
  List<Element> element_property;

TerminologyCapabilities_Version(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.element_code,
    this.isDefault,
    this.element_isDefault,
    this.compositional,
    this.element_compositional,
    this.language,
    this.element_language,
    this.filter,
    this.property,
    this.element_property
    });

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Filter {

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

  //  Code of the property supported.
  String code;

  //  Extensions for code
  Element element_code;

  //  Operations supported for the property.
  List<String> op;

  //  Extensions for op
  List<Element> element_op;

TerminologyCapabilities_Filter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.element_code,
    this.op,
    this.element_op
    });

  factory TerminologyCapabilities_Filter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Expansion {

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

  //  Whether the server can return nested value sets.
  bool hierarchical;

  //  Extensions for hierarchical
  Element element_hierarchical;

  //  Whether the server supports paging on expansion.
  bool paging;

  //  Extensions for paging
  Element element_paging;

  //  Allow request for incomplete expansions?
  bool incomplete;

  //  Extensions for incomplete
  Element element_incomplete;

  //  Supported expansion parameter.
  List<TerminologyCapabilities_Parameter> parameter;

  //  Documentation about text searching works.
  String textFilter;

  //  Extensions for textFilter
  Element element_textFilter;

TerminologyCapabilities_Expansion(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.hierarchical,
    this.element_hierarchical,
    this.paging,
    this.element_paging,
    this.incomplete,
    this.element_incomplete,
    this.parameter,
    this.textFilter,
    this.element_textFilter
    });

  factory TerminologyCapabilities_Expansion.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Parameter {

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

  //  Expansion Parameter name.
  String name;

  //  Extensions for name
  Element element_name;

  //  Description of support for parameter.
  String documentation;

  //  Extensions for documentation
  Element element_documentation;

TerminologyCapabilities_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.element_name,
    this.documentation,
    this.element_documentation
    });

  factory TerminologyCapabilities_Parameter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_ValidateCode {

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

  //  Whether translations are validated.
  bool translations;

  //  Extensions for translations
  Element element_translations;

TerminologyCapabilities_ValidateCode(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.translations,
    this.element_translations
    });

  factory TerminologyCapabilities_ValidateCode.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ValidateCodeFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ValidateCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Translation {

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

  //  Whether the client must identify the map.
  bool needsMap;

  //  Extensions for needsMap
  Element element_needsMap;

TerminologyCapabilities_Translation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.needsMap,
    this.element_needsMap
    });

  factory TerminologyCapabilities_Translation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_TranslationFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_TranslationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Closure {

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

  //  If cross-system closure is supported.
  bool translation;

  //  Extensions for translation
  Element element_translation;

TerminologyCapabilities_Closure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.translation,
    this.element_translation
    });

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ClosureToJson(this);
}

