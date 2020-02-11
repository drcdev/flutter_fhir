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
@HiveType(typeId: 196)
class TerminologyCapabilities {

  //  This is a TerminologyCapabilities resource
  @HiveField(0)
  final String resourceType= 'TerminologyCapabilities';

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

  //  An absolute URI that is used to identify this terminology capabilities
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this terminology capabilities is (or will be) published.
  // This URL can be the target of a canonical reference. It SHALL remain
  // the same when the terminology capabilities is stored on different
  // servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the
  // terminology capabilities when it is referenced in a specification,
  // model, design or instance. This is an arbitrary value managed by the
  // terminology capabilities author and is not expected to be globally
  // unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  // managed version is not available. There is also no expectation that
  // versions can be placed in a lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the terminology capabilities. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  A short, descriptive, user-friendly title for the terminology
  // capabilities.
  @HiveField(17)
  String title;

  //  Extensions for title
  @HiveField(18)
  Element elementTitle;

  //  The status of this terminology capabilities. Enables tracking the
  // life-cycle of the content.
  @HiveField(19)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(20)
  Element elementStatus;

  //  A Boolean value to indicate that this terminology capabilities is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  @HiveField(21)
  bool experimental;

  //  Extensions for experimental
  @HiveField(22)
  Element elementExperimental;

  //  The date  (and optionally time) when the terminology capabilities was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the terminology capabilities
  // changes.
  @HiveField(23)
  DateTime date;

  //  Extensions for date
  @HiveField(24)
  Element elementDate;

  //  The name of the organization or individual that published the
  // terminology capabilities.
  @HiveField(25)
  String publisher;

  //  Extensions for publisher
  @HiveField(26)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(27)
  List<ContactDetail> contact;

  //  A free text natural language description of the terminology
  // capabilities from a consumer's perspective. Typically, this is used
  // when the capability statement describes a desired rather than an actual
  // solution, for example as a formal expression of requirements as part of
  // an RFP.
  @HiveField(28)
  String description;

  //  Extensions for description
  @HiveField(29)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate terminology capabilities instances.
  @HiveField(30)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the terminology capabilities is
  // intended to be used.
  @HiveField(31)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this terminology capabilities is needed and why it
  // has been designed as it has.
  @HiveField(32)
  String purpose;

  //  Extensions for purpose
  @HiveField(33)
  Element elementPurpose;

  //  A copyright statement relating to the terminology capabilities and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the terminology capabilities.
  @HiveField(34)
  String copyright;

  //  Extensions for copyright
  @HiveField(35)
  Element elementCopyright;

  //  The way that this statement is intended to be used, to describe an
  // actual running instance of software, a particular product (kind, not
  // instance of software) or a class of implementation (e.g. a desired
  // purchase).
  @HiveField(36)
  String kind;

  //  Extensions for kind
  @HiveField(37)
  Element elementKind;

  //  Software that is covered by this terminology capability statement.  It
  // is used when the statement describes the capabilities of a particular
  // software version, independent of an installation.
  @HiveField(38)
  TerminologyCapabilities_Software software;

  //  Identifies a specific implementation instance that is described by the
  // terminology capability statement - i.e. a particular installation,
  // rather than the capabilities of a software program.
  @HiveField(39)
  TerminologyCapabilities_Implementation implementation;

  //  Whether the server supports lockedDate.
  @HiveField(40)
  bool lockedDate;

  //  Extensions for lockedDate
  @HiveField(41)
  Element elementLockedDate;

  //  Identifies a code system that is supported by the server. If there is
  // a no code system URL, then this declares the general assumptions a
  // client can make about support for any CodeSystem resource.
  @HiveField(42)
  List<TerminologyCapabilities_CodeSystem> codeSystem;

  //  Information about the
  // [ValueSet/$expand](valueset-operation-expand.html) operation.
  @HiveField(43)
  TerminologyCapabilities_Expansion expansion;

  //  The degree to which the server supports the code search parameter on
  // ValueSet, if it is supported.
  @HiveField(44)
  String codeSearch; // <code> enum: explicit/all;

  //  Extensions for codeSearch
  @HiveField(45)
  Element elementCodeSearch;

  //  Information about the
  // [ValueSet/$validate-code](valueset-operation-validate-code.html)
  // operation.
  @HiveField(46)
  TerminologyCapabilities_ValidateCode validateCode;

  //  Information about the
  // [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  @HiveField(47)
  TerminologyCapabilities_Translation translation;

  //  Whether the $closure operation is supported.
  @HiveField(48)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TerminologyCapabilitiesAdapter
    extends TypeAdapter<TerminologyCapabilities> {
  @override
  final typeId = 196;

  @override
  TerminologyCapabilities read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TerminologyCapabilities(
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
      experimental: fields[21] as bool,
      elementExperimental: fields[22] as Element,
      date: fields[23] as DateTime,
      elementDate: fields[24] as Element,
      publisher: fields[25] as String,
      elementPublisher: fields[26] as Element,
      contact: (fields[27] as List)?.cast<ContactDetail>(),
      description: fields[28] as String,
      elementDescription: fields[29] as Element,
      useContext: (fields[30] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[31] as List)?.cast<CodeableConcept>(),
      purpose: fields[32] as String,
      elementPurpose: fields[33] as Element,
      copyright: fields[34] as String,
      elementCopyright: fields[35] as Element,
      kind: fields[36] as String,
      elementKind: fields[37] as Element,
      software: fields[38] as TerminologyCapabilities_Software,
      implementation: fields[39] as TerminologyCapabilities_Implementation,
      lockedDate: fields[40] as bool,
      elementLockedDate: fields[41] as Element,
      codeSystem:
          (fields[42] as List)?.cast<TerminologyCapabilities_CodeSystem>(),
      expansion: fields[43] as TerminologyCapabilities_Expansion,
      codeSearch: fields[44] as String,
      elementCodeSearch: fields[45] as Element,
      validateCode: fields[46] as TerminologyCapabilities_ValidateCode,
      translation: fields[47] as TerminologyCapabilities_Translation,
      closure: fields[48] as TerminologyCapabilities_Closure,
    );
  }

  @override
  void write(BinaryWriter writer, TerminologyCapabilities obj) {
    writer
      ..writeByte(49)
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
      ..write(obj.experimental)
      ..writeByte(22)
      ..write(obj.elementExperimental)
      ..writeByte(23)
      ..write(obj.date)
      ..writeByte(24)
      ..write(obj.elementDate)
      ..writeByte(25)
      ..write(obj.publisher)
      ..writeByte(26)
      ..write(obj.elementPublisher)
      ..writeByte(27)
      ..write(obj.contact)
      ..writeByte(28)
      ..write(obj.description)
      ..writeByte(29)
      ..write(obj.elementDescription)
      ..writeByte(30)
      ..write(obj.useContext)
      ..writeByte(31)
      ..write(obj.jurisdiction)
      ..writeByte(32)
      ..write(obj.purpose)
      ..writeByte(33)
      ..write(obj.elementPurpose)
      ..writeByte(34)
      ..write(obj.copyright)
      ..writeByte(35)
      ..write(obj.elementCopyright)
      ..writeByte(36)
      ..write(obj.kind)
      ..writeByte(37)
      ..write(obj.elementKind)
      ..writeByte(38)
      ..write(obj.software)
      ..writeByte(39)
      ..write(obj.implementation)
      ..writeByte(40)
      ..write(obj.lockedDate)
      ..writeByte(41)
      ..write(obj.elementLockedDate)
      ..writeByte(42)
      ..write(obj.codeSystem)
      ..writeByte(43)
      ..write(obj.expansion)
      ..writeByte(44)
      ..write(obj.codeSearch)
      ..writeByte(45)
      ..write(obj.elementCodeSearch)
      ..writeByte(46)
      ..write(obj.validateCode)
      ..writeByte(47)
      ..write(obj.translation)
      ..writeByte(48)
      ..write(obj.closure);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminologyCapabilities _$TerminologyCapabilitiesFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities(
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
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    software: json['software'] == null
        ? null
        : TerminologyCapabilities_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : TerminologyCapabilities_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    lockedDate: json['lockedDate'] as bool,
    elementLockedDate: json['elementLockedDate'] == null
        ? null
        : Element.fromJson(json['elementLockedDate'] as Map<String, dynamic>),
    codeSystem: (json['codeSystem'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_CodeSystem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    expansion: json['expansion'] == null
        ? null
        : TerminologyCapabilities_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
    codeSearch: json['codeSearch'] as String,
    elementCodeSearch: json['elementCodeSearch'] == null
        ? null
        : Element.fromJson(json['elementCodeSearch'] as Map<String, dynamic>),
    validateCode: json['validateCode'] == null
        ? null
        : TerminologyCapabilities_ValidateCode.fromJson(
            json['validateCode'] as Map<String, dynamic>),
    translation: json['translation'] == null
        ? null
        : TerminologyCapabilities_Translation.fromJson(
            json['translation'] as Map<String, dynamic>),
    closure: json['closure'] == null
        ? null
        : TerminologyCapabilities_Closure.fromJson(
            json['closure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilitiesToJson(
        TerminologyCapabilities instance) =>
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
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'lockedDate': instance.lockedDate,
      'elementLockedDate': instance.elementLockedDate?.toJson(),
      'codeSystem': instance.codeSystem?.map((e) => e?.toJson())?.toList(),
      'expansion': instance.expansion?.toJson(),
      'codeSearch': instance.codeSearch,
      'elementCodeSearch': instance.elementCodeSearch?.toJson(),
      'validateCode': instance.validateCode?.toJson(),
      'translation': instance.translation?.toJson(),
      'closure': instance.closure?.toJson(),
    };

TerminologyCapabilities_Software _$TerminologyCapabilities_SoftwareFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Software(
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
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_SoftwareToJson(
        TerminologyCapabilities_Software instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
    };

TerminologyCapabilities_Implementation
    _$TerminologyCapabilities_ImplementationFromJson(
        Map<String, dynamic> json) {
  return TerminologyCapabilities_Implementation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ImplementationToJson(
        TerminologyCapabilities_Implementation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
    };

TerminologyCapabilities_CodeSystem _$TerminologyCapabilities_CodeSystemFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_CodeSystem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uri: json['uri'] as String,
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Version.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subsumption: json['subsumption'] as bool,
    elementSubsumption: json['elementSubsumption'] == null
        ? null
        : Element.fromJson(json['elementSubsumption'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_CodeSystemToJson(
        TerminologyCapabilities_CodeSystem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uri': instance.uri,
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'subsumption': instance.subsumption,
      'elementSubsumption': instance.elementSubsumption?.toJson(),
    };

TerminologyCapabilities_Version _$TerminologyCapabilities_VersionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Version(
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
    isDefault: json['isDefault'] as bool,
    elementIsDefault: json['elementIsDefault'] == null
        ? null
        : Element.fromJson(json['elementIsDefault'] as Map<String, dynamic>),
    compositional: json['compositional'] as bool,
    elementCompositional: json['elementCompositional'] == null
        ? null
        : Element.fromJson(
            json['elementCompositional'] as Map<String, dynamic>),
    language: (json['language'] as List)?.map((e) => e as String)?.toList(),
    elementLanguage: (json['elementLanguage'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Filter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)?.map((e) => e as String)?.toList(),
    elementProperty: (json['elementProperty'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_VersionToJson(
        TerminologyCapabilities_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'isDefault': instance.isDefault,
      'elementIsDefault': instance.elementIsDefault?.toJson(),
      'compositional': instance.compositional,
      'elementCompositional': instance.elementCompositional?.toJson(),
      'language': instance.language,
      'elementLanguage':
          instance.elementLanguage?.map((e) => e?.toJson())?.toList(),
      'filter': instance.filter?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'elementProperty':
          instance.elementProperty?.map((e) => e?.toJson())?.toList(),
    };

TerminologyCapabilities_Filter _$TerminologyCapabilities_FilterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Filter(
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
    op: (json['op'] as List)?.map((e) => e as String)?.toList(),
    elementOp: (json['elementOp'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_FilterToJson(
        TerminologyCapabilities_Filter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'op': instance.op,
      'elementOp': instance.elementOp?.map((e) => e?.toJson())?.toList(),
    };

TerminologyCapabilities_Expansion _$TerminologyCapabilities_ExpansionFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hierarchical: json['hierarchical'] as bool,
    elementHierarchical: json['elementHierarchical'] == null
        ? null
        : Element.fromJson(json['elementHierarchical'] as Map<String, dynamic>),
    paging: json['paging'] as bool,
    elementPaging: json['elementPaging'] == null
        ? null
        : Element.fromJson(json['elementPaging'] as Map<String, dynamic>),
    incomplete: json['incomplete'] as bool,
    elementIncomplete: json['elementIncomplete'] == null
        ? null
        : Element.fromJson(json['elementIncomplete'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : TerminologyCapabilities_Parameter.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    textFilter: json['textFilter'] as String,
    elementTextFilter: json['elementTextFilter'] == null
        ? null
        : Element.fromJson(json['elementTextFilter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ExpansionToJson(
        TerminologyCapabilities_Expansion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'hierarchical': instance.hierarchical,
      'elementHierarchical': instance.elementHierarchical?.toJson(),
      'paging': instance.paging,
      'elementPaging': instance.elementPaging?.toJson(),
      'incomplete': instance.incomplete,
      'elementIncomplete': instance.elementIncomplete?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'textFilter': instance.textFilter,
      'elementTextFilter': instance.elementTextFilter?.toJson(),
    };

TerminologyCapabilities_Parameter _$TerminologyCapabilities_ParameterFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Parameter(
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
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ParameterToJson(
        TerminologyCapabilities_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

TerminologyCapabilities_ValidateCode
    _$TerminologyCapabilities_ValidateCodeFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_ValidateCode(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translations: json['translations'] as bool,
    elementTranslations: json['elementTranslations'] == null
        ? null
        : Element.fromJson(json['elementTranslations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ValidateCodeToJson(
        TerminologyCapabilities_ValidateCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'translations': instance.translations,
      'elementTranslations': instance.elementTranslations?.toJson(),
    };

TerminologyCapabilities_Translation
    _$TerminologyCapabilities_TranslationFromJson(Map<String, dynamic> json) {
  return TerminologyCapabilities_Translation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    needsMap: json['needsMap'] as bool,
    elementNeedsMap: json['elementNeedsMap'] == null
        ? null
        : Element.fromJson(json['elementNeedsMap'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_TranslationToJson(
        TerminologyCapabilities_Translation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'needsMap': instance.needsMap,
      'elementNeedsMap': instance.elementNeedsMap?.toJson(),
    };

TerminologyCapabilities_Closure _$TerminologyCapabilities_ClosureFromJson(
    Map<String, dynamic> json) {
  return TerminologyCapabilities_Closure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translation: json['translation'] as bool,
    elementTranslation: json['elementTranslation'] == null
        ? null
        : Element.fromJson(json['elementTranslation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminologyCapabilities_ClosureToJson(
        TerminologyCapabilities_Closure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'translation': instance.translation,
      'elementTranslation': instance.elementTranslation?.toJson(),
    };
