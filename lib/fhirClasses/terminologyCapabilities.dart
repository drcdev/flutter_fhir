import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

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
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

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
  List<dynamic> contained;

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
  Element elementUrl;

  //  The identifier that is used to identify this version of the
  // terminology capabilities when it is referenced in a specification,
  // model, design or instance. This is an arbitrary value managed by the
  // terminology capabilities author and is not expected to be globally
  // unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  // managed version is not available. There is also no expectation that
  // versions can be placed in a lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the terminology capabilities. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the terminology
  // capabilities.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The status of this terminology capabilities. Enables tracking the
  // life-cycle of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this terminology capabilities is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the terminology capabilities was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the terminology capabilities
  // changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the
  // terminology capabilities.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

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
  Element elementDescription;

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
  Element elementPurpose;

  //  A copyright statement relating to the terminology capabilities and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the terminology capabilities.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  The way that this statement is intended to be used, to describe an
  // actual running instance of software, a particular product (kind, not
  // instance of software) or a class of implementation (e.g. a desired
  // purchase).
  String kind;

  //  Extensions for kind
  Element elementKind;

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
  Element elementLockedDate;

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
  Element elementCodeSearch;

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
    this.kind,
    this.elementKind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.elementLockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.elementCodeSearch,
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
  Element elementName;

  //  The version identifier for the software covered by this statement.
  String version;

  //  Extensions for version
  Element elementVersion;

TerminologyCapabilities_Software(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.version,
    this.elementVersion
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
  Element elementDescription;

  //  An absolute base URL for the implementation.
  String url;

  //  Extensions for url
  Element elementUrl;

TerminologyCapabilities_Implementation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.url,
    this.elementUrl
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
  Element elementSubsumption;

TerminologyCapabilities_CodeSystem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    this.elementSubsumption
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
  Element elementCode;

  //  If this is the default version for this code system.
  bool isDefault;

  //  Extensions for isDefault
  Element elementIsDefault;

  //  If the compositional grammar defined by the code system is supported.
  bool compositional;

  //  Extensions for compositional
  Element elementCompositional;

  //  Language Displays supported.
  List<String> language;

  //  Extensions for language
  List<Element> elementLanguage;

  //  Filter Properties supported.
  List<TerminologyCapabilities_Filter> filter;

  //  Properties supported for $lookup.
  List<String> property;

  //  Extensions for property
  List<Element> elementProperty;

TerminologyCapabilities_Version(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.isDefault,
    this.elementIsDefault,
    this.compositional,
    this.elementCompositional,
    this.language,
    this.elementLanguage,
    this.filter,
    this.property,
    this.elementProperty
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
  Element elementCode;

  //  Operations supported for the property.
  List<String> op;

  //  Extensions for op
  List<Element> elementOp;

TerminologyCapabilities_Filter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.op,
    this.elementOp
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
  Element elementHierarchical;

  //  Whether the server supports paging on expansion.
  bool paging;

  //  Extensions for paging
  Element elementPaging;

  //  Allow request for incomplete expansions?
  bool incomplete;

  //  Extensions for incomplete
  Element elementIncomplete;

  //  Supported expansion parameter.
  List<TerminologyCapabilities_Parameter> parameter;

  //  Documentation about text searching works.
  String textFilter;

  //  Extensions for textFilter
  Element elementTextFilter;

TerminologyCapabilities_Expansion(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.hierarchical,
    this.elementHierarchical,
    this.paging,
    this.elementPaging,
    this.incomplete,
    this.elementIncomplete,
    this.parameter,
    this.textFilter,
    this.elementTextFilter
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
  Element elementName;

  //  Description of support for parameter.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

TerminologyCapabilities_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.documentation,
    this.elementDocumentation
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
  Element elementTranslations;

TerminologyCapabilities_ValidateCode(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.translations,
    this.elementTranslations
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
  Element elementNeedsMap;

TerminologyCapabilities_Translation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.needsMap,
    this.elementNeedsMap
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
  Element elementTranslation;

TerminologyCapabilities_Closure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.translation,
    this.elementTranslation
    });

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ClosureToJson(this);
}
