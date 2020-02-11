import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 68)
class CapabilityStatement {

  //  This is a CapabilityStatement resource
  @HiveField(0)
  final String resourceType= 'CapabilityStatement';

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

  //  An absolute URI that is used to identify this capability statement
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this capability statement is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the capability statement is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the capability
  // statement when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the capability
  // statement author and is not expected to be globally unique. For
  // example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  // is not available. There is also no expectation that versions can be
  // placed in a lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the capability statement. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  A short, descriptive, user-friendly title for the capability
  // statement.
  @HiveField(17)
  String title;

  //  Extensions for title
  @HiveField(18)
  Element elementTitle;

  //  The status of this capability statement. Enables tracking the
  // life-cycle of the content.
  @HiveField(19)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(20)
  Element elementStatus;

  //  A Boolean value to indicate that this capability statement is authored
  // for testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(21)
  bool experimental;

  //  Extensions for experimental
  @HiveField(22)
  Element elementExperimental;

  //  The date  (and optionally time) when the capability statement was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the capability statement
  // changes.
  @HiveField(23)
  DateTime date;

  //  Extensions for date
  @HiveField(24)
  Element elementDate;

  //  The name of the organization or individual that published the
  // capability statement.
  @HiveField(25)
  String publisher;

  //  Extensions for publisher
  @HiveField(26)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(27)
  List<ContactDetail> contact;

  //  A free text natural language description of the capability statement
  // from a consumer's perspective. Typically, this is used when the
  // capability statement describes a desired rather than an actual
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
  // searching for appropriate capability statement instances.
  @HiveField(30)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the capability statement is
  // intended to be used.
  @HiveField(31)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this capability statement is needed and why it has
  // been designed as it has.
  @HiveField(32)
  String purpose;

  //  Extensions for purpose
  @HiveField(33)
  Element elementPurpose;

  //  A copyright statement relating to the capability statement and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the capability statement.
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
  String kind; // <code> enum: instance/capability/requirements;

  //  Extensions for kind
  @HiveField(37)
  Element elementKind;

  //  Reference to a canonical URL of another CapabilityStatement that this
  // software implements. This capability statement is a published API
  // description that corresponds to a business service. The server may
  // actually implement a subset of the capability statement it claims to
  // implement, so the capability statement must specify the full capability
  // details.
  @HiveField(38)
  List<String> instantiates;

  //  Reference to a canonical URL of another CapabilityStatement that this
  // software adds to. The capability statement automatically includes
  // everything in the other statement, and it is not duplicated, though the
  // server may repeat the same resources, interactions and operations to
  // add additional details to them.
  @HiveField(39)
  List<String> imports;

  //  Software that is covered by this capability statement.  It is used
  // when the capability statement describes the capabilities of a
  // particular software version, independent of an installation.
  @HiveField(40)
  CapabilityStatement_Software software;

  //  Identifies a specific implementation instance that is described by the
  // capability statement - i.e. a particular installation, rather than the
  // capabilities of a software program.
  @HiveField(41)
  CapabilityStatement_Implementation implementation;

  //  The version of the FHIR specification that this CapabilityStatement
  // describes (which SHALL be the same as the FHIR version of the
  // CapabilityStatement itself). There is no default value.
  @HiveField(42)
  String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;

  //  Extensions for fhirVersion
  @HiveField(43)
  Element elementFhirVersion;

  //  A list of the formats supported by this implementation using their
  // content types.
  @HiveField(44)
  List<String> format;

  //  Extensions for format
  @HiveField(45)
  List<Element> elementFormat;

  //  A list of the patch formats supported by this implementation using
  // their content types.
  @HiveField(46)
  List<String> patchFormat;

  //  Extensions for patchFormat
  @HiveField(47)
  List<Element> elementPatchFormat;

  //  A list of implementation guides that the server does (or should)
  // support in their entirety.
  @HiveField(48)
  List<String> implementationGuide;

  //  A definition of the restful capabilities of the solution, if any.
  @HiveField(49)
  List<CapabilityStatement_Rest> rest;

  //  A description of the messaging capabilities of the solution.
  @HiveField(50)
  List<CapabilityStatement_Messaging> messaging;

  //  A document definition.
  @HiveField(51)
  List<CapabilityStatement_Document> document;

CapabilityStatement(
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
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    this.fhirVersion,
    this.elementFhirVersion,
    this.format,
    this.elementFormat,
    this.patchFormat,
    this.elementPatchFormat,
    this.implementationGuide,
    this.rest,
    this.messaging,
    this.document
    });

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) => _$CapabilityStatementFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Software {

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

  //  Date this version of the software was released.
  DateTime releaseDate;

  //  Extensions for releaseDate
  Element elementReleaseDate;

CapabilityStatement_Software(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.version,
    this.elementVersion,
    this.releaseDate,
    this.elementReleaseDate
    });

  factory CapabilityStatement_Software.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SoftwareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Implementation {

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

  //  Information about the specific installation that this capability
  // statement relates to.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  An absolute base URL for the implementation.  This forms the base for
  // REST interfaces as well as the mailbox and document interfaces.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  The organization responsible for the management of the instance and
  // oversight of the data on the server at the specified URL.
  Reference custodian;

CapabilityStatement_Implementation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.url,
    this.elementUrl,
    this.custodian
    });

  factory CapabilityStatement_Implementation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ImplementationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ImplementationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Rest {

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

  //  Identifies whether this portion of the statement is describing the
  // ability to initiate or receive restful operations.
  String mode; // <code> enum: client/server;

  //  Extensions for mode
  Element elementMode;

  //  Information about the system's restful capabilities that apply across
  // all applications, such as security.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

  //  Information about security implementation from an interface
  // perspective - what a client needs to know.
  CapabilityStatement_Security security;

  //  A specification of the restful capabilities of the solution for a
  // specific resource type.
  List<CapabilityStatement_Resource> resource;

  //  A specification of restful operations supported by the system.
  List<CapabilityStatement_Interaction1> interaction;

  //  Search parameters that are supported for searching all resources for
  // implementations to support and/or make use of - either references to
  // ones defined in the specification, or additional ones defined for/by
  // the implementation.
  List<CapabilityStatement_SearchParam> searchParam;

  //  Definition of an operation or a named query together with its
  // parameters and their meaning and type.
  List<CapabilityStatement_Operation> operation;

  //  An absolute URI which is a reference to the definition of a
  // compartment that the system supports. The reference is to a
  // CompartmentDefinition resource by its canonical URL .
  List<String> compartment;

CapabilityStatement_Rest(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment
    });

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_RestFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_RestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Security {

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

  //  Server adds CORS headers when responding to requests - this enables
  // Javascript applications to use the server.
  bool cors;

  //  Extensions for cors
  Element elementCors;

  //  Types of security services that are supported/required by the system.
  List<CodeableConcept> service;

  //  General description of how security works.
  String description;

  //  Extensions for description
  Element elementDescription;

CapabilityStatement_Security(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.cors,
    this.elementCors,
    this.service,
    this.description,
    this.elementDescription
    });

  factory CapabilityStatement_Security.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SecurityFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SecurityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Resource {

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

  //  A type of resource exposed via the restful interface.
  String type;

  //  Extensions for type
  Element elementType;

  //  A specification of the profile that describes the solution's overall
  // support for the resource, including any constraints on cardinality,
  // bindings, lengths or other limitations. See further discussion in
  // [Using Profiles](profiling.html#profile-uses).
  String profile;

  //  A list of profiles that represent different use cases supported by the
  // system. For a server, "supported by the system" means the system
  // hosts/produces a set of resources that are conformant to a particular
  // profile, and allows clients that use its services to search using this
  // profile and to find appropriate data. For a client, it means the system
  // will search by this profile and process data according to the guidance
  // implicit in the profile. See further discussion in [Using
  // Profiles](profiling.html#profile-uses).
  List<String> supportedProfile;

  //  Additional information about the resource type used by the system.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

  //  Identifies a restful operation supported by the solution.
  List<CapabilityStatement_Interaction> interaction;

  //  This field is set to no-version to specify that the system does not
  // support (server) or use (client) versioning for this resource type. If
  // this has some other value, the server must at least correctly track and
  // populate the versionId meta-property on resources. If the value is
  // 'versioned-update', then the server supports all the versioning
  // features, including using e-tags for version integrity in the API.
  String versioning; // <code> enum: no-version/versioned/versioned-update;

  //  Extensions for versioning
  Element elementVersioning;

  //  A flag for whether the server is able to return past versions as part
  // of the vRead operation.
  bool readHistory;

  //  Extensions for readHistory
  Element elementReadHistory;

  //  A flag to indicate that the server allows or needs to allow the client
  // to create new identities on the server (that is, the client PUTs to a
  // location where there is no existing resource). Allowing this operation
  // means that the server allows the client to create new identities on the
  // server.
  bool updateCreate;

  //  Extensions for updateCreate
  Element elementUpdateCreate;

  //  A flag that indicates that the server supports conditional create.
  bool conditionalCreate;

  //  Extensions for conditionalCreate
  Element elementConditionalCreate;

  //  A code that indicates how the server supports conditional read.
  String conditionalRead; // <code> enum: not-supported/modified-since/not-match/full-support;

  //  Extensions for conditionalRead
  Element elementConditionalRead;

  //  A flag that indicates that the server supports conditional update.
  bool conditionalUpdate;

  //  Extensions for conditionalUpdate
  Element elementConditionalUpdate;

  //  A code that indicates how the server supports conditional delete.
  String conditionalDelete; // <code> enum: not-supported/single/multiple;

  //  Extensions for conditionalDelete
  Element elementConditionalDelete;

  //  A set of flags that defines how references are supported.
  List<String> referencePolicy; // <code> enum: literal/logical/resolves/enforced/local> referencePolicy;

  //  Extensions for referencePolicy
  List<Element> elementReferencePolicy;

  //  A list of _include values supported by the server.
  List<String> searchInclude;

  //  Extensions for searchInclude
  List<Element> elementSearchInclude;

  //  A list of _revinclude (reverse include) values supported by the
  // server.
  List<String> searchRevInclude;

  //  Extensions for searchRevInclude
  List<Element> elementSearchRevInclude;

  //  Search parameters for implementations to support and/or make use of -
  // either references to ones defined in the specification, or additional
  // ones defined for/by the implementation.
  List<CapabilityStatement_SearchParam> searchParam;

  //  Definition of an operation or a named query together with its
  // parameters and their meaning and type. Consult the definition of the
  // operation for details about how to invoke the operation, and the
  // parameters.
  List<CapabilityStatement_Operation> operation;

CapabilityStatement_Resource(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.profile,
    this.supportedProfile,
    this.documentation,
    this.elementDocumentation,
    this.interaction,
    this.versioning,
    this.elementVersioning,
    this.readHistory,
    this.elementReadHistory,
    this.updateCreate,
    this.elementUpdateCreate,
    this.conditionalCreate,
    this.elementConditionalCreate,
    this.conditionalRead,
    this.elementConditionalRead,
    this.conditionalUpdate,
    this.elementConditionalUpdate,
    this.conditionalDelete,
    this.elementConditionalDelete,
    this.referencePolicy,
    this.elementReferencePolicy,
    this.searchInclude,
    this.elementSearchInclude,
    this.searchRevInclude,
    this.elementSearchRevInclude,
    this.searchParam,
    this.operation
    });

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction {

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

  //  Coded identifier of the operation, supported by the system resource.
  String code; // <code> enum: read/vread/update/patch/delete/history-instance/history-type/create/search-type;

  //  Extensions for code
  Element elementCode;

  //  Guidance specific to the implementation of this operation, such as
  // 'delete is a logical delete' or 'updates are only allowed with version
  // id' or 'creates permitted from pre-authorized certificates only'.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

CapabilityStatement_Interaction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.documentation,
    this.elementDocumentation
    });

  factory CapabilityStatement_Interaction.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_InteractionFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_InteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SearchParam {

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

  //  The name of the search parameter used in the interface.
  String name;

  //  Extensions for name
  Element elementName;

  //  An absolute URI that is a formal reference to where this parameter was
  // first defined, so that a client can be confident of the meaning of the
  // search parameter (a reference to [[[SearchParameter.url]]]). This
  // element SHALL be populated if the search parameter refers to a
  // SearchParameter defined by the FHIR core specification or externally
  // defined IGs.
  String definition;

  //  The type of value a search parameter refers to, and how the content is
  // interpreted.
  String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;

  //  Extensions for type
  Element elementType;

  //  This allows documentation of any distinct behaviors about how the
  // search parameter is used.  For example, text matching algorithms.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

CapabilityStatement_SearchParam(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.definition,
    this.type,
    this.elementType,
    this.documentation,
    this.elementDocumentation
    });

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SearchParamFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SearchParamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Operation {

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

  //  The name of the operation or query. For an operation, this is the name
  //  prefixed with $ and used in the URL. For a query, this is the name
  // used in the _query parameter when the query is called.
  String name;

  //  Extensions for name
  Element elementName;

  //  Where the formal definition can be found. If a server references the
  // base definition of an Operation (i.e. from the specification itself
  // such as ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```),
  // that means it supports the full capabilities of the operation - e.g.
  // both GET and POST invocation.  If it only supports a subset, it must
  // define its own custom [[[OperationDefinition]]] with a 'base' of the
  // original OperationDefinition.  The custom definition would describe the
  // specific subset of functionality supported.
  String definition;

  //  Documentation that describes anything special about the operation
  // behavior, possibly detailing different behavior for system, type and
  // instance-level invocation of the operation.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

CapabilityStatement_Operation(
  this.definition,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.documentation,
    this.elementDocumentation
    });

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction1 {

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

  //  A coded identifier of the operation, supported by the system.
  String code; // <code> enum: transaction/batch/search-system/history-system;

  //  Extensions for code
  Element elementCode;

  //  Guidance specific to the implementation of this operation, such as
  // limitations on the kind of transactions allowed, or information about
  // system wide search is implemented.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

CapabilityStatement_Interaction1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.documentation,
    this.elementDocumentation
    });

  factory CapabilityStatement_Interaction1.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_Interaction1FromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_Interaction1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Messaging {

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

  //  An endpoint (network accessible address) to which messages and/or
  // replies are to be sent.
  List<CapabilityStatement_Endpoint> endpoint;

  //  Length if the receiver's reliable messaging cache in minutes (if a
  // receiver) or how long the cache length on the receiver should be (if a
  // sender).
  int reliableCache;

  //  Extensions for reliableCache
  Element elementReliableCache;

  //  Documentation about the system's messaging capabilities for this
  // endpoint not otherwise documented by the capability statement.  For
  // example, the process for becoming an authorized messaging exchange
  // partner.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

  //  References to message definitions for messages this system can send or
  // receive.
  List<CapabilityStatement_SupportedMessage> supportedMessage;

CapabilityStatement_Messaging(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.elementReliableCache,
    this.documentation,
    this.elementDocumentation,
    this.supportedMessage
    });

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_MessagingFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_MessagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Endpoint {

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

  //  A list of the messaging transport protocol(s) identifiers, supported
  // by this endpoint.
  Coding protocol;

  //  The network address of the endpoint. For solutions that do not use
  // network addresses for routing, it can be just an identifier.
  String address;

  //  Extensions for address
  Element elementAddress;

CapabilityStatement_Endpoint(
  this.protocol,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.address,
    this.elementAddress
    });

  factory CapabilityStatement_Endpoint.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_EndpointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SupportedMessage {

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

  //  The mode of this event declaration - whether application is sender or
  // receiver.
  String mode; // <code> enum: sender/receiver;

  //  Extensions for mode
  Element elementMode;

  //  Points to a message definition that identifies the messaging event,
  // message structure, allowed responses, etc.
  String definition;

CapabilityStatement_SupportedMessage(
  this.definition,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode
    });

  factory CapabilityStatement_SupportedMessage.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SupportedMessageFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SupportedMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Document {

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

  //  Mode of this document declaration - whether an application is a
  // producer or consumer.
  String mode; // <code> enum: producer/consumer;

  //  Extensions for mode
  Element elementMode;

  //  A description of how the application supports or uses the specified
  // document profile.  For example, when documents are created, what action
  // is taken with consumed documents, etc.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

  //  A profile on the document Bundle that constrains which resources are
  // present, and their contents.
  String profile;

CapabilityStatement_Document(
  this.profile,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation
    });

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_DocumentFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_DocumentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CapabilityStatementAdapter extends TypeAdapter<CapabilityStatement> {
  @override
  final typeId = 68;

  @override
  CapabilityStatement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CapabilityStatement(
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
      instantiates: (fields[38] as List)?.cast<String>(),
      imports: (fields[39] as List)?.cast<String>(),
      software: fields[40] as CapabilityStatement_Software,
      implementation: fields[41] as CapabilityStatement_Implementation,
      fhirVersion: fields[42] as String,
      elementFhirVersion: fields[43] as Element,
      format: (fields[44] as List)?.cast<String>(),
      elementFormat: (fields[45] as List)?.cast<Element>(),
      patchFormat: (fields[46] as List)?.cast<String>(),
      elementPatchFormat: (fields[47] as List)?.cast<Element>(),
      implementationGuide: (fields[48] as List)?.cast<String>(),
      rest: (fields[49] as List)?.cast<CapabilityStatement_Rest>(),
      messaging: (fields[50] as List)?.cast<CapabilityStatement_Messaging>(),
      document: (fields[51] as List)?.cast<CapabilityStatement_Document>(),
    );
  }

  @override
  void write(BinaryWriter writer, CapabilityStatement obj) {
    writer
      ..writeByte(52)
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
      ..write(obj.instantiates)
      ..writeByte(39)
      ..write(obj.imports)
      ..writeByte(40)
      ..write(obj.software)
      ..writeByte(41)
      ..write(obj.implementation)
      ..writeByte(42)
      ..write(obj.fhirVersion)
      ..writeByte(43)
      ..write(obj.elementFhirVersion)
      ..writeByte(44)
      ..write(obj.format)
      ..writeByte(45)
      ..write(obj.elementFormat)
      ..writeByte(46)
      ..write(obj.patchFormat)
      ..writeByte(47)
      ..write(obj.elementPatchFormat)
      ..writeByte(48)
      ..write(obj.implementationGuide)
      ..writeByte(49)
      ..write(obj.rest)
      ..writeByte(50)
      ..write(obj.messaging)
      ..writeByte(51)
      ..write(obj.document);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapabilityStatement _$CapabilityStatementFromJson(Map<String, dynamic> json) {
  return CapabilityStatement(
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
    instantiates:
        (json['instantiates'] as List)?.map((e) => e as String)?.toList(),
    imports: (json['imports'] as List)?.map((e) => e as String)?.toList(),
    software: json['software'] == null
        ? null
        : CapabilityStatement_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : CapabilityStatement_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    fhirVersion: json['fhirVersion'] as String,
    elementFhirVersion: json['elementFhirVersion'] == null
        ? null
        : Element.fromJson(json['elementFhirVersion'] as Map<String, dynamic>),
    format: (json['format'] as List)?.map((e) => e as String)?.toList(),
    elementFormat: (json['elementFormat'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patchFormat:
        (json['patchFormat'] as List)?.map((e) => e as String)?.toList(),
    elementPatchFormat: (json['elementPatchFormat'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    implementationGuide: (json['implementationGuide'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    rest: (json['rest'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Rest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    messaging: (json['messaging'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Messaging.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    document: (json['document'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Document.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatementToJson(
        CapabilityStatement instance) =>
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
      'instantiates': instance.instantiates,
      'imports': instance.imports,
      'software': instance.software?.toJson(),
      'implementation': instance.implementation?.toJson(),
      'fhirVersion': instance.fhirVersion,
      'elementFhirVersion': instance.elementFhirVersion?.toJson(),
      'format': instance.format,
      'elementFormat':
          instance.elementFormat?.map((e) => e?.toJson())?.toList(),
      'patchFormat': instance.patchFormat,
      'elementPatchFormat':
          instance.elementPatchFormat?.map((e) => e?.toJson())?.toList(),
      'implementationGuide': instance.implementationGuide,
      'rest': instance.rest?.map((e) => e?.toJson())?.toList(),
      'messaging': instance.messaging?.map((e) => e?.toJson())?.toList(),
      'document': instance.document?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Software _$CapabilityStatement_SoftwareFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Software(
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
    releaseDate: json['releaseDate'] == null
        ? null
        : DateTime.parse(json['releaseDate'] as String),
    elementReleaseDate: json['elementReleaseDate'] == null
        ? null
        : Element.fromJson(json['elementReleaseDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SoftwareToJson(
        CapabilityStatement_Software instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'elementReleaseDate': instance.elementReleaseDate?.toJson(),
    };

CapabilityStatement_Implementation _$CapabilityStatement_ImplementationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Implementation(
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
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_ImplementationToJson(
        CapabilityStatement_Implementation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'custodian': instance.custodian?.toJson(),
    };

CapabilityStatement_Rest _$CapabilityStatement_RestFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Rest(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    security: json['security'] == null
        ? null
        : CapabilityStatement_Security.fromJson(
            json['security'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction1.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    searchParam: (json['searchParam'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SearchParam.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    operation: (json['operation'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Operation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    compartment:
        (json['compartment'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_RestToJson(
        CapabilityStatement_Rest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'security': instance.security?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
      'interaction': instance.interaction?.map((e) => e?.toJson())?.toList(),
      'searchParam': instance.searchParam?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.map((e) => e?.toJson())?.toList(),
      'compartment': instance.compartment,
    };

CapabilityStatement_Security _$CapabilityStatement_SecurityFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Security(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cors: json['cors'] as bool,
    elementCors: json['elementCors'] == null
        ? null
        : Element.fromJson(json['elementCors'] as Map<String, dynamic>),
    service: (json['service'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SecurityToJson(
        CapabilityStatement_Security instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'cors': instance.cors,
      'elementCors': instance.elementCors?.toJson(),
      'service': instance.service?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };

CapabilityStatement_Resource _$CapabilityStatement_ResourceFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Resource(
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
    profile: json['profile'] as String,
    supportedProfile:
        (json['supportedProfile'] as List)?.map((e) => e as String)?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    elementVersioning: json['elementVersioning'] == null
        ? null
        : Element.fromJson(json['elementVersioning'] as Map<String, dynamic>),
    readHistory: json['readHistory'] as bool,
    elementReadHistory: json['elementReadHistory'] == null
        ? null
        : Element.fromJson(json['elementReadHistory'] as Map<String, dynamic>),
    updateCreate: json['updateCreate'] as bool,
    elementUpdateCreate: json['elementUpdateCreate'] == null
        ? null
        : Element.fromJson(json['elementUpdateCreate'] as Map<String, dynamic>),
    conditionalCreate: json['conditionalCreate'] as bool,
    elementConditionalCreate: json['elementConditionalCreate'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalCreate'] as Map<String, dynamic>),
    conditionalRead: json['conditionalRead'] as String,
    elementConditionalRead: json['elementConditionalRead'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalRead'] as Map<String, dynamic>),
    conditionalUpdate: json['conditionalUpdate'] as bool,
    elementConditionalUpdate: json['elementConditionalUpdate'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalUpdate'] as Map<String, dynamic>),
    conditionalDelete: json['conditionalDelete'] as String,
    elementConditionalDelete: json['elementConditionalDelete'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalDelete'] as Map<String, dynamic>),
    referencePolicy:
        (json['referencePolicy'] as List)?.map((e) => e as String)?.toList(),
    elementReferencePolicy: (json['elementReferencePolicy'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchInclude:
        (json['searchInclude'] as List)?.map((e) => e as String)?.toList(),
    elementSearchInclude: (json['elementSearchInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchRevInclude:
        (json['searchRevInclude'] as List)?.map((e) => e as String)?.toList(),
    elementSearchRevInclude: (json['elementSearchRevInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchParam: (json['searchParam'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SearchParam.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    operation: (json['operation'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Operation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_ResourceToJson(
        CapabilityStatement_Resource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'profile': instance.profile,
      'supportedProfile': instance.supportedProfile,
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'interaction': instance.interaction?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'elementVersioning': instance.elementVersioning?.toJson(),
      'readHistory': instance.readHistory,
      'elementReadHistory': instance.elementReadHistory?.toJson(),
      'updateCreate': instance.updateCreate,
      'elementUpdateCreate': instance.elementUpdateCreate?.toJson(),
      'conditionalCreate': instance.conditionalCreate,
      'elementConditionalCreate': instance.elementConditionalCreate?.toJson(),
      'conditionalRead': instance.conditionalRead,
      'elementConditionalRead': instance.elementConditionalRead?.toJson(),
      'conditionalUpdate': instance.conditionalUpdate,
      'elementConditionalUpdate': instance.elementConditionalUpdate?.toJson(),
      'conditionalDelete': instance.conditionalDelete,
      'elementConditionalDelete': instance.elementConditionalDelete?.toJson(),
      'referencePolicy': instance.referencePolicy,
      'elementReferencePolicy':
          instance.elementReferencePolicy?.map((e) => e?.toJson())?.toList(),
      'searchInclude': instance.searchInclude,
      'elementSearchInclude':
          instance.elementSearchInclude?.map((e) => e?.toJson())?.toList(),
      'searchRevInclude': instance.searchRevInclude,
      'elementSearchRevInclude':
          instance.elementSearchRevInclude?.map((e) => e?.toJson())?.toList(),
      'searchParam': instance.searchParam?.map((e) => e?.toJson())?.toList(),
      'operation': instance.operation?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Interaction _$CapabilityStatement_InteractionFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Interaction(
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
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_InteractionToJson(
        CapabilityStatement_Interaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

CapabilityStatement_SearchParam _$CapabilityStatement_SearchParamFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_SearchParam(
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
    definition: json['definition'] as String,
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SearchParamToJson(
        CapabilityStatement_SearchParam instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'definition': instance.definition,
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

CapabilityStatement_Operation _$CapabilityStatement_OperationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Operation(
    json['definition'] as String,
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

Map<String, dynamic> _$CapabilityStatement_OperationToJson(
        CapabilityStatement_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'definition': instance.definition,
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

CapabilityStatement_Interaction1 _$CapabilityStatement_Interaction1FromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Interaction1(
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
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_Interaction1ToJson(
        CapabilityStatement_Interaction1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

CapabilityStatement_Messaging _$CapabilityStatement_MessagingFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Messaging(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Endpoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reliableCache: json['reliableCache'] as int,
    elementReliableCache: json['elementReliableCache'] == null
        ? null
        : Element.fromJson(
            json['elementReliableCache'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    supportedMessage: (json['supportedMessage'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SupportedMessage.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_MessagingToJson(
        CapabilityStatement_Messaging instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'reliableCache': instance.reliableCache,
      'elementReliableCache': instance.elementReliableCache?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'supportedMessage':
          instance.supportedMessage?.map((e) => e?.toJson())?.toList(),
    };

CapabilityStatement_Endpoint _$CapabilityStatement_EndpointFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Endpoint(
    json['protocol'] == null
        ? null
        : Coding.fromJson(json['protocol'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] as String,
    elementAddress: json['elementAddress'] == null
        ? null
        : Element.fromJson(json['elementAddress'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_EndpointToJson(
        CapabilityStatement_Endpoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'protocol': instance.protocol?.toJson(),
      'address': instance.address,
      'elementAddress': instance.elementAddress?.toJson(),
    };

CapabilityStatement_SupportedMessage
    _$CapabilityStatement_SupportedMessageFromJson(Map<String, dynamic> json) {
  return CapabilityStatement_SupportedMessage(
    json['definition'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SupportedMessageToJson(
        CapabilityStatement_SupportedMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'definition': instance.definition,
    };

CapabilityStatement_Document _$CapabilityStatement_DocumentFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Document(
    json['profile'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_DocumentToJson(
        CapabilityStatement_Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'profile': instance.profile,
    };
